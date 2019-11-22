<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="finalproject.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION FORM</title>


    <link href="StyleSheet.css" rel="stylesheet" />

    <style>
        @import url('https://fonts.googleapis.com/family=Bitter|Crete+round|pacifico');
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner1">
                    <span>Sign in with SOCIAL NETWORK</span><br />
                    <br />
                    <a href="https://www.facebook.com/" class="fb"> Log in with Facebook</a>
                    <br />
                     <a href="https://twitter.com/" class="tw"> Log with Twitter</a>
                    <br />
                     <a href="https://google.com/" class="gl"> Log in with Google </a>
                    <br/>

                </div>
                <div class="inner2">
                    <h3>SIGNUP</h3>
                    <asp:TextBox ID="txturname" placeholder="Username" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txturname" ErrorMessage="Please Enter username"></asp:RequiredFieldValidator>    
                    
                    <asp:TextBox ID="txtemail" placeholder="Email" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtemail" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="txtpasswd" placeholder="password" Textmode="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpasswd" ErrorMessage="Password must be 3 to 10 characters" Display="Dynamic" Font-Size="Medium" Forecolor="Red" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{3,10}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpasswd" Font-size="Medium" ForeColor="Red" Display="Dynamic" ErrorMessage="Enter valid Password...!!!"></asp:RequiredFieldValidator>  
                   
                    
                   
                    <br />
                    <br />

                    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CssClass="btn" Text="Sign Me up" PostBackUrl="~/login.aspx"/>
                    <asp:Button ID="Button2" runat="server" CssClass="btn" Text="CLICK HERE TO LOGIN" PostBackUrl="~/login.aspx" />

                </div>
            </div>
        </section>
        <div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
    </form>
    </body>
</html>
