<%@ Page Title="" Language="C#" MasterPageFile="~/NoveLandAdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="NoveLandProject.ViewOrder" %>

<%@ Register Src="~/UserControls/ViewOrder.ascx" TagPrefix="uc1" TagName="ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ViewOrder runat="server" ID="ViewOrder" />
</asp:Content>
