<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Catalog.ascx.cs" 
    Inherits="NoveLandProject.UserControls.Catalog" %>


<asp:ListView ID="ListView1" runat="server" DataKeyNames="novel_id" DataSourceID="SqlDataSource1" 
    GroupItemCount="5">
    
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: 
            collapse;border-color: #999999;border-style:none;border-width:1px;width:100%">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>

    <EmptyItemTemplate>
        <td runat="server" />
    </EmptyItemTemplate>

    <GroupTemplate>
        <tr id="itemPlaceholderContainer" runat="server">
            <td id="itemPlaceholder" runat="server"></td>
        </tr>
    </GroupTemplate>
    
    <ItemTemplate>
        <td runat="server" style="text-align: center; background-color: #eaf1ff;color: #333333;">
            
             <p><asp:HyperLink ID="HyperLink1" CssClass="hyprlink"              
                 Text='<%# Eval("novel_title") %>'              
                 runat="server"              
                 NavigateUrl='<%# "~/Product.aspx?novel_id="                      
                        + Eval("novel_id") %>'></asp:HyperLink></p> 
            
            <asp:Image ID="Image1" runat="server"              
                ImageUrl='<%# "~/Images/CoverBooks/" + Eval("novel_image") %>'              
                Height="150" />         

            <br />
            <asp:Label ID="lblPrice" runat="server"              
                Text='<%# Eval("novel_price", "RM {0:n2}") %>'></asp:Label>     
            <br /><br /><br />


        </td>
    </ItemTemplate>

    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr id="groupPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #66a6ff;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="10">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    
</asp:ListView>

