<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Evaluation.aspx.cs" Inherits="NoveLandProject.Evaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <br />
    <br />

    <p style="text-align:center; color:#020f85; font-family:Arial Narrow, sans-serif; font-size:30px;"><b>User evaluation form</b></p>
				
    <p style="text-align:center; color:#020f85; font-family:Arial Narrow, sans-serif; font-size:20px;"><b>This user evaluation form contains 8 basic questions
        that will gauge your experience while navigating to our website. The evaluation focuses on accessibility, content and presentation.</b></p>
    <br>
    <br>
    <hr />
    <br />
    <br />
    <div style="padding-left: 15px;">

        <p><b>1. Please describe your profession</b></p>
        <p><asp:TextBox ID="txtProfession" runat="server" Width="221px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorProfession" runat="server"  
            ErrorMessage="You forgot to enter your profession" ControlToValidate="txtProfession"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
	    </p>
        <br />
        <hr />
        <br />
        <p><b>2. Was the information easy to find?</b></p>
        <p>
            <asp:RadioButtonList ID="RadioButtonListEasyToFind" runat="server" AutoPostBack="False"          
                onselectedindexchanged="RadioButtonListEasyToFind_SelectedIndexChanged" RepeatColumns="2"> 
                <asp:ListItem Value="yes">Yes</asp:ListItem> 
                <asp:ListItem Value="no">No</asp:ListItem>      
            </asp:RadioButtonList> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEasyToFind" runat="server"  
                ErrorMessage="You forgot to choose answer for this question" ControlToValidate="RadioButtonListEasyToFind"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
	    </p>
        <br />
        <p><b>3. Was the information clearly presented?</b></p>
        <p>
            <asp:RadioButtonList ID="RadioButtonListClearlyPresented" runat="server" AutoPostBack="False"          
                onselectedindexchanged="RadioButtonListClearlyPresented_SelectedIndexChanged" RepeatColumns="2"> 
                <asp:ListItem Value="yes">Yes</asp:ListItem> 
                <asp:ListItem Value="no">No</asp:ListItem>      
            </asp:RadioButtonList> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorClearlyPresented" runat="server"  
                ErrorMessage="You forgot to choose answer for this question" ControlToValidate="RadioButtonListClearlyPresented"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
	    </p>
        <br />
        <p><b>4. Were you able to find what you were looking for?</b></p>
        <p>
            <asp:RadioButtonList ID="RadioButtonListAbleToFind" runat="server" AutoPostBack="False"          
                onselectedindexchanged="RadioButtonListAbleToFind_SelectedIndexChanged" RepeatColumns="2"> 
                <asp:ListItem Value="yes">Yes</asp:ListItem> 
                <asp:ListItem Value="no">No</asp:ListItem>      
            </asp:RadioButtonList> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAbleToFind" runat="server"  
                ErrorMessage="You forgot to choose answer for this question" ControlToValidate="RadioButtonListAbleToFind"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
	    </p>
        <br />
        <hr />
        <br />
        <p><b>5. What other information should we provide in our website?</b></p>
        <p><asp:TextBox ID="txtOtherInformation" runat="server" TextMode="MultiLine" Height="103px" Width="389px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorOtherInformation" runat="server"  
            ErrorMessage="You need to fill this field" ControlToValidate="txtOtherInformation"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
	    </p>
        <br />
        <p><b>6. How could we make the site easier to use?</b></p>
        <p><asp:TextBox ID="txtEasierToUse" runat="server" TextMode="MultiLine" Height="103px" Width="389px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEasierToUse" runat="server"  
            ErrorMessage="You need to fill this field" ControlToValidate="txtEasierToUse"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
	    </p>
        <br />
        <hr />
        <br />
        
        <p><b>7. Overall, how would you rate our site?</b></p>
        <br />
        <p>-Accessibility</p>
        <p>
            <asp:RadioButtonList ID="RadioButtonListAccessibility" runat="server" AutoPostBack="False"          
                onselectedindexchanged="RadioButtonListAccessibility_SelectedIndexChanged" RepeatColumns="5"> 
                <asp:ListItem Value="great">Great</asp:ListItem> 
                <asp:ListItem Value="good">Good</asp:ListItem>     
                <asp:ListItem Value="average">Average</asp:ListItem>      
                <asp:ListItem Value="fair">Fair</asp:ListItem>      
                <asp:ListItem Value="poor">Poor</asp:ListItem>       
            </asp:RadioButtonList> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorAccessibility" runat="server"  
            ErrorMessage="You forgot to choose answer for this question" ControlToValidate="RadioButtonListAccessibility"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
	    </p>
        <br />
        <p>-Content</p>
        <p>
            <asp:RadioButtonList ID="RadioButtonListContent" runat="server" AutoPostBack="False"          
                onselectedindexchanged="RadioButtonListContent_SelectedIndexChanged" RepeatColumns="5"> 
                <asp:ListItem Value="great">Great</asp:ListItem> 
                <asp:ListItem Value="good">Good</asp:ListItem>     
                <asp:ListItem Value="average">Average</asp:ListItem>      
                <asp:ListItem Value="fair">Fair</asp:ListItem>      
                <asp:ListItem Value="poor">Poor</asp:ListItem>    
            </asp:RadioButtonList> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorContent" runat="server"  
            ErrorMessage="You forgot to choose answer for this question" ControlToValidate="RadioButtonListContent"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
	    </p>
        <br />
        <p>-Presentation</p>
        <p>
            <asp:RadioButtonList ID="RadioButtonListPresentation" runat="server" AutoPostBack="False"          
                onselectedindexchanged="RadioButtonListPresentation_SelectedIndexChanged" RepeatColumns="5"> 
                <asp:ListItem Value="great">Great</asp:ListItem> 
                <asp:ListItem Value="good">Good</asp:ListItem>     
                <asp:ListItem Value="average">Average</asp:ListItem>      
                <asp:ListItem Value="fair">Fair</asp:ListItem>      
                <asp:ListItem Value="poor">Poor</asp:ListItem>     
            </asp:RadioButtonList> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorPresentation" runat="server"  
            ErrorMessage="You forgot to choose answer for this question" ControlToValidate="RadioButtonListPresentation"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
	    </p>
        <br />
        <hr />
        <br />
        <p><b>8. Please enter your email address (optional):</b></p>
        <p><asp:TextBox ID="txtEmail" runat="server" Width="221px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"  
            ErrorMessage="You forgot to enter your email" ControlToValidate="txtEmail"  
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
        </asp:RequiredFieldValidator> 
        <%--Validate email--%>
        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" 
            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format"
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic">
        </asp:RegularExpressionValidator>
	    </p>
        <br />
        <br />
        <p><asp:Button ID="btnSubmit" Text="Submit" runat="server" onclick="btnSubmit_Click" class="buttonDesignEvaluation" /></p>
	    <br />
        <p><asp:Label ID="lblStatus" runat="server"></asp:Label></p> 


    </div>
    

</asp:Content>
