<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="finalproject.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

  <head><title>LOGIN PAGE</title>
   <style>
       body{
  margin: 0;
  padding: 0;
  font-size: 16px;
  letter-spacing:4px;
  font-family: sans-serif;
   background-image: url("https://cdn5.f-cdn.com/contestentries/1301217/27758306/5acbe9c5814e4_thumb900.jpg"); }

       
.box{
  width: 510px;
  height:410px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background-color:rgba(10,10,10,0.9);
  border-radius: 60px;
  box-shadow: 10px 12px 10px 6px rgba(10,10,50,0.9) ;
  text-align: center; }
.box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500; }
.box input[type = "text"],.box input[type = "password"]{
  border:2;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 4px double #4433dd;
  padding: 12px 14px;
  width: 200px;
  outline: none;
  color: white;
  border-radius: 25px;
  transition: 0.2s; }
.box input[type = "text"]:focus,.box input[type = "password"]:focus{
    color:greenyellow;
  width: 280px;
  border-color: #1bbb55; }
.box input[type = "submit"]{
  border:4px double ;
  background: none;
  display: block;
  margin: 15px auto;
  text-align: center;
  border: 4px double #1bbb55;
  padding: 12px 36px;
  outline: none;
  color: white;
  border-radius: 25px;
  transition: 0.2s;
  cursor: pointer; }
.box input[type = "submit"]:hover{
  background: blue; }
  </style></head>
  <body>
<form class="box" runat="server">
  <h1>Login</h1>
 <asp:TextBox ID="urname" runat="server" placeholder="Email Address"></asp:TextBox>
  <asp:TextBox ID="passwd" runat="server" placeholder="Password"></asp:TextBox>

  <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" placeholder="submit" value="submit" Text="submit"></asp:Button>
    <br />
    <br />

    <asp:HyperLink ID="hyperlink" NavigateUrl="~/registration.aspx" Text="Don't Have an account? SIGN UP HERE" runat="server" />
<br />
    <br />
    <asp:HyperLink ID="hyperlink2" NavigateUrl="~/forgotpassword.aspx" Text="FORGOT PASSWORD? RESET HERE" runat="server" />
    <asp:Label ID="Label4" runat="server" />
</form>
  </body>
</html>