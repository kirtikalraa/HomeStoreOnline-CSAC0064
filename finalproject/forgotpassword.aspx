<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="finalproject.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Rating Reminder</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
<style>
body {
  background: #2A2B31;
  font: 16px 'Helvetica Neue', Helvetica, sans-serif;
  -webkit-font-smoothing: antialiased;
}

// --- PANEL ---

.panel {
  background: #35363C;
  margin: 40px auto;
  width: 300px;
  border: 1px solid #46464C;
  border-radius: 3px;
  padding: 40px;
  box-shadow: 1px 3px #26272C;
}

.panel__avatar {
  background: #fff;
  border: 8px solid #46393D;
  width: 100px;
  height: 100px;
  border-radius: 50%;
  margin: 0 auto 40px;
  display: block;
}

// --- INPUTS ---

.inputs__item {
  padding-bottom: 40px;
}

.inputs__label {
  color: #A64C41;
  display: block;
}

.inputs__input {
  border: none;
  border-bottom: 1px solid #6B6C70;
  background: #35363C;
  display: block;
  width: 100%;
  padding: 10px 0;
  font: 16px 'Helvetica Neue', Helvetica, sans-serif;
  color: #A64C41;
  
  &:focus {
    outline: none;
  }
}

.inputs__item--new {
  .inputs__label, 
  .inputs__input {
    color: #6498BB;
  }
}

.inputs__item--cta {
  text-align: center;
  padding-bottom: 0;
  padding-top: 20px;
}

// --- BTN ---

.btn {
  border: none;
  background: #A64C41;
  color: #C8BDA0;
  font-size: 20px;
  border-radius: 3px;
  padding: 12px 50px;
  cursor: pointer;
}
        .auto-style1 {
            background: #fff;
            border: 8px solid #46393D;
            width: 266px;
            height: 220px;
            border-radius: 50%;
            margin: 0 auto 40px;
            display: block;
        }
        .auto-style2 {
            margin-left: 274px;
        }
        .auto-style3 {
            margin-left: 362px;
        }
        .auto-style4 {
            margin-left: 24px;
        }
    .auto-style5 {
        margin-left: 2px;
    }
</style></head>
    <body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11/3/jquery.min.js"></script>
        <script src="js/bootstarp.min.js">

        </script>
  <img class="auto-style1" src="http://icons.iconarchive.com/icons/jonathan-rey/simpsons/256/Bart-Simpson-01-icon.png" alt="avatar" />
  <form id="Form2" runat="server" class="inputs">
    <div class="inputs__item">
        <asp:Label ID="oldpassword" Text="PREVIOUS PASSWORD" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" ForeColor="#FF0066" />
        <asp:TextBox ID="textbox1" placeholder="Enter old password" runat="server" TextMode="Password"  CssClass="auto-style2" Height="51px" Width="500px" />
        <br />
        <br />
        <br />
        <br />
        <br />
      </div>
    <div class="inputs__item inputs__item--new">
      <asp:Label ID="newpassword" Text="NEW PASSWORD" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FF0066" />
        <asp:TextBox ID="texbox2" placeholder="Enter new password" runat="server" CssClass="auto-style3" Height="52px" Width="503px" />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      <asp:Label ID="conpass" Text="CONFIRM PASSWORD" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FF0066" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="conpas" placeholder="Enter new password" runat="server" CssClass="auto-style5" Height="52px" Width="501px" />

        <br />

    </div>
    <div class="inputs__item inputs__item--cta">
        <asp:Button ID="Button" Onclick="Button1_click" Text="RESET" runat="server" CssClass="auto-style4" Height="46px" Width="139px" />
        <asp:Label ID="Label1" runat="server" />
    </div>
  </form>
        </body></html>