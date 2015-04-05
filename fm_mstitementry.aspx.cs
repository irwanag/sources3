using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WhatsAppApi.Account;
using WhatsAppApi.Helper;

public partial class fm_mstitementry : System.Web.UI.Page
{
    cbll bll = new cbll();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bll.vBindingComboToSp(ref cbvendor, "sp_tmst_vendor_get", "vendor_cd", "vendor_nm");
            bll.vBindingFieldValueToCombo(ref cbitemtype, "item_typ");
            bll.vBindingFieldValueToCombo(ref cbosalestaxopt, "sales_tax_opt");
            bll.vBindingComboToSp(ref cbgroup, "sp_tmst_group_item_get", "grp_cd", "grp_nm");
            bll.vBindingFieldValueToCombo(ref cbpaymentterm, "payment_term");
        }
    }
    protected void btsave_Click(object sender, EventArgs e)
    {
        
    }
}