<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditDeleteItems.ascx.cs" 
    Inherits="NoveLandProject.UserControls.EditDeleteItems" %>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [novels] WHERE [novel_id] = @novel_id" 
    InsertCommand="INSERT INTO [novels] ([genre_id], [novel_title], [novel_price], [novel_desc], 
    [novel_image], [novel_isbn], [novel_author], [novel_publisher], [novel_pages], [novel_format], 
    [novel_dimensions], [novel_notes], [novel_quantity], [novel_promotion]) 
    VALUES (@genre_id, @novel_title, @novel_price, @novel_desc, @novel_image, @novel_isbn, 
    @novel_author, @novel_publisher, @novel_pages, @novel_format, @novel_dimensions, @novel_notes, 
    @novel_quantity, @novel_promotion)" 
    SelectCommand="SELECT * FROM [novels]" 
    UpdateCommand="UPDATE [novels] SET [genre_id] = @genre_id, [novel_title] = @novel_title, 
    [novel_price] = @novel_price, [novel_desc] = @novel_desc, [novel_image] = @novel_image, 
    [novel_isbn] = @novel_isbn, [novel_author] = @novel_author, [novel_publisher] = @novel_publisher, 
    [novel_pages] = @novel_pages, [novel_format] = @novel_format, [novel_dimensions] = @novel_dimensions, 
    [novel_notes] = @novel_notes, [novel_quantity] = @novel_quantity, 
    [novel_promotion] = @novel_promotion WHERE [novel_id] = @novel_id">

    <DeleteParameters> 
        <asp:Parameter Name="novel_id" Type="Int32" />
    </DeleteParameters>

    <UpdateParameters>
        <asp:Parameter Name="genre_id" Type="Int32" />
        <asp:Parameter Name="novel_title" Type="String" />
        <asp:Parameter Name="novel_price" Type="Double" />
        <asp:Parameter Name="novel_desc" Type="String" />
        <asp:Parameter Name="novel_image" Type="String" />
        <asp:Parameter Name="novel_isbn" Type="String" />
        <asp:Parameter Name="novel_author" Type="String" />
        <asp:Parameter Name="novel_publisher" Type="String" />
        <asp:Parameter Name="novel_pages" Type="Int32" />
        <asp:Parameter Name="novel_format" Type="String" />
        <asp:Parameter Name="novel_dimensions" Type="String" />
        <asp:Parameter Name="novel_notes" Type="String" />
        <asp:Parameter Name="novel_quantity" Type="Int32" />
        <asp:Parameter Name="novel_promotion" Type="Boolean" />
        <asp:Parameter Name="novel_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />

<%-- Style for gridview limit text size --%>

<%--
    
     ControlStyle-CssClass="Shorter"
    
    <style>
    .Grid {
        table-layout:fixed; 
        width:100%; 
    }
    .Grid .Shorter {
        overflow: hidden; 
        text-overflow: ellipsis; 
        white-space: nowrap;        
    }
</style>--%>



        <%--<ControlStyle Width="295px" /> 
        <ItemStyle Width="300px" /> --%>

<%-- Style for gridview limit text size --%>

<asp:GridView ID="GridView1" runat="server" AllowPaging="True"  
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="novel_id"  
    DataSourceID="SqlDataSource1" PageSize="8"> 
    <Columns> 
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" /> 
        <asp:TemplateField HeaderText="No.">
             <ItemTemplate>
                   <%# Container.DataItemIndex + 1 %>
             </ItemTemplate>
         </asp:TemplateField>
        <asp:BoundField DataField="novel_id" HeaderText="Novel Id"  
            InsertVisible="False" ReadOnly="True" SortExpression="novel_id" /> 
        <asp:BoundField DataField="genre_id" HeaderText="Genre Id"  
            SortExpression="genre_id" /> 
        <asp:BoundField DataField="novel_title" HeaderText="Novel Title"  
            SortExpression="novel_title" /> 
        <asp:BoundField DataField="novel_price" DataFormatString="RM {0:n2}"              
            HeaderText="Novel Price" SortExpression="novel_price" /> 
        <asp:BoundField DataField="novel_desc" HeaderText="Novel Description"  
            SortExpression="novel_desc"> 
            <ControlStyle Width="295px" /> 
            <ItemStyle Width="300px" />
        </asp:BoundField> 
        <asp:BoundField DataField="novel_image" HeaderText="Image Filename"  
            SortExpression="novel_image" /> 
        <asp:CheckBoxField DataField="novel_promotion" HeaderText="Promotion"  
            SortExpression="novel_promotion" /> 
        <asp:ImageField DataImageUrlField="novel_image"  
            DataImageUrlFormatString="../Images/CoverBooks/{0}" HeaderText="Image"> 
            <ControlStyle Width="50px" /> 
        </asp:ImageField>  
        <asp:BoundField DataField="novel_isbn" HeaderText="Novel ISBN" SortExpression="novel_isbn" />
        <asp:BoundField DataField="novel_author" HeaderText="Novel Author" SortExpression="novel_author" />
        <asp:BoundField DataField="novel_publisher" HeaderText="Novel Publisher" SortExpression="novel_publisher" />
        <asp:BoundField DataField="novel_pages" HeaderText="Novel Pages" SortExpression="novel_pages" />
        <asp:BoundField DataField="novel_format" HeaderText="Novel Format" SortExpression="novel_format" />
        <asp:BoundField DataField="novel_dimensions" HeaderText="Novel Dimensions" SortExpression="novel_dimensions" />
        <asp:BoundField DataField="novel_notes" HeaderText="Novel Notes" SortExpression="novel_notes" />
        <asp:BoundField DataField="novel_quantity" HeaderText="Novel Quantity" SortExpression="novel_quantity" />
    </Columns> 
</asp:GridView> 






