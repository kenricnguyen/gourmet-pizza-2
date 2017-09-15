using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Microsoft.AspNet.Identity;


namespace GourmetPizza.customers
{
    public partial class PersonalDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = Context.User.Identity.Name;

        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            //DropDownList ddlState = (DropDownList)(FormView1.Row.FindControl("ddlState"));
            lblResult.Visible = false;

            //FormView1.DataBind();
            //DropDownList ddlTitle = (DropDownList)FormView1.FindControl("ddlTitle");
            //TextBox txtTitleEdit = (TextBox)FormView1.FindControl("txtTitleEdit");
            //ddlTitle.SelectedValue = txtTitleEdit.Text;
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                lblResult.Text = "Your details have been updated successfully";
                lblResult.Visible = true;               
            }
        }
    }
}