using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pspfai
{
    public partial class Personnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.ContentPageName = "ABOUT";



            if (Request.QueryString["type"] != null)
            {
                subpage = Request.QueryString["type"];

            }
        }

        private string subpage = string.Empty;
        public string subPage { get { return subpage; } }
    }
}