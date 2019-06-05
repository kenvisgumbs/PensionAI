using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace pspfai
{
    public partial class Press2 : System.Web.UI.Page
    {
        private string constr = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
        readonly PagedDataSource _pgsource = new PagedDataSource();
        int _firstIndex, _lastIndex;
        private int _pageSize = 3;
        private int CurrentPage
        {
            get
            {
                if (ViewState["CurrentPage"] == null) return 0;
                return ((int)ViewState["CurrentPage"]);
            }

            set
            {
                ViewState["CurrentPage"] = value;
            }
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.ContentPageName = "PRESS";
            if (!this.IsPostBack)
            {
                BindCategory();
                BindDataIntoRepeater();
                BindPopular();

            }
        }

        protected DataTable GetDataFromDb()
        {
            DataTable dt = new DataTable();
            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
            {
                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(@"SELECT tp.[press_id]
      ,[headline]
      ,[details], [short_details]
      ,CONVERT(varchar,[published], 103) pdt
      ,[pubisher]
      ,[media]
,tc.[category_id], category
      ,[display]
  FROM [DB_A421EE_pspf].[dbo].[tbl_press] tp INNER JOIN tbl_category tc ON tc.category_id = tp.category_id WHERE display= 1 Order by published Desc"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter(cmd))
                    {
                       
                        sda.Fill(dt);
                        var s = dt.AsEnumerable();
                        int max = (from tab1 in s select tab1.Field<int>("press_id")).Max();
                        ViewState["total"] = max;
                        //return dt;
                    }
                }
                con.Close();
            }
            return dt;
        }

        private void BindDataIntoRepeater()
        {
            DataTable dt = GetDataFromDb();
            _pgsource.DataSource = dt.DefaultView;
            _pgsource.AllowPaging = true;

            _pgsource.PageSize = _pageSize;
            _pgsource.CurrentPageIndex = CurrentPage;

            ViewState["TotalPages"] = _pgsource.PageCount;

            lbPrevious.Visible = !_pgsource.IsFirstPage;
            lbNext.Visible = !_pgsource.IsLastPage;

            //Bind Data
            rptPress.DataSource = _pgsource;
            rptPress.DataBind();

            int total = (int)ViewState["total"];
            lblpage.Text = "Page " + (CurrentPage + 1) + " of " + _pgsource.PageCount + "(" + total + "results)";

            HandlePaging();
        }

        private void HandlePaging()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("PageIndex");
            dt.Columns.Add("PageText");

            _firstIndex = CurrentPage - 5;
            if (CurrentPage > 5) _lastIndex = CurrentPage + 5;
            else _lastIndex = 10;

            if(_lastIndex > Convert.ToInt32(ViewState["TotalPages"]))
            {
                _lastIndex = Convert.ToInt32(ViewState["TotalPages"]);
                _firstIndex = _lastIndex - 10;
            }

            if (_firstIndex < 0)
                _firstIndex = 0;

            for (int i = _firstIndex; i < _lastIndex; i++)
            {
                var dr = dt.NewRow();
                dr[0] = 1;
                dr[1] = i + 1;
                dt.Rows.Add(dr);
            }

            rptPaging.DataSource = dt;
            rptPaging.DataBind();
        }

        protected void lbFirst_Click(object sender, EventArgs e)
        {
            CurrentPage = 0;
            BindDataIntoRepeater();
        }

        protected void lbLast_Click(object sender, EventArgs e)
        {
            CurrentPage = (Convert.ToInt32(ViewState["TotalPages"])-1);
            BindDataIntoRepeater();
        }

        protected void lbPrevious_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            BindDataIntoRepeater();
        }

        protected void lbNext_Click(object sender, EventArgs e)
        {
            CurrentPage += 1;
            BindDataIntoRepeater();
        }

        protected void rptPaging_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (!e.CommandName.Equals("NewPage")) return;
            CurrentPage = Convert.ToInt32(e.CommandArgument.ToString());
            BindDataIntoRepeater();
        }

        protected void rptPaging_ItemDataBound(object source, DataListItemEventArgs e)
        {
            var lnkPage = (LinkButton)e.Item.FindControl("lbPaging");
            if (lnkPage.CommandArgument != CurrentPage.ToString()) return;
            lnkPage.Enabled = false;
        }

        private void BindPopular()
        {
            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
            {

                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(@"SELECT Top 4 [press_id]
      ,[headline]
      ,[details]
      ,CONVERT(varchar,[published], 107) pdt
      ,[pubisher], [view_count]
      ,[category_id]
      ,[media_tn]
FROM [DB_A421EE_pspf].[dbo].[tbl_press] WHERE display= 1 ORDER BY view_count DESC"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter(cmd))
                    {
                        System.Data.DataTable dt = new System.Data.DataTable();
                        sda.Fill(dt);
                        rptPopular.DataSource = dt;
                        rptPopular.DataBind();
                    }
                }
                con.Close();
            }
        }

        private void BindCategory()
        {
            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
            {
                
                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(@"select tc.category_id, category,[sort], count(press_id) num 
FROM tbl_category tc LEFT OUTER JOIN
tbl_press tpc ON tpc.category_id = tc.category_id
group by tc.category_id,category,[sort]
order by [sort],category"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter(cmd))
                    {
                        System.Data.DataTable dt = new System.Data.DataTable();
                        sda.Fill(dt);
                        rptCategory.DataSource = dt;
                        rptCategory.DataBind();
                    }
                }
                con.Close();
            }


        }

        private void BindRepeater()
        {


            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
            {
                string story;
                story = Request.QueryString["press -id"];
                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(@"SELECT tp.[press_id]
      ,[headline]
      ,[details], [short_details]
      ,CONVERT(varchar,[published], 103) pdt
      ,[pubisher]
      ,[media]
,tc.[category_id], category
      ,[display]
  FROM [DB_A421EE_pspf].[dbo].[tbl_press] tp INNER JOIN tbl_category tc ON tc.category_id = tp.category_id WHERE display= 1 Order by published Desc"))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter(cmd))
                    {
                        System.Data.DataTable dt = new System.Data.DataTable();
                        sda.Fill(dt);
                        rptPress.DataSource = dt;
                        rptPress.DataBind();
                    }
                }
                con.Close();
            }

        }
    }
}