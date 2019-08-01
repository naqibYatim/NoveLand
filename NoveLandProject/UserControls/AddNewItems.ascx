<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddNewItems.ascx.cs" 
    Inherits="NoveLandProject.UserControls.AddNewItems" %>

<div style="text-align: center; background-color: #dcdefb">

    <p class="updatetitle"><b>Update new stock</b></p>
		
	<p class="updateinfo"> 
	<b>Update new product into database. Fill in the product's information below </b></p>
	
	<br>
	<br>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server"  
        HeaderText="Summary of errors:" ForeColor="Red" /> 


    <div class="boxUpdate">

        <p class="drpdwnstyle">
            <b>&emsp;&emsp;GENRE: </b>
            <asp:DropDownList ID="genredropdown" runat="server" style="font-size: 18px">
                <asp:ListItem Enabled="true" Text="Comedy" Value="1"></asp:ListItem>
                <asp:ListItem Text="Crime" Value="2"></asp:ListItem>
                <asp:ListItem Text="Fantasy" Value="3"></asp:ListItem>
                <asp:ListItem Text="History" Value="4"></asp:ListItem>
                <asp:ListItem Text="Romance" Value="5"></asp:ListItem>
                <asp:ListItem Text="True Story" Value="6"></asp:ListItem>
            </asp:DropDownList>
        </p>

        <p class="paragstyle">
            <b>&emsp;&emsp;&emsp;TITLE: </b>
            <asp:TextBox ID="txtItemTitle" runat="server" class="txtboxstyle" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server"  
                ErrorMessage="You forgot to enter the title" ControlToValidate="txtItemTitle"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator> 

        </p>
        <p class="paragstyle">
            <b>&emsp;&emsp;&emsp;PRICE: </b>
            <asp:TextBox ID="txtItemPrice" runat="server" class="txtboxstyle"  />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server"  
                ErrorMessage="You forgot to enter the price" ControlToValidate="txtItemPrice"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" /> 
        </p>
        <p class="paragstyle">
            <b>DESCRIPTION: </b>
            <asp:TextBox ID="txtItemDesc" runat="server" class="txtboxstyle"  Height="50px"  
                Width="300px" TextMode="MultiLine"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDesc" runat="server"  
                ErrorMessage="You forgot to enter the description" ControlToValidate="txtItemDesc"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
        </p>
        <p class="paragstyle">
            <b>&emsp;&emsp;&emsp;ISBN: </b>
            <asp:TextBox ID="txtItemIsbn" runat="server" class="txtboxstyle" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorIsbn" runat="server"  
                ErrorMessage="You forgot to enter the ISBN" ControlToValidate="txtItemIsbn"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
        </p>
        <p class="paragstyle">
            <b>AUTHOR(S): </b>
            <asp:TextBox ID="txtItemAuthor" runat="server" class="txtboxstyle" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAuthor" runat="server"  
                ErrorMessage="You forgot to enter the author" ControlToValidate="txtItemAuthor"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
        </p>
        <p class="paragstyle">
            <b>PUBLISHER: </b>
            <asp:TextBox ID="txtItemPublisher" runat="server" class="txtboxstyle" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPublisher" runat="server"  
                ErrorMessage="You forgot to enter the publisher" ControlToValidate="txtItemPublisher"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
        </p>
        <p class="paragstyle">
            <b>&emsp;&emsp;PAGES: </b>
            <asp:TextBox ID="txtItemPages" runat="server" class="txtboxstyle" />
            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
                ControlToValidate="txtItemPages" ErrorMessage="Pages must be a whole number" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPages" runat="server"  
                ErrorMessage="You forgot to enter the pages" ControlToValidate="txtItemPages"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
        </p>

        <p class="drpdwnstyle">
            <b>&emsp;&emsp;FORMAT: </b>
            <asp:DropDownList ID="formatdropdown" runat="server" style="font-size: 18px">
                <asp:ListItem Enabled="true" Text="Paperback" Value="Paperback"></asp:ListItem>
                <asp:ListItem Text="Hardback" Value="Hardback"></asp:ListItem>
            </asp:DropDownList>
        </p>

        <p class="paragstyle">
            <b>DIMENSIONS: </b>
            <asp:TextBox ID="txtItemDimensions" runat="server" class="txtboxstyle" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDimensions" runat="server"  
                ErrorMessage="You forgot to enter the dimensions" ControlToValidate="txtItemDimensions"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
         </p>

        <p class="paragstyle">
            <b>&emsp;&emsp;NOTES: </b>
            <asp:TextBox ID="txtItemNotes" runat="server" class="txtboxstyle" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNotes" runat="server"  
                ErrorMessage="You forgot to enter the notes" ControlToValidate="txtItemNotes"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
         </p>

        <p class="paragstyle">
            <b>&emsp;QUANTITY: </b>
            <asp:TextBox ID="txtItemQuantity" runat="server" class="txtboxstyle" />
            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
                ControlToValidate="txtItemQuantity" ErrorMessage="Quantity must be a whole number" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorQuantity" runat="server"  
                ErrorMessage="You forgot to enter the quantity" ControlToValidate="txtItemQuantity"  
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic" > 
            </asp:RequiredFieldValidator>
        </p>

        <p class="paragstyle">
            <b>&emsp;PROMOTION: </b>
            <asp:CheckBox ID="chkItemPromotion" runat="server" Text=" " CssClass="ChkBoxClass"/> 
        </p>

        <p class="paragstyle">
            Image filename:  
            <asp:TextBox ID="txtItemImage" runat="server" Width="200px"> 
            </asp:TextBox> 
            &nbsp;&nbsp;&nbsp;<asp:FileUpLoad id="FileUpload1" runat="server" class="buttondesignfileupload" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="FileUpload1" ErrorMessage="File Required!"
                Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic">
            </asp:RequiredFieldValidator>
        </p>
        <br/>
        <p><asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="btnUpload_Click" 
            class="buttonDesignUpload" />&nbsp; &nbsp; &nbsp; 
        </p>
        <p>

        </p>
            <asp:Label ID="lblStatus" runat="server" Text=" "></asp:Label>
        <p> 
            <asp:Image ID="imgItem" runat="server" Height="150" /> 
        </p> 

    </div>

    <br/>
    <br/>

</div>

<%--<p> 
    Genre Id:  
    <asp:TextBox ID="txtGenreId" runat="server"></asp:TextBox> 
    &nbsp; 
</p> 
<p> 
    Novel title:  
    <asp:TextBox ID="txtItemTitle" runat="server" Width="250px">     </asp:TextBox> 
</p> 
<p> 
    Novel price:  
    <asp:TextBox ID="txtItemPrice" runat="server"></asp:TextBox> 
</p> 
<p> 
    Novel description:  
    <asp:TextBox ID="txtItemDesc" runat="server" Height="50px"  
        Width="300px" TextMode="MultiLine"></asp:TextBox> 
</p> 
<p> 
    Novel ISBN:  
    <asp:TextBox ID="txtItemIsbn" runat="server" Width="200px"></asp:TextBox> 
</p> 
<p> 
    Novel author:  
    <asp:TextBox ID="txtItemAuthor" runat="server" Width="300px"></asp:TextBox> 
</p> 
<p> 
    Novel publisher:  
    <asp:TextBox ID="txtItemPublisher" runat="server" Width="300px"></asp:TextBox> 
</p> 
<p> 
    Novel pages:  
    <asp:TextBox ID="txtItemPages" runat="server" Width="50px"></asp:TextBox> 
</p> 
<p> 
    Novel format:  
    <asp:TextBox ID="txtItemFormat" runat="server" Width="150px"></asp:TextBox> 
</p> 
<p> 
    Novel dimensions:  
    <asp:TextBox ID="txtItemDimensions" runat="server" Width="300px"></asp:TextBox> 
</p> 
<p> 
    Novel notes:  
    <asp:TextBox ID="txtItemNotes" runat="server" Width="300px"></asp:TextBox> 
</p> 
<p> 
    Novel quantity:  
    <asp:TextBox ID="txtItemQuantity" runat="server" Width="50px"></asp:TextBox> 
</p> 
<p> 
    Novel promotion:  
    <asp:CheckBox ID="chkItemPromotion" runat="server" Text=" " /> 
</p> 
<p> 
    Novel image filename:  
    <asp:TextBox ID="txtItemImage" runat="server" Width="200px"> 
    </asp:TextBox> 
    &nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" /> 
</p> 
<p> 
    <asp:Button ID="btnUpload" runat="server" Text="Upload"  
        OnClick="btnUpload_Click" /> &nbsp; &nbsp; &nbsp; 
    <asp:Label ID="lblStatus" runat="server" Text=" "></asp:Label> 
</p> 
<p> 
    <asp:Image ID="imgItem" runat="server" Height="150" /> 
</p>  --%>

