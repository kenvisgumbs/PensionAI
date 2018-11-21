using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace pspfai
{
    public class util
    {
        public string getCurrent(string ContentPageName, string MenuItem)
        {
            if (ContentPageName == MenuItem)
                return "current";
            else return "";
        }
    }
}