using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.Reports
{
    public partial class weeklyReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // total amount sale
            DataView totalSaleAmount = (DataView)dsTotalSaleAmount.Select();
            decimal saleAmount;
            Decimal.TryParse(totalSaleAmount[0][0].ToString(), out saleAmount);
            if (saleAmount > 0)
                this.txtTotalSaleAmount.Text = saleAmount.ToString("C2");
            else
                this.panelSale.Visible = false;

            // total amount repair
            DataView totalRepairAmount = (DataView)dsTotalRepairAmount.Select();
            decimal repairAmount;
            Decimal.TryParse(totalRepairAmount[0][0].ToString(), out repairAmount);
            if (repairAmount > 0)
                this.txtTotalRepairAmount.Text = repairAmount.ToString("C2");
            else
                this.panelRepair.Visible = false;
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

    }
}