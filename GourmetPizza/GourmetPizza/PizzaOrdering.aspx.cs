using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetPizza
{
    public partial class PizzaOrdering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void btnNextOrderDetails_Click(object sender, EventArgs e)
        {
            lblTitle.Text = ddlTitle.Text;
            lblFirstName.Text = txtFirstName.Text;
            lblLastName.Text = txtLastName.Text;
            lblDOB.Text = txtDOB.Text;
            lblAddress.Text = txtAddress.Text;
            lblSuburb.Text = txtSuburb.Text;
            lblState.Text = ddlState.Text;
            lblPostCode.Text = txtPostCode.Text;
            lblMobilePhone.Text = txtMobilePhone.Text;
            lblEmailAddress.Text = txtEmailAddress.Text;
            lblNameOnCard.Text = txtFirstName.Text + " " + txtLastName.Text;
            lblNameOnCard1.Text = txtFirstName.Text + " " + txtLastName.Text;
            MultiView1.ActiveViewIndex = 1;

        }

        protected void btnBackCustomerDetails_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnNextPaymentDetails_Click(object sender, EventArgs e)
        {
            lblPizzaType.Text =ddlPizzaType.Text;
            lblSize.Text = ddlPizzaSize.Text;
            lblQuantity.Text = txtQuantity.Text;
            MultiView1.ActiveViewIndex = 2;

        }

        protected void btnBackOrderDetails_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

        }

        protected void btnNextSummary_Click(object sender, EventArgs e)
        {
            lblCardType.Text = ddlCCT.Text;
            lblCardNumber.Text = txtCardNumber.Text;
            lblExpiryMonth.Text = ddlExpiryMonth.Text;
            lblExpiryYear.Text = txtExpiryYear.Text;
            lblSecurityCode.Text = txtSecurityCode.Text;
            MultiView1.ActiveViewIndex = 3;
            lblResult.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) //check whether server-side validation passed
            {
                lblResult.Text = "Order successful!"; //if yes show a successful msg
            }
            else
            {
                lblResult.Text = "Order failed!";
            }
        }

        protected void btnViewPaymentDetails_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void btnViewOrderDetails_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnViewCustomerDetails_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}