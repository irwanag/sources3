using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fm_po : System.Web.UI.Page
{
    cbll bll = new cbll();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bll.vBindingFieldValueToCombo(ref cbcurrency, "curr_cd");
            bll.vBindingFieldValueToCombo(ref cbtype, "po_typ");
            bll.vBindingComboToSp(ref cbvendor, "sp_tmst_vendor_get", "vendor_cd", "vendor_nm");
        }
    }
}