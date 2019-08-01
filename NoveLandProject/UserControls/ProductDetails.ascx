<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.ascx.cs" Inherits="NoveLandProject.UserControls.ProductDetails" %>

<style>

    table{
        background: #fff;
    }
    table,tbody,tfoot,tr, td{
        text-align: center;
        margin: auto;
        border:1px solid #dedede;
        padding: 1rem;
        width: 70%;
    }
    .table    { display: table; width: 50%; }
    .tr       { display: table-row;  }
    .tbody    { display: table-row-group }
    .tfoot    { display: table-footer-group }
    .col      { display: table-column }
    .colgroup { display: table-column-group }
    .td			  { display: table-cell; width: 50%; }
    .caption  { display: table-caption }

    .table,
    .tbody,
    .tfoot,
    .tr,
    .td{
        text-align: center;
        margin: auto;
        padding: 1rem;
    }
    .table{
        background: #fff;
        margin: auto;
        border:none;
        padding: 0;
        margin-bottom: 1rem;
    }


    .td{
        font-weight: 300;
        border:1px solid #dedede;
        border-top:none;
        &:nth-child(odd){
        border-right:none;
        }
    }

    .aa_htmlTable{
        padding: 5rem;
        display: table;
        width: 100%;
        height: 100vh;
        vertical-align: middle;
    }

</style>

<p style="color:#020f85; font-family:Arial Narrow, sans-serif; font-size:30px; text-align: center;"><b>Product Details</b></p>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [novels] WHERE ([novel_id] = @novel_id)">
    <SelectParameters>
        <asp:QueryStringParameter Name="novel_id" QueryStringField="novel_id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource> 



<asp:DataList ID="DataList1" runat="server" DataKeyField="novel_id" DataSourceID="SqlDataSource1" 
    OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="1395px">
    <ItemTemplate>
        
        <br />
        <br />

        <div style="text-align: center;">
            <asp:Image ID="Image1" runat="server"              
                ImageUrl='<%# "~/Images/CoverBooks/" + Eval("novel_image") %>'              
                Height="400" />
            <br />
            <br />
        </div>

        <asp:Label ID="novel_titleLabel" runat="server" CssClass="novelTitle" Text='<%# Eval("novel_title") %>' />
        <br />
        <br />

        <div style="text-align: justify; width: 70%; padding-left: 142px;">
            <asp:Label ID="novel_descLabel" runat="server" CssClass="novelDesc" Text='<%# Eval("novel_desc") %>' />
        </div>
            
        <asp:Label ID="lblitemid" runat="server" Text='<%# Eval("novel_id") %>' Visible="false" />
        <asp:Label ID="lblitemgenre" runat="server" Text='<%# Eval("genre_id") %>' Visible="false" />
        <asp:Label ID="lblitemtitle" runat="server" Text='<%# Eval("novel_title") %>' Visible="false" />
        <asp:Label ID="lblitemprice" runat="server" Text='<%# Eval("novel_price") %>' Visible="false" />
        <asp:Label ID="lblitemdesc" runat="server" Text='<%# Eval("novel_desc") %>' Visible="false" />
        <asp:Label ID="lblitemimage" runat="server" Text='<%# Eval("novel_image") %>' Visible="false" />
        <asp:Label ID="lblitemisbn" runat="server" Text='<%# Eval("novel_isbn") %>' Visible="false" />
        <asp:Label ID="lblitemauthor" runat="server" Text='<%# Eval("novel_author") %>' Visible="false" />
        <asp:Label ID="lblitempublisher" runat="server" Text='<%# Eval("novel_publisher") %>' Visible="false" />
        <asp:Label ID="lblitempages" runat="server" Text='<%# Eval("novel_pages") %>' Visible="false" />
        <asp:Label ID="lblitemformat" runat="server" Text='<%# Eval("novel_format") %>' Visible="false" />
        <asp:Label ID="lblitemdimensions" runat="server" Text='<%# Eval("novel_dimensions") %>' Visible="false" />
        <asp:Label ID="lblitemnotes" runat="server" Text='<%# Eval("novel_notes") %>' Visible="false" />
            <br />
            <br />
            <br />
            <div class="aa_htmlTable">
              <table>
                <tbody>
                  <tr>
                    <td style="width: 30%">Title</td>
                    <td style="width: 70%; text-align: left;"><%# Eval("novel_title") %></td>
                  </tr>
                  <tr>
                    <td style="width: 30%">Price</td>
                    <td style="width: 70%; text-align: left;">RM <%# Eval("novel_price") %></td>
                  </tr>
                    <td style="width: 30%">ISBN</td>
                    <td style="width: 70%; text-align: left;"><%# Eval("novel_isbn") %></td>
                  </tr>
                    <td style="width: 30%">Author(s)</td>
                    <td style="width: 70%; text-align: left;"><%# Eval("novel_author") %></td>
                  </tr>
                    <td style="width: 30%">Publisher</td>
                    <td style="width: 70%; text-align: left;"><%# Eval("novel_publisher") %></td>
                  </tr>
                    <td style="width: 30%">Pages</td>
                    <td style="width: 70%; text-align: left;"><%# Eval("novel_pages") %></td>
                  </tr>
                    <td style="width: 30%">Format</td>
                    <td style="width: 70%; text-align: left;"><%# Eval("novel_format") %></td>
                  </tr>
                    <td style="width: 30%">Dimensions</td>
                    <td style="width: 70%; text-align: left;"><%# Eval("novel_dimensions") %></td>
                  </tr>
                    <td style="width: 30%">Notes</td>
                    <td style="width: 70%; text-align: left;"><%# Eval("novel_notes") %></td>
                  </tr>
                </tbody>
              </table>
            
        </div>
        
        <p><asp:Button ID="btnPurchase" Text="Add to Cart" runat="server" onclick="btnPurchase_Click" class="buttonDesignProductDetails" Visible ="<%# showField %>" /></p>
       
    </ItemTemplate>
</asp:DataList>

<%--<asp:Label ID="LabelStatus" runat="server" Text='...' />--%>



