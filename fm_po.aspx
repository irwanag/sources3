<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="fm_po.aspx.cs" Inherits="fm_po" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        text-align: right;
        font-size: small;
        width: 87px;
    }
        .auto-style2 {
            font-size: small;
        }
        .auto-style3 {
            text-align: right;
            font-size: small;
            height: 26px;
        width: 87px;
    }
        .auto-style4 {
            font-size: small;
            height: 26px;
        }
    .auto-style5 {
        text-align: right;
        font-size: small;
        width: 87px;
        height: 20px;
    }
    .auto-style6 {
        font-size: small;
        height: 20px;
    }
    </style>
    <script>
        $(function () {
            $("#<%=dtpo.ClientID%>").datepicker();
        });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="width: 100%;">
        <tr>
            <td colspan="3"> <h3>PURCHASE ORDER</h3></td>
        </tr>
        <tr>
            <td class="auto-style1">Purchase No.</td>
            <td class="auto-style2">:</td>
            <td>
                <asp:TextBox ID="txpono" runat="server" CssClass="auto-style2" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Date</td>
            <td class="auto-style2">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="dtpo" runat="server" Width="139px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Type</td>
            <td class="auto-style2">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="cbtype" runat="server" Height="25px" Width="259px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Ref</td>
            <td class="auto-style4">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txref" runat="server" Width="246px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Currency</td>
            <td class="auto-style2">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="cbcurrency" runat="server" Height="19px" Width="256px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">vendor</td>
            <td class="auto-style2">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="cbvendor" runat="server" Height="19px" Width="256px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

