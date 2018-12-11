using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.Sales
{
    public partial class SalesReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView totalNum = (DataView)dsSalesTotalNum.Select();
            this.txtTotalNum.Text = totalNum[0][0].ToString();

            DataView totalAmount = (DataView)dsSalesTotalAmount.Select();
            decimal amount;
            Decimal.TryParse(totalAmount[0][0].ToString(), out amount);
            if (amount > 0)
                this.txtTotalAmount.Text = amount.ToString("C2");            
            else
                this.panelTotal.Visible = false;
        }
    }
}