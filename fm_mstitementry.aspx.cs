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
            bll.vBindingFieldValueToCombo(ref cbsalestaxopt, "sales_tax_opt");
            bll.vBindingFieldValueToCombo(ref cbsalestax, "sales_tax");
            bll.vBindingComboToSp(ref cbgroup, "sp_tmst_group_item_get", "grp_cd", "grp_nm");
            bll.vBindingFieldValueToCombo(ref cbpaymentterm, "payment_term");
            bll.vBindingFieldValueToCombo(ref cbpurchasetaxopt, "purchase_tax_opt");
            bll.vBindingFieldValueToCombo(ref cbpurchasetax, "purchase_tax");
            bll.vBindingComboToSp(ref cbproduct, "sp_tmst_product_get", "prod_cd", "prod_nm");
        }
    }
    protected void btsave_Click(object sender, EventArgs e)
    {
        List<cArrayList> arr = new List<cArrayList>();
        arr.Add(new cArrayList("@item_cd", txitemcode.Text));
        arr.Add(new cArrayList("@item_nm", txitemname.Text));
        arr.Add(new cArrayList("@item_desc", txdesc.Text));
        arr.Add(new cArrayList("@item_typ", cbitemtype.SelectedValue.ToString()));
        arr.Add(new cArrayList("@grp_cd", cbgroup.SelectedValue.ToString()));
        arr.Add(new cArrayList("@sales_tax_opt", cbsalestaxopt.SelectedValue.ToString()));
        arr.Add(new cArrayList("@sales_tax", cbsalestax.SelectedValue.ToString()));
        arr.Add(new cArrayList("@inv_inc_tax", ckInvoiceTax.Checked));
        arr.Add(new cArrayList("@purchase_tax_opt", cbpurchasetaxopt.SelectedValue.ToString()));
        arr.Add(new cArrayList("@purchase_tax", cbpurchasetax.SelectedValue.ToString()));
        arr.Add(new cArrayList("@payment_term", cbpaymentterm.SelectedValue.ToString()));
        arr.Add(new cArrayList("@item_cd_vendor", txcodevendor.Text));
        arr.Add(new cArrayList("@vendor_cd", cbvendor.SelectedValue.ToString()));
        arr.Add(new cArrayList("@prod_cd", cbproduct.SelectedValue.ToString()));
        arr.Add(new cArrayList("@isactive", "1"));
        bll.vInsertMstItem(arr);
        Response.Redirect("fm_mstitemlist.aspx");
       // arr.Add(new cArrayList("@sales_tax_opt", cbsalestaxopt))
    }
}