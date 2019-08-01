<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminAccount.ascx.cs" 
    Inherits="NoveLandProject.UserControls.AdminAccount" %>

<p> 
    Email: &nbsp;&nbsp; 
    <asp:TextBox ID="txtSearch" runat="server">
    </asp:TextBox> 
    &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" /> 
</p> 
<asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            </td>
            <td>
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            </td>
            <td>
                <asp:Label ID="passwordhashLabel" runat="server" Text='<%# Eval("passwordhash") %>' />
            </td>
            <td>
                <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("role") %>' />
            </td>
            <td>
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
            </td>
            <td>
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            </td>
            <td>
                <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            </td>
            <td>
                <asp:CheckBox ID="enabledCheckBox" runat="server" Checked='<%# Eval("enabled") %>' Enabled="false" />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            </td>
            <td>
                <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            </td>
            <td>
                <asp:TextBox ID="passwordhashTextBox" runat="server" Text='<%# Bind("passwordhash") %>' />
            </td>
            <td>
                <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            </td>
            <td>
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
            </td>
            <td>
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            </td>
            <td>
                <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            </td>
            <td>
                <asp:CheckBox ID="enabledCheckBox" runat="server" Checked='<%# Bind("enabled") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>Enter user email</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            </td>
            <td>
                <asp:TextBox ID="passwordhashTextBox" runat="server" Text='<%# Bind("passwordhash") %>' />
            </td>
            <td>
                <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            </td>
            <td>
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
            </td>
            <td>
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            </td>
            <td>
                <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            </td>
            <td>
                <asp:CheckBox ID="enabledCheckBox" runat="server" Checked='<%# Bind("enabled") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            </td>
            <td>
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            </td>
            <td>
                <asp:Label ID="passwordhashLabel" runat="server" Text='<%# Eval("passwordhash") %>' />
            </td>
            <td>
                <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("role") %>' />
            </td>
            <td>
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
            </td>
            <td>
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            </td>
            <td>
                <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            </td>
            <td>
                <asp:CheckBox ID="enabledCheckBox" runat="server" Checked='<%# Eval("enabled") %>' Enabled="false" />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server"></th>
                            <th runat="server">id</th>
                            <th runat="server">username</th>
                            <th runat="server">passwordhash</th>
                            <th runat="server">role</th>
                            <th runat="server">phone</th>
                            <th runat="server">address</th>
                            <th runat="server">gender</th>
                            <th runat="server">enabled</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            </td>
            <td>
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            </td>
            <td>
                <asp:Label ID="passwordhashLabel" runat="server" Text='<%# Eval("passwordhash") %>' />
            </td>
            <td>
                <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("role") %>' />
            </td>
            <td>
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
            </td>
            <td>
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            </td>
            <td>
                <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            </td>
            <td>
                <asp:CheckBox ID="enabledCheckBox" runat="server" Checked='<%# Eval("enabled") %>' Enabled="false" />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [user_reg] WHERE [id] = @id" 
    InsertCommand="INSERT INTO [user_reg] ([username], [passwordhash], [role], [phone], [address], [gender], [enabled]) 
    VALUES (@username, @passwordhash, @role, @phone, @address, @gender, @enabled)" 
    SelectCommand="SELECT * FROM [user_reg] WHERE ([username] = @username)" 
    UpdateCommand="UPDATE [user_reg] SET [username] = @username, [passwordhash] = @passwordhash, 
    [role] = @role, [phone] = @phone, [address] = @address, [gender] = @gender, 
    [enabled] = @enabled WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="passwordhash" Type="String" />
        <asp:Parameter Name="role" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="enabled" Type="Boolean" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="txtSearch" Name="username" PropertyName="Text" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="passwordhash" Type="String" />
        <asp:Parameter Name="role" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="enabled" Type="Boolean" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />

