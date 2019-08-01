<%@ Page Title="" Language="C#" MasterPageFile="~/NoveLandAdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAccount.aspx.cs" Inherits="NoveLandProject.AdminAccount" %>
<%@ Register src="UserControls/AdminAccount.ascx" tagname="AdminAccount" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AdminAccount ID="AdminAccount1" runat="server" />
</asp:Content>
