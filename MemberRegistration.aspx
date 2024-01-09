<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberRegistration.aspx.cs" Inherits="LMS.MemberRgisteration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Member Registration Form</title>
    <link href="assets/dist/css/style.css" rel="stylesheet" />
    <link href="assets/plugins/fontawesome-free/css/all.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 115px;
        }
    </style>
</head>
<body>
      <form id="Regs" runat="server">
        <div class="logo" style="text-align : center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/assets/dist/img/logo.png"/>
            <div>
                <asp:Label ID="txtRegs" runat="server" Text="Member Registration Form" Font-Size="25px" ForeColor="White"></asp:Label><br />
                <asp:Label ID="txtShow" runat="server" Text=""></asp:Label>
            </div>
        </div>
        
        <div class="labDesc">
            <table style="color:white">
                <tr>
                    <td class="auto-style1"><asp:Label ID="lbName" runat="server" Text="Name"></asp:Label></td>
                    <td><asp:TextBox ID="txtName" runat="server" class="txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Plase Enter Your Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr >
                    <td class="auto-style1"><asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label></td>
                    <td><asp:TextBox ID="txtEmail" runat="server" class="txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Your Email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="lbPwd" runat="server" Text="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" class="txtbox" OnTextChanged="txtPwd_TextChanged" AutoPostBack="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please Enter Your Password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPwd" Placeholder="Password not be Blank" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        <asp:CompareValidator ID="CompareValidator1" Display="Dynamic" SetFocusOnError="true" runat="server" Placeholder="Password NOT Match" ControlToCompare="txtPwd" ControlToValidate="txtComPwd" ForeColor="Red"></asp:CompareValidator>
                    
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="lbComPwd" runat="server" Text="Confirm Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtComPwd" runat="server" class="txtbox"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="lbDest" runat="server" Text="Destination"></asp:Label></td>
                    <td>
                        <asp:RadioButton ID="rBtn1" runat="server" GroupName="control" Checked="true" AutoPostBack="True" OnCheckedChanged="radioButton_onChanged" Text="Educator" />
                        <asp:RadioButton ID="rBtn2" runat="server" GroupName="control" AutoPostBack="True" OnCheckedChanged="radioButton_onChanged" Text="Student" />
                        
                        

                    </td>
                </tr>   
                <tr>
                    <td class="auto-style1"><asp:Label ID="lbDpart" runat="server" Text="Department"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DDList2" runat="server" class="ddlist">
                         
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1">Profile</td>
                  
                    <td><asp:FileUpload ID="FileUpload" runat="server" style="margin-left: 26px" /></td>
                </tr>
            </table><br />
            <div style="text-align : end; padding-left : 3px; width: 257px; margin-left: 73px;">
                <asp:Button ID="btnClear" runat="server" Text="Clear" class="btnClear" Width="103px" BorderColor="#CCCCFF" OnClick="btnClear_Click1" />

            <asp:Button ID="btnRegs" runat="server" Text="Sign Up" class="btnSignUp" Width="103px" OnClick="btnRegs_Click1" />
            </div>
             <div style ="text-align : end;"><br />
            <span><a href="LoginPage.aspx" style="color:white; text-decoration : none;">Already Member?</a></span>

            </div>
        </div>
         
    </form>
</body>
</html>
