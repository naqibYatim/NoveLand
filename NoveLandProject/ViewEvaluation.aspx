<%@ Page Title="" Language="C#" MasterPageFile="~/NoveLandAdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewEvaluation.aspx.cs" Inherits="NoveLandProject.ViewEvaluation" %>

<%@ Register Src="~/UserControls/ViewEvaluations.ascx" TagPrefix="uc1" TagName="ViewEvaluations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
    <br />

    <p style="font-family:Arial Narrow, sans-serif; font-size:30px;"><b>View user evaluation</b></p>
				
    <br />

    <p style="font-family:Arial Narrow, sans-serif; font-size:20px;"><b>Question that given to user evaluate</b></p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 1: Please describe your profession
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 2: Was the information easy to find?
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 3: Was the information clearly presented?
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 4: Were you able to find what you were looking for?
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 5: What other information should we provide in our website?
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 6: How could we make the site easier to use?
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 7.1: Overall, how would you rate our site? (Accessibility)
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 7.2: Overall, how would you rate our site? (Content)
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 7.3: Overall, how would you rate our site? (Presentation)
    </p>
    <p style="font-family:Arial Narrow, sans-serif; font-size:17px;">
        Question 8: Please enter your email address (optional):
    </p>
    <br>
    <br>
    <p style="font-family:Arial Narrow, sans-serif; font-size:20px;"><b>Responses from user</b></p>
    <br />
    <uc1:ViewEvaluations runat="server" id="ViewEvaluations" />
    


</asp:Content>
