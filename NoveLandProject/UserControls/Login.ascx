<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" 
    Inherits="NoveLandProject.UserControls.Login" %>

<br />
<br />

<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:30px;"><b>Sign in to your account</b></p>
				
<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>Enter email and password to login</b></p>
<br>
<br>
				
<asp:ValidationSummary ID="ValidationSummary1" runat="server"  
        HeaderText="Summary of errors:" ForeColor="Red" />

<div class="boxLogin">
			
	<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>EMAIL</b></p>
	<p><asp:TextBox ID="txtUserName" runat="server" style="padding: 10px 20px;"/>
    <%--Validate email--%>
    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" 
        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ControlToValidate="txtUserName" ErrorMessage="Invalid Email Format"
        Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic">
    </asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server"  
        ErrorMessage="You forgot to enter your email" ControlToValidate="txtUserName"  
        Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
    </asp:RequiredFieldValidator> 
	</p>
    
	<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>PASSWORD</b></p>
	<p><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" style="padding: 10px 20px;"/>
        <%--Validate password--%>
        <asp:RegularExpressionValidator ID="RegExpPass" runat="server"    
            ErrorMessage="Password length must be between 5 to 16 characters"
            ControlToValidate="txtPassword"    
            ValidationExpression="^[a-zA-Z0-9'@&#.\s]{5,16}$" 
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server"  
            ErrorMessage="You forgot to enter your password" ControlToValidate="txtPassword"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
	</p>
			
    <br />
    <br />

	<p><asp:Button ID="btnLogin" Text="Login" runat="server" onclick="btnLogin_Click" class="buttonDesignLogin" /></p>
					
    <p><asp:Label ID="lblStatus" runat="server"></asp:Label></p> 
</div>
<br>
<br>




