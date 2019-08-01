<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="NoveLandProject.Search" %>

<%@ Register Src="~/UserControls/Catalog.ascx" TagPrefix="uc1" TagName="Catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [novels] WHERE ([novel_title] LIKE '%' + @novel_title + '%')">
        <SelectParameters>
            <asp:QueryStringParameter Name="novel_title" QueryStringField="search" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <uc1:Catalog runat="server" ID="Catalog" />

</asp:Content>
