<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Register.ascx.cs" 
    Inherits="NoveLandProject.UserControls.Register" %>


<br>
<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:30px;">
    <b>Create a New Account</b></p>
				
<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;">
<b>Come join the NoveLand community! Let's set up your account.</b></p>
				
<br>
<br>

<asp:ValidationSummary ID="ValidationSummary1" runat="server"  
        HeaderText="Summary of errors:" ForeColor="Red" />
				
<div class="boxSignUp"> 
					
	<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>&emsp;&emsp; 
        EMAIL: </b><asp:TextBox ID="txtUserName" runat="server" style="padding: 10px 20px;"/>
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
					
	<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>PASSWORD: </b>
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" style="padding: 10px 20px;"/>
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
					
	<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>&emsp;&emsp;
        PHONE: </b><asp:TextBox ID="txtPhone" runat="server" style="padding: 10px 20px;"/>
    <%--Validate phone--%>
    <asp:RegularExpressionValidator ID="RegExpPhone" runat="server"    
        ErrorMessage="Error length of phone number"
        ControlToValidate="txtPhone"    
        ValidationExpression="^[0-9]{7,10}$"
        Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server"  
        ErrorMessage="You forgot to enter your phone number" ControlToValidate="txtPhone"  
        Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
    </asp:RequiredFieldValidator> 
    </p>
					
	<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>&emsp;
        ADDRESS: </b><asp:TextBox ID="txtAddress" runat="server" style="padding: 10px 20px;"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server"  
        ErrorMessage="You forgot to enter your phone number" ControlToValidate="txtAddress"  
        Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
    </asp:RequiredFieldValidator> 
	</p>
			
    
    <label style="color:#020f85; font-family:Arial Narrow, sans-serif; 
        font-size:20px;">

        <asp:RadioButtonList ID="radioGender" runat="server" RepeatLayout="Flow">
            <asp:ListItem Value="Male">MALE&emsp;</asp:ListItem>
            <asp:ListItem Value="Female">FEMALE</asp:ListItem>
        </asp:RadioButtonList>

        <span class="checkmark"></span>
    </label>

					
	<p><asp:Button ID="btnRegister" Text="Register" runat="server" onclick="btnRegister_Click" 
        class="buttonDesignSignUp" /></p>
					
</div>		
<br>
<br>


