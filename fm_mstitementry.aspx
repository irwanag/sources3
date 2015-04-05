<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="fm_mstitementry.aspx.cs" Inherits="fm_mstitementry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            text-align: right;
            width: 131px;
        }
        .auto-style3 {
            height: 26px;
            text-align: right;
            width: 131px;
        }
        .auto-style4 {
            text-align: right;
            height: 20px;
            width: 131px;
        }
        .auto-style5 {
            height: 20px;
        }
      
  }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Entry Master Item</h3>
    <table style="width: 100%; font-size: small;">
        <tr>
            <td class="auto-style2">Item Code</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txitemcode" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Item Name</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txitemname" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Item Desc</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txdesc" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Item Type</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbitemtype" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Group</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbgroup" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Sales Tax Option</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbosalestaxopt" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Sales Tax</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbsalestax" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Invoice Include Tax</td>
            <td>:</td>
            <td>
                <asp:CheckBox ID="ckInvoiceTax" runat="server" Text="Yes" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Purchase Tax Option</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="cbpurchasetaxopt" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Payment Term</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbpaymentterm" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Item Code Vendor</td>
            <td class="auto-style5">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txdesc0" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Vendor Code</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbvendor" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btsave" runat="server" Text="Save" Width="107px" OnClick="btsave_Click" />
            </td>
        </tr>
    </table>

</asp:Content>

