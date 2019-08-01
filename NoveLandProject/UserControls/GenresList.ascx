<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GenresList.ascx.cs" 
    Inherits="NoveLandProject.UserControls.GenresList" %>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [genres]"></asp:SqlDataSource>

<asp:DataList ID="DataList1" runat="server" DataKeyField="genre_id" 
    DataSourceID="SqlDataSource1" Font-Bold="True" Font-Italic="False" 
    Font-Overline="False" Font-Size="25px" Font-Strikeout="False" 
    Font-Underline="False" HorizontalAlign="Center" RepeatDirection="Horizontal" 
    Font-Names="&quot;Trebuchet MS&quot;,Arial,Helvetica,sans-serif">

    <FooterStyle Font-Bold="False" Font-Italic="False" Font-Names="Algerian" 
        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />

    <ItemTemplate> 
        <asp:HyperLink ID="HyperLink1" class="hyplink"
            Text='<%# Eval("genre_title") %>' runat="server" 
            NavigateUrl='<%# "~/Catalog.aspx?genre_id=" + Eval("genre_id") %>'>
        </asp:HyperLink> 
        <br /> 
    </ItemTemplate>

</asp:DataList>


