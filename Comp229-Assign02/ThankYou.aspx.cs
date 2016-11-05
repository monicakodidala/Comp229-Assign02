using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class ThankYou : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["Name"].ToString();
            email.Text = Session["Email"].ToString();
            phone.Text = Session["PhoneNumber"].ToString();
            rbcust.Text = Session["CustSat"].ToString();
            YesNo.Text = Session["YesNo"].ToString();
        }
    }
}