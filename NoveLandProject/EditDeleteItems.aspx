<%@ Page Title="" Language="C#" MasterPageFile="~/NoveLandAdminMaster.Master" AutoEventWireup="true" CodeBehind="EditDeleteItems.aspx.cs" Inherits="NoveLandProject.EditDeleteItems" %>
<%@ Register src="UserControls/EditDeleteItems.ascx" tagname="EditDeleteItems" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:EditDeleteItems ID="EditDeleteItems1" runat="server" />
</asp:Content>
