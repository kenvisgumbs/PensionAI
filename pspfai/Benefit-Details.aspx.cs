﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pspfai
{
    public partial class Benefit_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.ContentPageName = "SERVICES";
            string subpage = string.Empty;
           
            if (Request.QueryString["type"] != null)
            {
                subpage = Request.QueryString["type"];
                switch(subpage)
                {
                    case "pension":
                    case "gratuity":
                    case "refund":
                    case "survivor":
                       subpagedescription = subpage;
                    break;
                    case "early":
                        subpagedescription = "Early Retirement";
                    break;
                    case "medical":
                        subpagedescription = "Medical Boarding";
                        break;

                    default:
                        subpagedescription = "";
                    break;
                }

            }
                
        }

        private string subpagedescription=string.Empty;
        public string subPage { get { return subpagedescription; } }
    }
}