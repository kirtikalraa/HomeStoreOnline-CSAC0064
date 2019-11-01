<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Nitin2.WebForm1" %>



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
    .auto-style2 {
        width: 358px;
    }
    .auto-style3 {
        width: 395px;
    }
    .auto-style4 {
        width: 408px;
    }
    .auto-style5 {
        height: 814px;
    }
    </style>

</head>
<body>
    <form id="form2" runat="server">
       
         
       
          <div style="font-family: 'Lucida Calligraphy'; color: #000000; font-weight: bolder; background-image: url(Images/imaggee.jpg)" class="auto-style5">
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



              
    <p style="font-size: xx-large; font-family: 'Century Schoolbook'; font-weight: bolder">
              &nbsp;</p>
          
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
          <h3>&nbsp;</h3>
          <h3 style="font-size: xx-large; font-weight: 900;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Right Now There Is No Data In The Inventory</h3>
    </div>    </form>

    