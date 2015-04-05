<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="grp_vendorlist.aspx.cs" Inherits="grp_vendorlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Group Vendor</h2>
    <asp:GridView ID="grd" runat="server" Width="100%" AutoGenerateColumns="False" style="font-size:small;border:none" BorderStyle="None" GridLines="Horizontal">
        <Columns>
            <asp:TemplateField HeaderText="GROUP CODE">
                <ItemTemplate><%# Eval("grp_cd") %></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GROUP NAME">
                <ItemTemplate><%# Eval("grp_nm") %></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OPT 1"></asp:TemplateField>
            <asp:TemplateField HeaderText="OPT 2"></asp:TemplateField>
            <asp:TemplateField HeaderText="ACTIVE">
                <ItemTemplate><%# Eval("isactive") %></ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="ACTION" ShowEditButton="True" />
        </Columns>
        <HeaderStyle BackColor="Silver" />
</asp:GridView><br />
    <div style="align-content:center;text-align:center">
        <asp:Button ID="btadd" runat="server" Text="NEW"  style="border-radius:0" Height="26px" Width="83px" OnClick="btadd_Click"/>
        <asp:Button ID="btprint" runat="server" Text="PRINT"  style="border-radius:0" Height="26px" Width="83px" OnClick="btprint_Click"/></div>
</asp:Content>

