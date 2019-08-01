<%@ Page Title="" Language="C#" MasterPageFile="~/NoveLandAdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewItems.aspx.cs" Inherits="NoveLandProject.AddNewItems" %>
<%@ Register src="UserControls/AddNewItems.ascx" tagname="AddNewItems" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AddNewItems ID="AddNewItems1" runat="server" />
</asp:Content>
