<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NoveLandProject.Default" %>

<%@ Register Src="~/UserControls/Catalog.ascx" TagPrefix="uc1" TagName="Catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    &nbsp;&nbsp;&nbsp; <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [novels] WHERE ([novel_promotion] = @novel_promotion)">

        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="novel_promotion" Type="Boolean" />
        </SelectParameters>

    </asp:SqlDataSource>

    <uc1:Catalog runat="server" id="Catalog" />

</asp:Content>

 
          
