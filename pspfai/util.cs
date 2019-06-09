using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace pspfai
{
    public static class util
    {
        public static string getCurrent(string ContentPageName, string MenuItem)
        {
            if (ContentPageName == MenuItem)
                return "current";
            else return "";
        }

        public static void getPopular(string constr, ref DataTable dt)
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
                        sda.Fill(dt);                      
                    }
                    con.Close();
                }
                
            }
        }
    }
}