<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="categorylist.aspx.cs" Inherits="kirti.categorylist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
    body {
        background-image: url("background.jpg");
        background-color: #cccccc;
        height: 200px;
    }
ul {
    list-style-type:none;
    margin:0;
    padding:0;
    position: absolute;
}
/*Create a horizontal list with spacing*/
li {
    display:inline-block;
    float: left;
    margin-right: 10px;
}
/*Style for menu links*/
li a {
    display:block;
    min-width:140px;
    height: 50px;
    text-align: center;
    line-height: 50px;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    color: #fff;
    background: #2f3036;
    text-decoration: none;
}
/*Hover state for top level links*/
li:hover a {
    background: #19c589;
}
/*Style for dropdown links*/
li:hover ul a {
    background: #f3f3f3;
    color: #2f3036;
    height: 40px;
    line-height: 40px;
}
/*Hover state for dropdown links*/
li:hover ul a:hover {
    background: #19c589;
    color: #fff;
}
/*Hide dropdown links until they are needed*/
li ul {
    display: none;
}
/*Make dropdown links vertical*/
li ul li {
    display: block;
    float: none;
}
/*Prevent text wrapping*/
li ul li a {
    width: auto;
    min-width: 100px;
    padding: 0 20px;
}
/*Display the dropdown on hover*/
ul li a:hover + .hidden, .hidden:hover {
    display: block;
}
/*Style 'show menu' label button and hide it by default*/
.show-menu {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    text-decoration: none;
    color: #fff;
    background: #19c589;
    text-align: center;
    padding: 10px 0;
    display: none;
}
/*Hide checkbox*/
input[type=checkbox]{
    display: none;
}
/*Show menu when invisible checkbox is checked*/
input[type=checkbox]:checked ~ #menu{
    display: block;
}
/*Responsive Styles*/
@media screen and (max-width : 760px){
    /*Make dropdown links appear inline*/
    ul {
        position: static;
        display: none;
    }
    /*Create vertical spacing*/
    li {
        margin-bottom: 1px;
    }
    /*Make all menu links full width*/
    ul li, li a {
        width: 100%;
    }
    /*Display 'show menu' link*/
    .show-menu {
        display:block;
    }
}
    .auto-style1 {
        margin-left: 1120px;
    }
    .auto-style2 {
        width: 358px;
    }
    .auto-style3 {
        width: 395px;
    }
    .auto-style4 {
        width: 408px;
    }
    </style>

</head>
<body>
    <form id="form2" runat="server">
       
         
       
          <div style="font-family: 'Lucida Calligraphy'; color: #000000; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Homestore Online" Font-Names="Lucida Calligraphy" ForeColor="#003300"></asp:Label>
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label for="show-menu" class="show-menu">&#9776;</label>
    <input type="checkbox" id="show-menu" role="button"/>
        <ul id="menu">
        <li class="auto-style4"><a href="Mainpage.aspx">HOME</a></li>
        <li>
            <a href="#" class="auto-style3">PRODUCT ￬</a>
            <ul class="hidden">
                <li><a href="#">Add product</a></li>
                <li><a href="#">Edit Product</a></li>
            </ul>
        </li>
        <li>
            <a href="categorylist.aspx" class="auto-style2">CATEGORY ￬</a>
            <ul class="hidden">
                <li><a href="#">Add category</a></li>
                <li><a href="#">Edit category</a></li>
            </ul>
        </li>
      
    </ul>



              </div>
              <p>
                  &nbsp;</p>
              <p style="font-size: xx-large; font-family: 'Century Schoolbook'; font-weight: bolder">
              <asp:Button ID="Button1" runat="server" CssClass="auto-style1" Text="Add Category" Width="230px" PostBackUrl="~/addd.aspx" OnClick="Button1_Click" />
              </p>
          <p style="font-size: xx-large; font-family: 'Century Schoolbook'; font-weight: bolder">
              CATEGORY LIST</p>
    <p style="font-size: xx-large; font-family: 'Century Schoolbook'; font-weight: bolder">
              &nbsp;</p>
          
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [editcategory]"></asp:SqlDataSource>
          <br />
          <br />
          
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Category ID" ForeColor="Black" GridLines="Vertical" Height="197px"  Width="1533px" ShowHeaderWhenEmpty="True" ShowFooter="True" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <FooterStyle BackColor="#CCCCCC" />
              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#808080" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#383838" />
             
                  
               <Columns>
                  <asp:TemplateField HeaderText="CategoryName">
                      <ItemTemplate>
                          <asp:Label Text='<%#Eval("CategoryName") %>' runat="server" />

                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtCategoryName" Text='<% Eval("CategoryName") %>' runat="server" />

                      </EditItemTemplate>
                      <FooterTemplate> <asp:TextBox ID="txtCategoryNamefooter" runat="server" /></FooterTemplate>
                  </asp:TemplateField>
                 <asp:TemplateField HeaderText="CategoryID">
                      <ItemTemplate>
                          <asp:Label Text='<%#Eval("CategoryID") %>' runat="server" />

                      </ItemTemplate>
                      <EditItemTemplate>
                          <asp:TextBox ID="txtCategoryID" Text='<% Eval("CategoryID") %>' runat="server" />

                      </EditItemTemplate>
                      <FooterTemplate> <asp:TextBox ID="txtCategoryIDfooter" runat="server" /></FooterTemplate>
                     </asp:TemplateField>
                   <asp:TemplateField>
                       <ItemTemplate>
                           <asp:ImageButton ImageUrl="~/IMAGES/edit.jpg" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                           <asp:ImageButton ImageUrl="~/IMAGES/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:ImageButton ImageUrl="~/IMAGES/save.ico" runat="server" CommandName="Save" ToolTip="Update" Width="20px" Height="20px" />
                            </EditItemTemplate>
                       <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/IMAGES/add_plus_new_user_green_page_file_up_text-512.png" runat="server" CommandName="AddNew" ToolTip="AddNew" Width="20px" Height="20px" />
                       </FooterTemplate>
                   </asp:TemplateField>
              </Columns>
          </asp:GridView>
        <br />
         <asp:Label ID="lblsuccessmessage" Text="" runat="server" ForeColor="Green" />
        <br />
        <asp:Label ID="lblerrormessage" Text="" runat="server" ForeColor="red" />
         
          </form>
    <p>
        &nbsp;</p>
    </body>
    </html>