<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="NoveLandProject.Catalog" %>
<%@ Register src="UserControls/Catalog.ascx" tagname="Catalog" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [novels] WHERE ([genre_id] = @genre_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="genre_id" QueryStringField="genre_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <uc1:Catalog ID="Catalog1" runat="server" />
    
</asp:Content>
