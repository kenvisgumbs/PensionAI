using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pspfai
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.ContentPageName = "RESOURCES";
            Wizard1.PreRender += new EventHandler(Wizard1_PreRender);
            int year = DateTime.Now.Year - 17;

            if (!Page.IsPostBack)
            {

                for (int Y = year; Y > (DateTime.Now.Year - 66); Y--)

                {

                    dob_year.Items.Add(new ListItem(Y.ToString(), Y.ToString()));

                }

                for(int y = year; y > (DateTime.Now.Year - 66 + 16); y--)
                {
                    hire_year.Items.Add(new ListItem(y.ToString(), y.ToString()));
                }
            }

            
        }
        protected void Wizard1_PreRender(object sender, EventArgs e)
        {
            Repeater SideBarList = Wizard1.FindControl("HeaderContainer").FindControl("SideBarList") as Repeater;
            SideBarList.DataSource = Wizard1.WizardSteps;
            SideBarList.DataBind();

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