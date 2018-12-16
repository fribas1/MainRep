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
        private static EmmasDataSet dsEmma;

        public static DataRow[] rows;

        ListItem item = new ListItem();

        static salesUpdate()
        {
            //load data at the beginning of the session
            dsEmma = new EmmasDataSet();
            receiptTableAdapter daReceipt = new receiptTableAdapter();
            orderLineTableAdapter daOrderLine = new orderLineTableAdapter();
            orderProductTableAdapter daOrderProd = new orderProductTableAdapter();
            string criteria = "receiptID = " + 3;
            rows = (criteria.Length > 0) ? dsEmma.orderProduct.Select(criteria) : dsEmma.orderProduct.Select();


            try
            {
                daReceipt.Fill(dsEmma.receipt);
                daOrderLine.Fill(dsEmma.orderLine);
                daOrderProd.Fill(dsEmma.orderProduct);
            }
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["receiptID"]);
            DataRow receipt = dsEmma.receipt.FindByid(id);
            DataRow orderLine = dsEmma.orderLine.FindByid(id);
            DataRow orderProd = dsEmma.orderProduct.FindByid(id);

            if (receipt != null)
            {
                this.txtOrderNum.Text = receipt.ItemArray[0].ToString();
                this.txtNotes.Text = orderProd.ItemArray[7].ToString();
                this.ddlCust.SelectedValue = receipt.ItemArray[5].ToString();
                this.ddlEmp.SelectedValue = receipt.ItemArray[6].ToString();
            }

            else
            {
                //this.Clear();

            }

            foreach (DataRow row in rows)
            {
                item.Text = "Order Qt.: " + row.ItemArray[2].ToString() + " - Product: " + row.ItemArray[3].ToString() + " - Price: " + row.ItemArray[1].ToString();
                item.Value = row.ItemArray[6].ToString();
                this.lbCart.Items.Add(item);
            }
        }



        private void DisplayCart()
        {
            this.lbCart.Items.Clear();
            //this.Clear();

        }




        private void Clear()
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(Request.QueryString["receiptID"]);

            try
            {
                //Receipt Table
                //dsEmma.receipt.FindByid(id).ordNumber = this.txtOrderNum.Text;
                //dsEmma.receipt.FindByid(id).paymentID = this.ddlPayType.SelectedIndex;
                //dsEmma.receipt.FindByid(id).custID = this.ddlCust.SelectedIndex;
                //dsEmma.receipt.FindByid(id).empID = this.ddlEmp.SelectedIndex;
                //Save();

                //OrderLine Table

            }
            catch
            {
                //this.lblSave.Text = "Unable to update - Invalid Input";
            }
        }
    }
}