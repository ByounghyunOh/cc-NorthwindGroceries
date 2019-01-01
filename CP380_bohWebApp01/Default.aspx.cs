using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CP380_bohWebApp01
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHideDiscountiue_Click(object sender, EventArgs e)
        {
            // If Hide Discontinue button click then
            //      Shows only Discontinue is false
            //      Hide discontinue button invisible
            //      Show All button visible
            SqlDataSource2.SelectCommand = "SELECT[ProductName], [CategoryID], [QuantityPerUnit], [ProductID], [UnitPrice], [Discontinued] FROM[Products] WHERE([CategoryID] = @CategoryID) AND [Discontinued] = 0";
            btnHideDiscountiue.Visible = false;
            btnShowAll.Visible = true;
            
        }

        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            // If Show all button click then
            //    show all product whether discontinue or not
            //    Hide discontinue button visible
            //    Show all button invisible
            //    page reloading to before button click (current URL)
            btnHideDiscountiue.Visible = true;
            btnShowAll.Visible = false;
            Response.Redirect(Request.RawUrl);
        }
    }
}