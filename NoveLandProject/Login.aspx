<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NoveLandProject.Login" %>
<%@ Register src="UserControls/Login.ascx" tagname="Login" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="text-align: center;">
        <uc1:Login ID="Login1" runat="server" />
    </div>
    
</asp:Content>
