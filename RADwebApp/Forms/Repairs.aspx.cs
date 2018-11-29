using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieWeb
{
    public partial class Repairs : System.Web.UI.Page
    {
      
        
        protected void Page_Load(object sender, EventArgs e)
        {
            gvResult.Visible = false;          
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
        }
    }
}