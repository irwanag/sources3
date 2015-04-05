<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="fm_mstitemlist.aspx.cs" Inherits="fm_mstitemlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Master Item List</h3>
    <div>

        <asp:GridView ID="grd" runat="server" AutoGenerateColumns="False" style="font-size: small">
            <Columns>
                <asp:TemplateField HeaderText="ITEM CODE"></asp:TemplateField>
                <asp:TemplateField HeaderText="ITEM NAME"></asp:TemplateField>
                <asp:TemplateField HeaderText="DESC"></asp:TemplateField>
                <asp:TemplateField HeaderText="ITEM TYPE"></asp:TemplateField>
                <asp:TemplateField HeaderText="SALES TAX OPT"></asp:TemplateField>
                <asp:TemplateField HeaderText="SALES TAX"></asp:TemplateField>
                <asp:TemplateField HeaderText="INVOICE WITH TAX"></asp:TemplateField>
                <asp:TemplateField HeaderText="PURCHASE TAX OPT"></asp:TemplateField>
                <asp:TemplateField HeaderText="PURCHASE TAX"></asp:TemplateField>
                <asp:TemplateField HeaderText="PAYMENT TERM"></asp:TemplateField>
                <asp:TemplateField HeaderText="ITEM CODE VENDOR"></asp:TemplateField>
                <asp:TemplateField HeaderText="VENDOR CODE"></asp:TemplateField>
                <asp:CommandField HeaderText="ACTION" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <div style="text-align: center">
        <asp:Button ID="btadd" runat="server" Text="NEW ITEM" OnClick="btadd_Click" /></div>
</asp:Content>

