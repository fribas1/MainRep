using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.Inventory
{
    public partial class Inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            this.gvInventory.Visible = false;            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            ddlBrands.SelectedValue = "All Brands";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.gvInventory.Visible = true;
        }

        protected void gvInventory_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Check if row is data row, not header, footer etc.
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Get value of third column. Index is zero based, to 
                // get text of third column we use Cells[2].Text
                int CellValue = Convert.ToInt32(e.Row.Cells[4].Text);

                // If value is greater of 5, change format
                if (CellValue < 5)
                {                    
                    // Use this syntax to change format of complete row
                    //e.Row.BackColor = System.Drawing.Color.Yellow;
                    // Use this syntax to change format of single cell
                    e.Row.Cells[4].BackColor = System.Drawing.Color.Yellow;
                }
            }
        }
    }
}