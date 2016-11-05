using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class Survey : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Page.Title = "Survey";
            SurveyPage.Text = "Welcome to Customer Satisfaction Survey!!";
        }

        protected void TYpage_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Value;
            Session["Email"] = txtEmail.Value;
            Session["PhoneNumber"] = txtPhNum.Value;
            Session["CustSat"] = rbCustSat.SelectedValue;
            Session["YesNo"] = YN.SelectedValue;
            Response.Redirect("~/ThankYou.aspx");

        }

    }
}