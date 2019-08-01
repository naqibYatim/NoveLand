<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewEvaluations.ascx.cs" Inherits="NoveLandProject.UserControls.ViewEvaluation" %>



<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [evaluation] WHERE [evalId] = @evalId" InsertCommand="INSERT INTO [evaluation] ([q1], [q2], [q3], [q4], [q5], [q6], [q7p1], [q7p2], [q7p3], [q8]) VALUES (@q1, @q2, @q3, @q4, @q5, @q6, @q7p1, @q7p2, @q7p3, @q8)" SelectCommand="SELECT * FROM [evaluation]" UpdateCommand="UPDATE [evaluation] SET [q1] = @q1, [q2] = @q2, [q3] = @q3, [q4] = @q4, [q5] = @q5, [q6] = @q6, [q7p1] = @q7p1, [q7p2] = @q7p2, [q7p3] = @q7p3, [q8] = @q8 WHERE [evalId] = @evalId">
    <DeleteParameters>
        <asp:Parameter Name="evalId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="q1" Type="String" />
        <asp:Parameter Name="q2" Type="String" />
        <asp:Parameter Name="q3" Type="String" />
        <asp:Parameter Name="q4" Type="String" />
        <asp:Parameter Name="q5" Type="String" />
        <asp:Parameter Name="q6" Type="String" />
        <asp:Parameter Name="q7p1" Type="String" />
        <asp:Parameter Name="q7p2" Type="String" />
        <asp:Parameter Name="q7p3" Type="String" />
        <asp:Parameter Name="q8" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="q1" Type="String" />
        <asp:Parameter Name="q2" Type="String" />
        <asp:Parameter Name="q3" Type="String" />
        <asp:Parameter Name="q4" Type="String" />
        <asp:Parameter Name="q5" Type="String" />
        <asp:Parameter Name="q6" Type="String" />
        <asp:Parameter Name="q7p1" Type="String" />
        <asp:Parameter Name="q7p2" Type="String" />
        <asp:Parameter Name="q7p3" Type="String" />
        <asp:Parameter Name="q8" Type="String" />
        <asp:Parameter Name="evalId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="evalId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="evalId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="evalId" />
        <asp:BoundField DataField="q1" HeaderText="Question 1" SortExpression="q1" />
        <asp:BoundField DataField="q2" HeaderText="Question 2" SortExpression="q2" />
        <asp:BoundField DataField="q3" HeaderText="Question 3" SortExpression="q3" />
        <asp:BoundField DataField="q4" HeaderText="Question 4" SortExpression="q4" />
        <asp:BoundField DataField="q5" HeaderText="Question 5" SortExpression="q5" />
        <asp:BoundField DataField="q6" HeaderText="Question 6" SortExpression="q6" />
        <asp:BoundField DataField="q7p1" HeaderText="Question 7.1" SortExpression="q7p1" />
        <asp:BoundField DataField="q7p2" HeaderText="Question 7.2" SortExpression="q7p2" />
        <asp:BoundField DataField="q7p3" HeaderText="Question 7.3" SortExpression="q7p3" />
        <asp:BoundField DataField="q8" HeaderText="Question 8" SortExpression="q8" />
    </Columns>
</asp:GridView>
 



