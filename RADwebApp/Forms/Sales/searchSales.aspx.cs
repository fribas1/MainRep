﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.Sales
{
    public partial class searchSales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtCustName.Text = "";
            txtEmpName.Text = "";
            txtOrderNum.Text = "";
            txtDateEnd.Text = "";
            txtDateStart.Text = "";
        }
    }
}