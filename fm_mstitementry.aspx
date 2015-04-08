<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="fm_mstitementry.aspx.cs" Inherits="fm_mstitementry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            text-align: right;
            }
        .auto-style3 {
            height: 26px;
            text-align: right;
            width: 131px;
        }
        .auto-style4 {
            text-align: right;
            height: 20px;
            }
        .auto-style5 {
            height: 20px;
        }
      
  }
        .auto-style6 {
            width: 184px;
        }
        .auto-style7 {
            height: 20px;
            width: 184px;
        }
        .auto-style8 {
            height: 176px;
        }
        .auto-style9 {
            width: 40px;
        }
        .auto-style10 {
            height: 20px;
            width: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Entry Master Item</h3>
    <table style="width: 100%; font-size: small;">
        <tr>
            <td class="auto-style2">Product Code</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbproduct" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Item Code</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txitemcode" runat="server" Width="215px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Item Name</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txitemname" runat="server" Width="349px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Item Desc</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txdesc" runat="server" Width="349px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Item Type</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbitemtype" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Group</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbgroup" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Sales Tax Option</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbsalestaxopt" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Sales Tax</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbsalestax" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Invoice Include Tax</td>
            <td>:</td>
            <td>
                <asp:CheckBox ID="ckInvoiceTax" runat="server" Text="Yes" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Purchase Tax Option</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="cbpurchasetaxopt" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Purchase Tax</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="cbpurchasetax" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Payment Term</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbpaymentterm" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Item Code Vendor</td>
            <td class="auto-style5">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txcodevendor" runat="server" Width="215px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Vendor Code</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbvendor" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3"><hr style="width:100%;color:blue" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="vertical-align:top" class="auto-style8">Item Price</td>
            <td style="vertical-align:top" class="auto-style8">:</td>
            <td class="auto-style8">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style9">Branch</td>
                        <td>:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>Cosmetic</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Horeca</td>
                        <td class="auto-style5">:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style5">Key Account</td>
                        <td class="auto-style5">:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Mini Market</td>
                        <td>:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>Pharmacy</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Retail Arab</td>
                        <td>:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                        <td>Retail Indo</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Whole Saler</td>
                        <td>:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="3"><hr style="color:blue" /></td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <div><asp:Button ID="btsave" runat="server" Text="Save" Width="107px" OnClick="btsave_Click" /></div>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

