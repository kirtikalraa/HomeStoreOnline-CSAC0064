<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="kirti.WebForm1" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 93%;
            height: 592px;
        }
        .auto-style2 {
            width: 349px;
        }
        .auto-style6 {
            height: 69px;
        }
        .auto-style7 {
            width: 349px;
            height: 81px;
        }
        .auto-style8 {
            height: 81px;
        }
        .auto-style9 {
            width: 349px;
            height: 52px;
        }
        .auto-style10 {
            height: 52px;
        }
        .auto-style12 {
            height: 80px;
        }
        .auto-style13 {
            height: 91px;
        }
        .auto-style14 {
            font-size: xx-large;
        }
    </style>
</head>
<body bgcolor="SALMON">
    
    <form id="form1" runat="server">
        <div style="font-family: 'Lucida Calligraphy'; color: #000000; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Homestore Online" Font-Names="Lucida Calligraphy" ForeColor="#003300"></asp:Label>
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h2 class="auto-style14">&nbsp;SIGNUP </h2>
            <br/>
        
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1" border="2">
                <tr>
                    <td class="auto-style7">USERNAME</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" id="req" controltovalidate="Textbox2" errormessage="Please enter your Username!" />
    

                        </td>
                </tr>
                <tr>
                    <td class="auto-style9">PHONE NUMBER</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="Textbox3" errormessage="Please enter your Phone Number!" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style12">PASSWORD</td>
                     <td class="auto-style12">
                         <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="Textbox14" errormessage="Please enter your Password!" />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textbox14"

                ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="valPassword" runat="server" ControlToValidate="Textbox14"

                ErrorMessage="Minimum password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,30})$"

                ValidationGroup="RegisterCheck" />
                         </td>
                </tr>
                <tr>
                    <td class="auto-style13">CONFIRM PASSWORD</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="Textbox24" errormessage="Please Confirm your password!" />
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox14" ControlToValidate="TextBox24" ErrorMessage="Password does not match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">CAPTCHA IMAGE</td>
                    <td>
                        <cap:CaptchaControl ID="captcha1" runat="server" BackColor="white" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" CaptchaHeight="50" CaptchaLength="5" CaptchaLineNoise="None" CaptchaMaxTimeout="240" CaptchaMinTimeout="3" CaptchaWidth="200" ForeColor="Blue" Height="46px" Width="200px" />
                        <br/>
                        <br/>
                        <asp:Button ID="Button2" runat="server" Text="Refresh" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ENTER IMAGE TEXT</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="168px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" value="SUBMIT" OnClick="Button1_Click" Text="SUBMIT" Width="150px"/>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
             <asp:Button ID="Button13" runat="server" OnClick="Button1_Click" Width="150px" value="LOGIN" Text="signup"/>
        </p>
    </form>
</body>
</html>
