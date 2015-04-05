using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fm_mstitemlist : System.Web.UI.Page
{
    cbll bll = new cbll();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            vInitGrid();    
        }
    }

    void vInitGrid()
    {
        bll.vBindingGridToSp(ref grd, "sp_tmst_item_get");
    }
    protected void btadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("fm_mstitementry.aspx");
    }
}