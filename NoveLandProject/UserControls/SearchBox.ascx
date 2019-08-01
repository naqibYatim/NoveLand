<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchBox.ascx.cs" 
    Inherits="NoveLandProject.UserControls.SearchBox" %>

<p> 

    <asp:TextBox ID="txtSearch" runat="server" Style="padding: 9px 20px; width: 160px;" 
        placeholder="Enter keywords here..."></asp:TextBox>
    &nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" class="buttonDesignSearch" 
        OnClick="btnSearch_Click" /> 
</p> 

