using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.RepairPages
{
    public partial class OrderTools : System.Web.UI.Page
    {

        private static aLibrary.EmmasDataSet dsEmmas = new aLibrary.EmmasDataSet();


        static OrderTools()
        {
            orderToolsSelectTableAdapter daOrderTools = new orderToolsSelectTableAdapter();
            try
            {
                daOrderTools.Fill(dsEmmas.orderToolsSelect);

            }
            catch { }
        }




        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}