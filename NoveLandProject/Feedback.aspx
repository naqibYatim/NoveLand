<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="NoveLandProject.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <p style="text-align:center; color:#020f85; font-family:Arial Narrow, sans-serif; font-size:30px;"><b>Send us your feedback</b></p>
    <br />
    <br />

    <div class="boxFeedback">
			
	    <p style="text-align:center; color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>Your Email</b></p>
	    
        <p><asp:TextBox ID="txtEmail" runat="server" style="padding: 10px 20px; text-align:center;"/><br />
        <%--Validate email--%>
        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" 
            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format. "
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic">
        </asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"  
            ErrorMessage="You forgot to enter your email" ControlToValidate="txtEmail"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
	    </p>

        <p style="text-align:center; color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>Password</b></p>
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
    
	    <p style="text-align:center; color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>Subject</b></p>
	    <p><asp:TextBox ID="txtSubject" runat="server" style="padding: 10px 20px; text-align:center;"/><br />
            <%--Validate subject--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubject" runat="server"  
                ErrorMessage="You forgot to enter subject" ControlToValidate="txtSubject"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator> 
	    </p>
    
	    <p style="text-align:center; color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>Comment</b></p>
	    <p><asp:TextBox ID="txtComment" runat="server" style="padding: 10px 20px; text-align:center;" TextMode="MultiLine" Rows="5"/><br />
            <%--Validate comment--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorComment" runat="server"  
                ErrorMessage="You forgot to enter your comment" ControlToValidate="txtComment"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator> 
	    </p>
			
        <br />
        <br />

	    <p><asp:Button ID="btnSend" Text="Send Feedback" runat="server" onclick="btnSend_Click" class="buttonDesignFeedback" /></p>
					
        <p><asp:Label ID="lblStatus" runat="server"></asp:Label></p> 
    </div>
    <br>
    <br>


</asp:Content>
