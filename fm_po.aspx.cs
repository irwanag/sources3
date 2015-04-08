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
            bll.vBindingComboToSp(ref cbproduct, "sp_tmst_product_get", "prod_cd", "prod_nm");
            bll.vBindingGridToSp(ref grdpo, "sp_tmp_po_dtl_get");
        }
    }
    protected void cbproduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        List<cArrayList> arr = new List<cArrayList>();
        arr.Add(new cArrayList("@prod_cd", cbproduct.SelectedValue.ToString()));
        bll.vBindingComboToSp(ref cbitem, "sp_tmst_item_get", "item_cd", "item_nm", arr);
    }
    protected void btAdd_Click(object sender, EventArgs e)
    {
        string sItemName = "";
        string sUnitPrice = "0";
        
        sItemName = bll.vLookUp("select item_nm from tmst_item where item_cd='" + cbitem.SelectedValue.ToString() + "'");
        sUnitPrice = bll.vLookUp("select unitprice from tmst_item where item_cd='" + cbitem.SelectedValue.ToString() + "'");
        List<cArrayList> arr = new List<cArrayList>();
        arr.Add(new cArrayList("@item_cd", cbitem.SelectedValue.ToString()));
        arr.Add(new cArrayList("@item_nm", sItemName));
        arr.Add(new cArrayList("@qty", txqty.Text));
        arr.Add(new cArrayList("@unitprice", sUnitPrice));
        bll.vInsertTmpPoDtl(arr);
        bll.vBindingGridToSp(ref grdpo, "sp_tmp_po_dtl_get");
    }
    protected void grdpo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lbitemcode = (Label)grdpo.Rows[e.RowIndex].FindControl("lbitemcode");
        List<cArrayList> arr = new List<cArrayList>();
        arr.Add(new cArrayList("@item_cd", lbitemcode.Text));
        bll.vDelTmpPoDtl(arr);
        bll.vBindingGridToSp(ref grdpo, "sp_tmp_po_dtl_get");
    }
    protected void btsave_Click(object sender, EventArgs e)
    {
        List<cArrayList> arr = new List<cArrayList>();
        string sPoNo = "";
        arr.Add(new cArrayList("@salespoint_cd", "MKH"));
        arr.Add(new cArrayList("@po_dt", dtpo.Text));
        arr.Add(new cArrayList("@po_typ", cbtype.SelectedValue.ToString()));
        arr.Add(new cArrayList("@ref", txref.Text));
        arr.Add(new cArrayList("@curr_cd", cbcurrency.SelectedValue.ToString()));
        arr.Add(new cArrayList("@vendor_cd", cbvendor.SelectedValue.ToString()));
        bll.vInsertMstPO(arr, ref sPoNo);
        Response.Redirect("fm_polist.aspx");
    }
}