<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Loginpage.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
            text-align: left;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            height: 23px;
            text-align: right;
            width: 198px;
        }
        .auto-style5 {
            text-align: right;
            width: 198px;
        }
        .auto-style8 {
            height: 23px;
            width: 184px;
            text-align: left;
        }
        .auto-style10 {
            text-align: center;
            width: 198px;
        }
        .auto-style11 {
            text-align: left;
            width: 184px;
        }
        .auto-style12 {
            text-align: center;
            width: 184px;
        }
        .auto-style13 {
            text-align: right;
            width: 198px;
            height: 26px;
        }
        .auto-style14 {
            text-align: left;
            width: 184px;
            height: 26px;
        }
        .auto-style15 {
            text-align: left;
            height: 26px;
        }
        .auto-style16 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">User Name:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" CssClass="auto-style16" ErrorMessage="UserName is required" Width="180px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E-mail:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style16" ErrorMessage="Email is required" Width="180px"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="auto-style16" ErrorMessage="You Must enter the valid Email id" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Password:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" CssClass="auto-style16" ErrorMessage="Password is required" Width="180px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Confirm Password:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" CssClass="auto-style16" ErrorMessage="Confirm Password is required" Width="180px"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" CssClass="auto-style16" ErrorMessage="Both Passwords  be same"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Country:</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
                            <asp:ListItem>Select County</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" CssClass="auto-style16" ErrorMessage="Select a country name" InitialValue="Select County" Width="180px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        <input id="Reset1" type="reset" value="reset" /></td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
