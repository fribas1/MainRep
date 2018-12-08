using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.Sales
{
    public partial class SalesNew : System.Web.UI.Page
    {
        public int orderNum;
        public DateTime date;
        public bool paid;
        public int payTypeID;
        public int custID;
        public int empID;

        protected void Page_Load(object sender, EventArgs e)
        {
            date = DateTime.Now;
            this.txtDate.Text = date.ToShortDateString();
            this.txtCustFirst.Text = "Fabio";            
            this.txtCustLast.Text = "Ribas";
            this.txtEmpFirst.Text = "Beatriz";
            this.txtEmpLast.Text = "Krich";            
            DataView customer = (DataView)dsSalesCustomer.Select();
            custID = Convert.ToInt32(customer[0][0]); // Get custID
            this.txtCustID.Text = customer[0][0].ToString();
            DataView employee = (DataView)dsSalesEmployee.Select();
            empID = Convert.ToInt32(employee[0][0]); // Get empID
            this.txtEmpID.Text = employee[0][0].ToString();
            DataView receiptID = (DataView)dsReceiptID.Select();
            orderNum = Convert.ToInt32(receiptID[0][0]); //Get new Order #
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            if (this.rblPaid.SelectedValue == "0")
                paid = false;
            else
                paid = true;

            payTypeID = Convert.ToInt32(this.ddlPayment.SelectedValue);


            //this.dsReceipt.InsertParameters.Add("ordNumber", TypeCode.Int32, orderNum.ToString());
            //this.dsReceipt.InsertParameters.Add("ordDate", TypeCode.DateTime, date.ToString());
            //this.dsReceipt.InsertParameters.Add("ordPaid", TypeCode.Boolean, paid.ToString());
            //this.dsReceipt.InsertParameters.Add("paymentID", TypeCode.Int32, payTypeID.ToString());
            //this.dsReceipt.InsertParameters.Add("custID", TypeCode.Int32, custID.ToString());
            //this.dsReceipt.InsertParameters.Add("empID", TypeCode.Int32, empID.ToString());
            this.dsReceipt.Insert();
        }
   
    }
}