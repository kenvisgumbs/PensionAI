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

                for (int y = year + 17; y > (DateTime.Now.Year - 66 + 16); y--)
                {
                    hire_year.Items.Add(new ListItem(y.ToString(), y.ToString()));
                }

                for (int y = year + 15; y < (DateTime.Now.Year + 63); y++)
                {
                    resig_year.Items.Add(new ListItem(y.ToString(), y.ToString()));
                }
            }
            else
            {
                //RadioButtonList1.Items.Add(new ListItem("Refund", "3"));
                if (RadioButtonList2.SelectedValue == "1")
                {
                    if (RadioButtonList1.Items.Count != 2)
                    {
                        RadioButtonList1.Items.Clear();
                        RadioButtonList1.Items.Add(new ListItem("Full Pension", "1"));
                        RadioButtonList1.Items.Add(new ListItem("Gratuity Reduced Pension", "2"));
                        RadioButtonList1.SelectedIndex = 0;
                    }


                }
                else
                {
                    if (TextBox1.Text == "") return;
                    if (TextBox2.Text == "") return;
                    if (TextBox3.Text == "") return;

                  
                    int yearsofservice = 0;
                    DateTime d2 = Convert.ToDateTime(TextBox3.Text);
                    DateTime d1 = Convert.ToDateTime(TextBox2.Text);
                    DateTime d = Convert.ToDateTime(TextBox1.Text);


                    while (DateTime.Compare(d1, d2) < 0)
                    {
                        yearsofservice++;
                        d1 = d1.AddYears(1);
                    }

                    TextBox4.Text = yearsofservice.ToString();

                    if (yearsofservice < 10)
                    {
                            RadioButtonList1.Items.Clear();
                            RadioButtonList1.Items.Add(new ListItem("Refund", "3"));
                            RadioButtonList1.SelectedIndex = 0;
                    }
                    else
                    {
                       
                            RadioButtonList1.Items.Clear();
                            RadioButtonList1.Items.Add(new ListItem("Gratuity Reduced Pension", "2"));
                            RadioButtonList1.SelectedIndex = 0;

                    }

                    int yearsremaining = 0;
                    d1 = DateTime.Now;
                    while (DateTime.Compare(d1, d.AddYears(65)) < 0) {
                        yearsremaining++;
                        d1 = d1.AddYears(1);
                    }
                    TextBox5.Text = yearsremaining.ToString();
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