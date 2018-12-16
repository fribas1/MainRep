using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using aLibrary;
using aLibrary.EmmasDataSetTableAdapters;

namespace RADwebApp.Forms.Sales
{
    public partial class salesUpdate : System.Web.UI.Page
    {
        private static EmmasDataSet dsEmma;        static salesUpdate()
        {
            //load data at the beginning of the session
            dsEmma = new EmmasDataSet();
            receiptTableAdapter daReceipt = new receiptTableAdapter();
            orderLineTableAdapter daOrderLine = new orderLineTableAdapter();
            try
            {
                daReceipt.Fill(dsEmma.receipt);
                daOrderLine.Fill(dsEmma.orderLine);
            }
            catch { }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            DataRow receipt = dsEmma.receipt.FindByid(id);
            DataRow orderLine = dsEmma.orderLine.FindByid(id);

            if (receipt != null)
            {
                this.txtOrderNum.Text = receipt.ItemArray[0].ToString();
                this.ddlProduct.SelectedValue = orderLine.ItemArray[5].ToString();
                this.txtQuantity.Text = orderLine.ItemArray[2].ToString();
                this.txtNotes.Text = orderLine.ItemArray[4].ToString();
                this.ddlCust.SelectedValue = receipt.ItemArray[5].ToString();
                this.ddlEmp.SelectedValue = receipt.ItemArray[6].ToString();
            }
            else
            {
                this.Clear();
            }
        }

        private void Clear()
        {

        }
    }
}