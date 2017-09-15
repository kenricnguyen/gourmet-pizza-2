using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using GourmetPizza.Models;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Globalization;
using System.Drawing;

namespace GourmetPizza.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {

                //Insert customer data starting here ...
                if (Page.IsValid)
                {
                    // read the entire connection string from Web.config
                    string connectionString = WebConfigurationManager.ConnectionStrings["PizzaOrdersConnection"].ConnectionString;
                    // create the connection based on the connection string
                    SqlConnection con = new SqlConnection(connectionString);
                    string sql;
                    sql = "insert customers (username, gname, sname, title, dob, address, suburb, state, postcode, mobile) values (@Username, @Gname, @Sname, @Title, @DOB, @Address, @Suburb, @State, @Postcode, @Mobile)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@Username", Email.Text);
                    cmd.Parameters.AddWithValue("@Gname", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@Sname", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@Title", ddlTitle.Text);
                    cmd.Parameters.AddWithValue("@DOB", DateTime.Parse(txtDOB.Text));
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@Suburb", txtSuburb.Text);
                    cmd.Parameters.AddWithValue("@State", ddlState.Text);
                    cmd.Parameters.AddWithValue("@Postcode", txtPostCode.Text);
                    cmd.Parameters.AddWithValue("@Mobile", txtMobilePhone.Text);

                    using (con)
                    {
                        con.Open();
                        int rowCount = cmd.ExecuteNonQuery();
                        string msg = "";
                        if (rowCount > 0)
                        {
                            Panel1.Enabled = false;
                            msg = "Registration is successful. You can log in now.";
                            lblResult.Text = msg;
                            lblResult.ForeColor = Color.Green;
                        }
                        else
                        {
                            msg = "Registration has some issues. Some data cannot be saved";
                            lblResult.Text = msg;
                            lblResult.ForeColor = Color.Red;
                        }
                    }
                    
                }

                //Finishing NonQuery Insertion
                

                //Uncomment to allow auto-redirect after successful registration
                //signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

                //get user to log in 

            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }

    }
}