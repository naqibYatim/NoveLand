<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewOrder.ascx.cs" 
    Inherits="NoveLandProject.UserControls.ViewOrder" %>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [orders] WHERE [order_id] = @order_id" InsertCommand="INSERT INTO [orders] ([user_phone], [user_email], [user_address], [pd_id], [pd_genre], [pd_title], [pd_price], [pd_image], [order_quantity], [total_price]) VALUES (@user_phone, @user_email, @user_address, @pd_id, @pd_genre, @pd_title, @pd_price, @pd_image, @order_quantity, @total_price)" SelectCommand="SELECT * FROM [orders]" UpdateCommand="UPDATE [orders] SET [user_phone] = @user_phone, [user_email] = @user_email, [user_address] = @user_address, [pd_id] = @pd_id, [pd_genre] = @pd_genre, [pd_title] = @pd_title, [pd_price] = @pd_price, [pd_image] = @pd_image, [order_quantity] = @order_quantity, [total_price] = @total_price WHERE [order_id] = @order_id">
    <DeleteParameters>
        <asp:Parameter Name="order_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="user_phone" Type="String" />
        <asp:Parameter Name="user_email" Type="String" />
        <asp:Parameter Name="user_address" Type="String" />
        <asp:Parameter Name="pd_id" Type="Int32" />
        <asp:Parameter Name="pd_genre" Type="String" />
        <asp:Parameter Name="pd_title" Type="String" />
        <asp:Parameter Name="pd_price" Type="Double" />
        <asp:Parameter Name="pd_image" Type="String" />
        <asp:Parameter Name="order_quantity" Type="Int32" />
        <asp:Parameter Name="total_price" Type="Double" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="user_phone" Type="String" />
        <asp:Parameter Name="user_email" Type="String" />
        <asp:Parameter Name="user_address" Type="String" />
        <asp:Parameter Name="pd_id" Type="Int32" />
        <asp:Parameter Name="pd_genre" Type="String" />
        <asp:Parameter Name="pd_title" Type="String" />
        <asp:Parameter Name="pd_price" Type="Double" />
        <asp:Parameter Name="pd_image" Type="String" />
        <asp:Parameter Name="order_quantity" Type="Int32" />
        <asp:Parameter Name="total_price" Type="Double" />
        <asp:Parameter Name="order_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="order_id" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
        <asp:BoundField DataField="user_phone" HeaderText="Phone No." SortExpression="user_phone" />
        <asp:BoundField DataField="user_email" HeaderText="Email" SortExpression="user_email" />
        <asp:BoundField DataField="user_address" HeaderText="Address" SortExpression="user_address" />
        <asp:BoundField DataField="pd_id" HeaderText="Product ID" SortExpression="pd_id" />
        <asp:BoundField DataField="pd_genre" HeaderText="Genre" SortExpression="pd_genre" />
        <asp:BoundField DataField="pd_title" HeaderText="Title" SortExpression="pd_title" />
        <asp:BoundField DataField="pd_price" HeaderText="Price" SortExpression="pd_price" />
    </Columns>
</asp:GridView>



