using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetPizza.customers
{
    public partial class MakeOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = Context.User.Identity.Name;
            if (!IsPostBack)
            {
                //MultiView1.ActiveViewIndex = 0;
                MultiView1.SetActiveView(OrderDetails);

            }
        }
        protected void Page_PreLoad(object sender, EventArgs e)
        {

        }
        protected void btnNextPaymentDetails_Click(object sender, EventArgs e)
        {
            //string checkedSelectCommand = "";
            MultiView1.SetActiveView(PaymentDetails);
            txtPizzaType.Text = ddlPizzaType.SelectedItem.Text;
            txtSize.Text = ddlPizzaSize.SelectedValue;
            txtQuantitySummary.Text = txtQuantity.Text;
        }

        protected void btnNextSummary_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(SummaryOfOrder);
            txtTotalCostSummary.Text = ((TextBox)TotalCostFormView.FindControl("txtTotalCost")).Text;
            txtCardTypeSummary.Text = ddlCCT.SelectedValue;
            txtNameOnCard1.Text = ((TextBox)PaymentDetailsFormView.FindControl("txtFullName")).Text;
            txtCardNumberSummary.Text = txtCardNumber.Text;
            txtExpiryMonthSummary.Text = ddlExpiryMonth.SelectedValue;
            txtExpiryYearSummary.Text = txtExpiryYear.Text;
            txtSecurityCodeSummary.Text = txtSecurityCode.Text;
        }

        protected void btnBackPaymentDetails_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(OrderDetails);
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Preparing to submit...!";

            if (Page.IsValid)
            {
                // read the entire connection string from Web.config
                string connectionString = WebConfigurationManager.ConnectionStrings["PizzaOrdersConnection"].ConnectionString;
                // create the connection based on the connection string
                SqlConnection con = new SqlConnection(connectionString);
                string sql;
                sql = "insert orders (username,pizzaID, pizzasize, quantity, totalcost, ordertime) values (@Username, @pizzaID, @pizzaSize, @quantity, @totalCost, @orderTime)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@Username", Session["username"]);
                cmd.Parameters.AddWithValue("@pizzaID", int.Parse(((Label)TotalCostFormView.FindControl("lblPizzaID")).Text));
                cmd.Parameters.AddWithValue("@pizzaSize", txtSize.Text);
                cmd.Parameters.AddWithValue("@quantity", int.Parse(txtQuantitySummary.Text));
                cmd.Parameters.AddWithValue("@totalCost",float.Parse(txtTotalCostSummary.Text));
                cmd.Parameters.AddWithValue("@orderTime", System.DateTime.Now);

                using (con)
                {
                    con.Open();
                    int rowCount = cmd.ExecuteNonQuery();
                    string msg = "";
                    if (rowCount > 0)
                    {
                        msg = "\nOrder is submitted";
                        lblResult.Text = msg;
                        lblResult.ForeColor = Color.Green;
                    }
                    else
                    {
                        msg = "Order has some issues. Some data cannot be sent";
                        lblResult.Text = msg;
                        lblResult.ForeColor = Color.Red;
                    }
                }
            }

            
        }

        protected void btnBack2_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(PaymentDetails);
        }
    }
}