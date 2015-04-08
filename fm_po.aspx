<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="fm_po.aspx.cs" Inherits="fm_po" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
     <script type="text/javascript">
         $(function () {
             $("#<%=dtpo.ClientID%>").datepicker({ dateFormat: "mm/dd/yy" }).val();
       });

</script>
    <style type="text/css">
        .auto-style1 {
            width: 80px;
        }
    .auto-style2 {
        color: #FF0000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <table style="width: 100%;">
        <tr>
            <td colspan="3"> <h3>PURCHASE ORDER</h3><hr style="color:blue" /></td>
        </tr>
        <tr>
            <td class="auto-style1">Purchase No.</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="txpono" runat="server" CssClass="auto-style2" Width="253px"></asp:TextBox>
            &nbsp;<span class="auto-style2">* Leave it blank</span></td>
        </tr>
        <tr>
            <td class="auto-style1">Date</td>
            <td class="auto-style2">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="dtpo" runat="server" Width="139px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Type</td>
            <td class="auto-style8">:</td>
            <td class="auto-style8">
                <asp:DropDownList ID="cbtype" runat="server" Height="25px" Width="259px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Ref</td>
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
            <td class="auto-style5" colspan="3"><hr style="color:blue;width:100%" /></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;Item Selected</td>
            <td class="auto-style6">:</td>
            <td><strong><span class="auto-style10">Select Item to be purchased!</span></strong>
                <table>
                    <tr style="background-color:#808080"><td class="auto-style2">PRODUCT</td><td class="auto-style2">ITEM</td><td class="auto-style2">QTY</td><td>&nbsp;</td></tr>
                    <tr><td>
                    <asp:UpdatePanel ID="upd2" runat="server">
                        <ContentTemplate>
                <asp:DropDownList ID="cbproduct" runat="server" Height="19px" Width="210px" AutoPostBack="true" OnSelectedIndexChanged="cbproduct_SelectedIndexChanged">
                </asp:DropDownList></ContentTemplate></asp:UpdatePanel></td><td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="cbitem" runat="server" Width="356px" Height="16px"></asp:DropDownList>
                    </ContentTemplate>
                    <Triggers><asp:AsyncPostBackTrigger ControlID="cbproduct" EventName="SelectedIndexChanged" /></Triggers>
                </asp:UpdatePanel>
                </td>
                        <td>
                            <asp:TextBox ID="txqty" runat="server"></asp:TextBox></td>
                        <td>
                <asp:Button ID="btAdd" runat="server" Height="24px" Text="&gt;&gt;&gt;" OnClick="btAdd_Click" />
                    </td></tr></table>
            </td>
        </tr>
          <tr>
            <td colspan="4"><hr style="color:blue" /></td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="grdpo" runat="server" AutoGenerateColumns="False" style="font-size: small" Width="100%" OnRowDeleting="grdpo_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="Code">
                            <ItemTemplate>
                                <asp:Label ID="lbitemcode" runat="server" Text='<%# Eval("item_cd") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Item Name">
                            <ItemTemplate><a href="#"> <%# Eval("item_nm") %></a></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate><%# Eval("qty") %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Unit Price">
                            <ItemTemplate><%# Eval("unitprice") %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Action" ShowCancelButton="False" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
        <td colspan="4" style="text-align:center">
                <asp:Button ID="btsave" runat="server" Text="SAVE" Width="80px" OnClick="btsave_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

