<%@ Page Title="" Language="C#" MasterPageFile="~/MasterNoveLand.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="NoveLandProject.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:label id="cartpar" runat="server" style="color:#020f85; font-weight:bold; font-family:Arial Narrow, sans-serif; font-size:30px;" Text="<b>Cart Item(s)</b>"></asp:label>
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [cart] WHERE [cart_id] = @cart_id" 
        InsertCommand="INSERT INTO [cart] ([item_image], [item_genre], [item_title], [item_price], [item_isbn], [item_author], [item_publisher], [item_quantity]) VALUES (@item_image, @item_genre, @item_title, @item_price, @item_isbn, @item_author, @item_publisher, @item_quantity)" 
        SelectCommand="SELECT [item_image], [item_genre], [item_title], [item_price], [item_isbn], [item_author], [item_publisher], [item_quantity], [cart_id] FROM [cart]" UpdateCommand="UPDATE [cart] SET [item_image] = @item_image, [item_genre] = @item_genre, [item_title] = @item_title, [item_price] = @item_price, [item_isbn] = @item_isbn, [item_author] = @item_author, [item_publisher] = @item_publisher, [item_quantity] = @item_quantity WHERE [cart_id] = @cart_id">
        <DeleteParameters>
            <asp:Parameter Name="cart_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="item_image" Type="String" />
            <asp:Parameter Name="item_genre" Type="String" />
            <asp:Parameter Name="item_title" Type="String" />
            <asp:Parameter Name="item_price" Type="Double" />
            <asp:Parameter Name="item_isbn" Type="String" />
            <asp:Parameter Name="item_author" Type="String" />
            <asp:Parameter Name="item_publisher" Type="String" />
            <asp:Parameter Name="item_quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="item_image" Type="String" />
            <asp:Parameter Name="item_genre" Type="String" />
            <asp:Parameter Name="item_title" Type="String" />
            <asp:Parameter Name="item_price" Type="Double" />
            <asp:Parameter Name="item_isbn" Type="String" />
            <asp:Parameter Name="item_author" Type="String" />
            <asp:Parameter Name="item_publisher" Type="String" />
            <asp:Parameter Name="item_quantity" Type="Int32" />
            <asp:Parameter Name="cart_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
    AutoGenerateRows="False" DataKeyNames="cart_id" DataSourceID="SqlDataSource1" 
    Height="350px" Width="525px" HorizontalAlign="Center" BackColor="#CCCCFF" Visible='<%# showField %>'> 
        
        <Fields> 
            <asp:ImageField DataImageUrlField="item_image" ReadOnly="True" 
                DataImageUrlFormatString="Images/CoverBooks/{0}"> 
                <ControlStyle Height="300px" /> 
            </asp:ImageField> 
            <asp:BoundField DataField="item_genre" HeaderText="Genre"  SortExpression="item_genre" ReadOnly="True"/> 
            <asp:BoundField DataField="item_title" HeaderText="Title" SortExpression="item_title" ReadOnly="True"/> 
            <asp:BoundField DataField="item_isbn" HeaderText="ISBN" SortExpression="item_isbn" ReadOnly="True"/> 
            <asp:BoundField DataField="item_author" HeaderText="Author" SortExpression="item_author" ReadOnly="True"/> 
            <asp:BoundField DataField="item_publisher" HeaderText="Publisher" SortExpression="item_publisher" ReadOnly="True"/> 
            <asp:CommandField ItemStyle-HorizontalAlign="Center" ShowDeleteButton="True" > 
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:CommandField>
        </Fields> 
    </asp:DetailsView> 
    <div style="text-align: center;">
        <p><asp:Button ID="btnConfirm" Text="Confirm" runat="server" onclick="btnConfirm_Click" class="buttonDesignConfirm"/></p>
    </div>
    
    <%--<asp:Label ID="LabelStatus" runat="server" Text='...' />--%>

</asp:Content>
