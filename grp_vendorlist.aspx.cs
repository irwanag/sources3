using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class grp_vendorlist : System.Web.UI.Page
{
    cbll bll = new cbll();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bll.vBindingGridToSp(ref grd, "sp_tmst_group_vendor_get");
            
        }
    }
    protected void btadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("grp_vendor_entry.aspx");
    }
    protected void btprint_Click(object sender, EventArgs e)
    {
        Response.Redirect("fm_report.aspx");
    }
}