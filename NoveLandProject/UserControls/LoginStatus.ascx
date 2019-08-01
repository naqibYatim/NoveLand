<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginStatus.ascx.cs" 
    Inherits="NoveLandProject.UserControls.LoginStatus" %>
 
<p> 
    <asp:HyperLink ID="HyperLinkLogin" runat="server" class="hyplink"
        NavigateUrl="~/Login.aspx"><b>Login</b> 
    </asp:HyperLink> 
    &nbsp;&nbsp; 
    <asp:HyperLink ID="HyperLinkRegister" runat="server" class="hyplink" 
        NavigateUrl="~/Register.aspx"><b>Register</b> 
    </asp:HyperLink> 
    <asp:Button ID="btnLogout" runat="server" Text="Logout" class="buttonDesignLogout" 
        OnClick="btnLogout_Click" /> 
</p> 

