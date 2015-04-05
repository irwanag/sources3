<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="vendor_entry.aspx.cs" Inherits="vendor_entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="auto-style2">Entry Vendor / Supplier</h3>
    <table style="vertical-align:top">
        <tr style="text-align: left">
            <td style="text-align: left">
               Vendor Code
            </td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txcode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr style="text-align: left">
            <td style="text-align: left">
                Name
            </td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txname" runat="server" Height="16px" Width="256px"></asp:TextBox>
            </td>
        </tr>
        <tr style="text-align: left">
            <td style="text-align: left">
                Check Name
            </td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txchkname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr style="text-align: left">
            <td style="text-align: left">
                Contact
            </td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txcontact" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr style="text-align: left">
            <td style="text-align: left">
               Address1</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txaddr1" runat="server" TextMode="MultiLine" Width="256px"></asp:TextBox></td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left">
               Address 2</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txaddr2" runat="server" TextMode="MultiLine" Width="256px"></asp:TextBox></td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left">
               Address 3</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txaddr3" runat="server" TextMode="MultiLine" Width="256px"></asp:TextBox></td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left">
               City</td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="cbcity" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Post Code</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txpostcode" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                PKP Num</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txpkp" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Currency</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="cbcurr" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Tax Code</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="cbtax" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Group</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="cbgroup" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Bank</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="cbbank" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Acc. No</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txacc" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Phone 1</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txphone1" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Phone 2</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txphone2" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                Fax</td>
            <td class="auto-style1">:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txfax" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
         <tr style="text-align: left">
            <td style="text-align: left" class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr style="text-align: left">
            <td style="text-align: left">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btSave" runat="server" Height="26px" OnClick="btSave_Click" Text="SAVE" Width="60px" />
            </td>
        </tr>

    </table>
</asp:Content>

