<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="fm_po.aspx.cs" Inherits="fm_po" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <link href="css/jquery-ui.css" rel="stylesheet" />
    <script src="css/jquery-1.9.1.js"></script>
    <script src="css/jquery-ui.js"></script>
     <script type="text/javascript">
         $(function () {
             $("#<%=dtpo.ClientID%>").datepicker({ dateFormat: "mm/dd/yy" }).val();
       });

</script>
    
    <style type="text/css">
        .auto-style3 {}
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <table style="width: 100%;">
        <tr>
            <td colspan="3"> <h3 class="auto-style3">PURCHASE ORDER</h3><hr style="color:blue" /></td>
        </tr>
        <tr>
            <td class="auto-style1">Purchase No.</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:TextBox ID="txpono" runat="server" CssClass="auto-style3" Width="253px"></asp:TextBox>
            &nbsp;<span class="auto-style3">* Leave it blank</span></td>
        </tr>
        <tr>
            <td class="auto-style1">Date</td>
            <td class="auto-style3">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="dtpo" runat="server" Width="139px" TextMode="Date" CssClass="auto-style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Type</td>
            <td class="auto-style3">:</td>
            <td class="auto-style8">
                <asp:DropDownList ID="cbtype" runat="server" Height="25px" Width="259px" CssClass="auto-style3">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Ref</td>
            <td class="auto-style1">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txref" runat="server" Width="246px" CssClass="auto-style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Currency</td>
            <td class="auto-style3">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="cbcurrency" runat="server" Height="19px" Width="256px" CssClass="auto-style3">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">vendor</td>
            <td class="auto-style3">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="cbvendor" runat="server" Height="19px" Width="256px" CssClass="auto-style3">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Remark</td>
            <td class="auto-style3">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txremark" runat="server" Width="567px" TextMode="MultiLine" CssClass="auto-style3" Height="24px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3"><hr style="color:blue;width:100%" /></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;Item Selected</td>
            <td class="auto-style3">:</td>
            <td><strong><span class="auto-style3">Select Item to be purchased!</span></strong>
                <table>
                    <tr style="background-color:#808080"><td class="auto-style3">PRODUCT</td><td class="auto-style3">ITEM</td><td class="auto-style3">QTY</td><td class="auto-style3">&nbsp;</td></tr>
                    <tr><td>
                    <asp:UpdatePanel ID="upd2" runat="server">
                        <ContentTemplate>
                <asp:DropDownList ID="cbproduct" runat="server" Height="19px" Width="210px" AutoPostBack="true" OnSelectedIndexChanged="cbproduct_SelectedIndexChanged" CssClass="auto-style3">
                </asp:DropDownList></ContentTemplate></asp:UpdatePanel></td><td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="cbitem" runat="server" Width="356px" Height="16px" CssClass="auto-style3"></asp:DropDownList>
                    </ContentTemplate>
                    <Triggers><asp:AsyncPostBackTrigger ControlID="cbproduct" EventName="SelectedIndexChanged" /></Triggers>
                </asp:UpdatePanel>
                </td>
                        <td>
                            <asp:TextBox ID="txqty" runat="server" CssClass="auto-style3"></asp:TextBox></td>
                        <td>
                <asp:Button ID="btAdd" runat="server" Height="24px" Text="&gt;&gt;&gt;" OnClick="btAdd_Click" CssClass="auto-style3" />
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
        <tr><td colspan="4">
             <table style="text-align:right; width: 273px;width:100%">
        <tr><td style="width:70%"><strong>Sub Total : </strong></td><td style="text-align:left">
            <asp:TextBox ID="txsubtotal" runat="server"></asp:TextBox>
            </td></tr>
        <tr><td>Discount :</td><td style="text-align:left">
            <asp:TextBox ID="txdiscount" runat="server"></asp:TextBox>
            </td></tr>
        <tr><td>Tax :</td><td style="text-align:left">
            <asp:TextBox ID="txtax" runat="server"></asp:TextBox>
            </td></tr>
        <tr><td><strong>Total :</strong></td><td style="text-align:left">
            <asp:TextBox ID="txgrandtotal" runat="server"></asp:TextBox>
            </td></tr>
    </table>
            </td></tr>
        <tr>
        <td colspan="4" style="text-align:center">
                <asp:Button ID="btsave" runat="server" Text="SAVE" Width="80px" OnClick="btsave_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

