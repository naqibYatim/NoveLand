<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="NoveLandProject.Product" %>

<%@ Register Src="~/UserControls/ProductDetails.ascx" TagPrefix="uc1" TagName="ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:ProductDetails runat="server" id="ProductDetails" />

</asp:Content>
