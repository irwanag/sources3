<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="vendor_list.aspx.cs" Inherits="vendor_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Vendor List</h2>
    <asp:GridView ID="grd" runat="server" Width="100%"></asp:GridView>
    <div>
        <asp:Button ID="btadd" runat="server" Text="NEW" OnClick="btadd_Click" /></div>
</asp:Content>

