using System;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demoreports
{
    public partial class _Default : Page
    {
        
        private string reportBasePath = @"E:\Crystal Report Sample Files\Crystal Report Sample Files\";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
           
            string selectedReport = DropDownList1.SelectedValue;

    if (!string.IsNullOrEmpty(selectedReport))
            {
                try
                {
                   
                    ReportDocument r = new ReportDocument();
                    string reportPath = reportBasePath + selectedReport;
                    r.Load(reportPath);

                  
                    CrystalReportViewer1.ReportSource = r;
                }
                catch (Exception ex)
                {
                    
                    Response.Write("Error loading report: " + ex.Message);
                }
            }
            else
            {
               
                Response.Write("Please select a report to load.");
            }
        }
    }
    }
