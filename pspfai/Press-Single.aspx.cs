using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace pspfai
{
    public partial class Press_Single : System.Web.UI.Page
    {
        private string constr = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.ContentPageName = "PRESS";
            if (!this.IsPostBack)
            {
                //BindCategory();
                //BindDataIntoRepeater();
                BindPopular();

            }

        }

        private void BindPopular()
        {

            DataTable dt = new DataTable();
            util.getPopular(constr, ref dt);
            if (dt == null) return;
            rptPopular.DataSource = dt;
            rptPopular.DataBind();

        }
    }
}