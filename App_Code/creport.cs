using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;

/// <summary>
/// Summary description for creport
/// </summary>
public class creport
{
    cbll bll = new cbll();
    List<cArrayList> _lFormula;
    List<cArrayList> _lParameter;

    public List<cArrayList> lFormula
    { set { _lFormula = value; } get { return (_lFormula); } }

    public List<cArrayList> lParameter
    { set { _lParameter = value; } get { return (_lParameter); } }
	public creport()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void vShowReport()
    {
        ReportDocument doc = new ReportDocument();
        ConnectionInfo cninfo = new ConnectionInfo();
        //string sReportPath = bll.sGetControlParameter("report_path") + reportname;
     //   doc.Load();
     //   rpviewer.ReportSource = doc;
        //    rpviewer.SelectionFormula = selectionformula;
        cninfo.ServerName = bll.sGetControlParameter("cr_server");  // ".\\sqlexpress";
        cninfo.DatabaseName = bll.sGetControlParameter("cr_db");// "MUS";
        cninfo.UserID = bll.sGetControlParameter("cr_uid");// "sa";
        cninfo.Password = bll.sGetControlParameter("cr_pwd"); // "preketek";

        //  cninfo.IntegratedSecurity = false;
        Tables crTables = doc.Database.Tables;

        foreach (Table crTable in crTables)
        {
            TableLogOnInfo crtablelogoninfo = crTable.LogOnInfo;
            crtablelogoninfo.ConnectionInfo = cninfo;
            crTable.ApplyLogOnInfo(crtablelogoninfo);

        }

        
    }
}