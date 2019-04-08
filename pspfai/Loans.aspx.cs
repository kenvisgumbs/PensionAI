using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pspfai
{
    public partial class Loans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.ContentPageName = "LOANS";
            string subpage = string.Empty;
            Wizard1.PreRender += new EventHandler(Wizard1_PreRender);


            if (!Page.IsPostBack)
            {

                for (int y = DateTime.Now.Year - 2; y > (DateTime.Now.Year - 65); y--)
                {
                    hire_year.Items.Add(new ListItem(y.ToString(), y.ToString()));
                }


            }
            else
            {

                if (TextBox1.Text != "")
                {
                    int yearsofservice = 0;

                  
                    DateTime d1 = Convert.ToDateTime(TextBox1.Text); // hire date
                    DateTime d = DateTime.Now;


                   

                    yearsofservice = calculateYearSpan(d1, d);
                    TextBox2.Text = yearsofservice.ToString();

                    if (yearsofservice < 2)
                    {
                        RangeValidator2.MinimumValue = "2";
                        Wizard1.MoveTo(WizardStep1);
                    }
                }

                if (contributions.Text == "") return;

                double cntrs = Convert.ToDouble(contributions.Text);
                double max = cntrs * .75;

                RangeValidator1.MaximumValue = (max).ToString();
                RangeValidator1.ErrorMessage = string.Format("{0:C}", max) + " Max Allowed!";

            }
        }

        private string subpagedescription = string.Empty;
        public string subPage { get { return subpagedescription; } }

        protected void Wizard1_PreRender(object sender, EventArgs e)
        {
            Repeater SideBarList = Wizard1.FindControl("HeaderContainer").FindControl("SideBarList") as Repeater;
            SideBarList.DataSource = Wizard1.WizardSteps;
            SideBarList.DataBind();

        }

        int calculateYearSpan(DateTime d1, DateTime d2)
        {
            int i = 0;
            while (d1.Year <  d2.Year)
            {
                i++;
                d1 = d1.AddYears(1);
            }

            return i;
        }

        protected string GetClassForWizardStep(object wizardStep)
        {
            WizardStep step = wizardStep as WizardStep;

            if (step == null)
            {
                return "";
            }
            int stepIndex = Wizard1.WizardSteps.IndexOf(step);

            if (stepIndex < Wizard1.ActiveStepIndex)
            {
                return "prevStep";
            }
            else if (stepIndex > Wizard1.ActiveStepIndex)
            {
                return "nextStep";
            }
            else
            {
                return "currentStep";
            }
        }
    }
}