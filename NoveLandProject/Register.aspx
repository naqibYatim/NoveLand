<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="NoveLandProject.Register" %>
<%@ Register src="UserControls/Register.ascx" tagname="Register" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="text-align: center;">
        <uc1:Register ID="Register1" runat="server" />
    </div>
    
</asp:Content>
