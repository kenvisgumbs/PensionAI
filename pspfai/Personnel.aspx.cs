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

            if(!this.IsPostBack)
            {
                switch(Request.QueryString["person"])
                {

                    case "larry":
                        singlephoto1.Src = "Content/Images/personnel/larry.jpg";
                        singlename1.InnerText = "Larry Franklin - Chairman";
                        singletext1.InnerHtml = @"";
                        break;

                    case "cherise":
                        singlephoto1.Src = "Content/Images/personnel/cherise.jpg";
                        singlename1.InnerText = "Cherise Gumbs";
                        singletext1.InnerHtml = @"<p>I have a passion for teaching and education. 
I see myself as a dedicated, highly motivated, and hardworking individual, parent, and educator. 
I epitomize the core qualities of everything Anguillian: resilience, strength, endurance, and beauty. 
I hold fast to the principles of collaboration, teamwork, team building, and empowerment. 
I strongly believe that we must all aspire to become lifelong learners and always possess a thirst for knowledge. 
My verse of encouragement reads – Call unto Me, and 
I will show thee great and mighty things, which thou knowest not (Jeremiah 33:3).</p>";
                        break;

                    case "kathleen":
                        singlephoto1.Src = "Content/Images/personnel/kathleen.jpg";
                        singlename1.InnerText = "Kathleen Rogers";
                        singletext1.InnerHtml = @"<p>Mrs. Kathleen Rogers holds a Masters of Accounting and Finance Management from 
Keller University in the US, a Bachelor of Arts in Accounting (Magna Cum Laude) from the University of the Virgin Islands and a 
Certificate in Public Administration from the University of the West Indies. Mrs. Rogers has been employed with the 
Government of Anguilla for over thirty years and has held several posts including Accountant General, Director of Audit, 
Permanent Secretary of Finance. 
She is currently Permanent Secretary in the Department of Public Administration.</p>";
                    break;

                    case "timothy":
                        singlephoto1.Src = "Content/Images/personnel/timothy.jpg";
                        singlename1.InnerText = "Timothy Hodge";
                        singletext1.InnerHtml = @"<p>Timothy Hodge obtained a B.A. (Summa Cum Laude) in Business Administration (Finance) from the University of The Virgin Islands and an MBA from the University of The West Indies. He is presently pursuing a PhD in Creative Leadership for Innovation and Change with the University of the Virgin Islands, 
and has been awarded a Graduate Certificate in Creativity Studies from Buffalo State, SUNY. 
He was the Social Security System’s first employee in 1981, and has been Director of Social Security for the past 27 years. 
In 1985, he was 1 of 8 promoters of the National Bank of Anguilla, 
and served as a Director and Corporate Secretary for many years until 2010. 
He served on the Board of the Eastern Caribbean Home Mortgage Bank based in St. Kitts for 10 years, 
including 2 as Vice-Chairman. He has served on several national organizations and committees including the 
Anguilla National Trust, the Constitutional and Electoral Reform Committee, and the Health Authority Project Board. 
He has been an ex-officio member of the Public Service Pension Fund Board from its inception.</p>";
                    break;

                    case "aidan":
                        singlephoto1.Src = "Content/Images/personnel/aidan.jpg";
                        singlename1.InnerText = "Dr. Aidan Harrigan";
                        singletext1.InnerHtml = @"";
                        break;

                    case "susan":
                        singlephoto1.Src = "Content/Images/personnel/susan.jpg";
                        singlename1.InnerText = "Susan Hodge";
                        singletext1.InnerHtml = @"
<p>Susan Hodge is an English-born Anguillian and has worked in various positions in the Anguilla Public Service for more than 30 years. She currently holds the post of Programme Officer in the Department of Disaster Management (DDM) since its inception October 2005. She is a graduate of the University of the West Indies Challenge Programme and University of Gloucestershire, a Certified Business Continuity Manager, 
UNICEF Return to Happiness Trainer and a Member of the International Association of Emergency Managers (IAEM).</p>
<p>A trade unionist from her youth, Susan is currently as President of the Anguilla Civil Service Association (ACSA) 
and is serving her second term as a member of the Public Service Pension Fund Board; having served as a member of the transition 
committee from non-contributory to contributory pension fund.</p>
<p>A believer in life-long learning, Susan has never let the grass grow under 
her feet after winning Anguilla’s first Secretary of the Year Competition she went on to win the 
Caribbean Secretary of the Year in 1996-1998. An active community volunteer in many spheres, 
Susan has achieved the highest communication award from Toastmasters International Advanced Communicator 
Gold and has held a myriad of leadership position in many local, regional and international organizations.</p>";
                        break;
                    case "michelle":
                        singlephoto1.Src = "Content/Images/personnel/michelle.jpg";
                        singlename1.InnerText = "Michelle Queeley";
                        singletext1.InnerHtml = @"";
                        break;

                    case "monifa":
                        singlephoto.Src = "Content/Images/personnel/monifa.jpg";
                        singlename.InnerText = "Monifa Brooks-Gumbs - Administrator";
                        singletext.InnerHtml= @"<p>Mrs. Monifa Brooks-Gumbs has held the post of Administrator at the Public
Service Pension Fund since June 2017.Prior to this, she was employed as the first
full time Accountant/ Finance Manager of the Pension Fund from September 2010
to May 2017.</p><p>
Mrs.Brooks - Gumbs holds a MBA in Finance and a BBA in Economics(Summa
 Cum Laude, With College Honors) both from Baruch College, City University of
New York. While enrolled at Baruch, she was selected to receive the Beta Gamma
Sigma Undergraduate Alumni Award for Academic Excellence and The Morton
Wollman Award for Outstanding Achievement in Economics at Graduation.She is
a member of several Honour Societies including the Golden Key International
Honour Society, Phi Eta Sigma and the Sigma Alpha Delta Honor Society.</p><p>
Monifa is married and has a young daughter.Her special interests include being a
President of the Anguilla Girls’ Brigade Island Council, Captain of the 4 th Anguilla
Girls’ Brigade Company and Choreographer for the group. She is an avid sports
fan and enjoys volunteering whenever the need arises.</p>";
                        
                    break;
                    case "girdon":
                        singlephoto.Src = "Content/Images/personnel/girdon.jpg";
                        singlename.InnerText = "Girdon Connor - Finance Manager";
                        singletext.InnerHtml = @"<p>As a detail and result oriented financial professional, Girdon Connor has been
providing accounting and financial services to major corporations and small
businesses - both locally and internationally - for the past 15 years. His reputation
for transformational leadership, creative thinking, problem solving, and negotiating
has secured him with numerous opportunities to manage large scale projects,
which include the successful migrations of two locally owned banks into one
commercial bank.</p><p>
Girdon currently serves as the Finance Manager at the Public Service Pension
Fund, where he directs the preparation of the financial statements and controls, as
well as maintain and monitor investments of the Pension Fund. Girdon understands
that, in addition to possessing the appropriate technical skills, an important facet in
the successful navigation of the financial sphere, involves building trusting
relationships with colleagues and clients.</p><p>
Girdon holds a Master’s in Business Administration, with a concentration in
Finance, and a Bachelor of Arts degree with a double major in Accounting and
Management Information Systems. His qualifications were obtained from
Lindenwood University, where he graduated with honors from his undergraduate
studies.</p>";
                        
                        break;

                    case "lenia":
                        singlephoto.Src = "Content/Images/personnel/lenia.jpg";
                        singlename.InnerText = "Lenia Simpson - Accounts & Loans Officer";
                        singletext.InnerHtml = @"<p>Mrs. Lenia Simpson holds the post of Accounts &amp; Loans Officer at the Public
Service Pension Fund since July 10, 2017. An alumna of Florida Memorial
University, she obtained a Bachelor of Science Degree in Business Administration
(Cum Laude) in December 2007. During her tenure, Mrs. Simpson was a member
of several honour societies including Delta Mu Delta Int’l Honour Society in
Business, and is also a member of Alpha Kappa Alpha Sorority, Incorporated.</p><p>
Previously, Mrs. Simpson worked at Scotia Bank (Anguilla) Ltd as a bank teller
and at National Bank of Anguilla Ltd now the National Commercial Bank of
Anguilla Ltd for almost ten years as Head of Cash and a Customer Service Officer.</p><p>
Lenia’s intention is to pursue a MBA in Finance or International Business in the
very near future. She is a wife and the mother of a daughter. Currently in her spare
time, Lenia serves on the Executive Board of the Business Professional Women-
The Valley (BPW), and enjoys travelling and learning about different cuisines and
cultures.</p>";
                       
                        break;

                    case "sharice":
                        singlephoto.Src = "Content/Images/personnel/sharice.jpg";
                        singlename.InnerText = "Sharice Richardson - Accounts Clerk";
                        singletext.InnerHtml = @"<p>Ms.Sharice Richardson began her employment with the Public Service Pension
Fund in August 2009.</p><p>
She graduated from the Albena Lake Hodge Comprehensive School in 2008,
where she was active in several sports including football.She is a member of the
Anguilla National Female Football team and has represented Anguilla in Cuba,
Barbados, St.Kitts, St.Maarten, St.Croix, Antigua and Suriname.Ms.Richardson
is currently the President of the De Youngsters Football Club.</p></p>
Aside from football, Sharice has a love for dance and was member of the Klassique
Academy of Dance and volunteers as Choreographer for Maroon house
cheerleading squad and the 4 th Anguilla Girls’ Brigade Company.</p><p>
Sharice is currently pursuing a degree in Accounting at the University of the West
Indies Open Campus. She is the mother of a young daughter.</p>";
                       
                        break;

                    case "rochelle":
                        singlephoto.Src = "Content/Images/personnel/rochelle.jpg";
                        singlename.InnerText = "Rochelle Bryan - Pension Clerk";
                        singletext.InnerHtml = @"<p>Ms. Bryan began her employment at the Public Service Pension Fund in February
2019 as Pension Clerk. Prior work experience includes working at the Caribbean
Commercial Bank as a Bank Teller for two years. This exposure sparked her
interest to pursue her bachelors in Finance and Investments.</p><p>
Rochelle graduated from Coventry University in November 2018, with a Bachelor
of Arts (Hons) in Finance and Investment. Whilst at University, Rochelle
developed a keen interest in Wealth Management and hopes to pursue her
professional qualification in Financial Advisory in the near future.</p><p>
Rochelle’s love for finance rivals her love for singing, having held the position of
Treasurer in her University’s Gospel Choir. She continues to display her love for
singing as she is an active member of the Central Baptist Choir and travels with the
group.</p>";
                       
                        break;
                }
            }
        }
        
        private string subpage = string.Empty;
        public string subPage { get { return subpage; } }
    }
}