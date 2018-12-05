using RADwebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.Employees
{
    public partial class Employees : System.Web.UI.Page
    {
        public bool flagNew = false; //true: Add New / False: Normal
        public bool flagEdit = false; //true: Edit-Delete / False: Normal

        protected void Page_Init(object sender, EventArgs e)
        {
            dvEmployeeNew.EnableDynamicData(typeof(Employee));
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Request.QueryString["mode"] == "edit") || (Request.QueryString["mode"] == "delete"))
            {
                this.btnNewEmployee.Visible = false;
                flagEdit = true;
            }                
            else if (Request.QueryString["mode"] == "addNew")
            {
                this.gvEmployees.Visible = false;
                this.dvEmployeeNew.Visible = true;
                this.btnNewEmployee.Visible = false;
                this.panelFilters.Visible = false;
                flagNew = true;
            }
        }

        protected void btnNewEmployee_Click(object sender, EventArgs e)
        {
            this.gvEmployees.Visible = false;
            this.dvEmployeeNew.Visible = true;
            this.btnNewEmployee.Visible = false;
            this.panelFilters.Visible = false;
            flagNew = true;
        }

        protected void gvEmployees_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = gvEmployees.SelectedRow.RowIndex;
            string id = gvEmployees.DataKeys[index][0].ToString();
            string edit = "edit";
            Response.Redirect("~/Forms/Employees/EmployeeDetails.aspx?mode=" + edit + "&id=" + id);
        }

        protected void dvEmployeeNew_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            this.gvEmployees.Visible = true;
            this.dvEmployeeNew.Visible = false;
            this.btnNewEmployee.Visible = true;
            this.panelFilters.Visible = true;
            flagNew = false;
            flagEdit = false;
        }
    }
}