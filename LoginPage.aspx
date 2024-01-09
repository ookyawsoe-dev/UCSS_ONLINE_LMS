<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LMS.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" href="assets/dist/css/adminlte.min.css" />
    <link rel="shortcut icon" href="assets/dist/img/logo.png " />
    <style>
        .card-body {
            background-color: lightgray;
        }

        .login-logo a {
            font-size: 30px;
            font-weight: lighter;
            /*color : white;*/
        }

        .btnLogin {
            background-color: #808080;
            color: white;
            padding: 6px 20px;
            border: none;
            cursor: pointer;
            width: 45%;
        }


        .btnClear {
            background-color: #ec3f3f;
            color: white;
            padding: 6px 20px;
            border: none;
            cursor: pointer;
            width: 45%;
        }

        .rdo {
            color: white;
        }

        ::-webkit-input-placeholder {
            text-align: center;
        }
      .lbShow{
          text-align :center;
          color : red;
          margin-bottom : 2px;
      }
    </style>
</head>
<body class="hold-transition login-page" style="background-color: white;">
    <form id="form1" runat="server">
        <div class="login-box">
            <div class="login-logo">
                <%--<img src="assets/dist/img/logo.png" style="border-radius: 50%; width: 100px; height: 100px" /><br />--%>
                <a href="#">UCSS ONLINE LMS</a>
            </div>

            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg" style="color: white; font-size: 20px; font-weight: lighter;">LOGIN FORM</p>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbShow" CssClass="lbShow" runat="server" Text=""></asp:Label>
                    <br />
                    <div class="input-group mb-4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row rdo">
                        <div class="col-2">
                        </div>
                        <div class="col-4">
                            <asp:RadioButton ID="rdoAdmin" Checked="true" GroupName="gender" runat="server" />&nbsp;&nbsp; Admin
                        </div>
                        <div class="col-4">
                            <asp:RadioButton ID="rdoMember" GroupName="gender" runat="server" />
                            &nbsp;&nbsp; Member
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-2">
                        </div>
                        <div class="col-4">
                            <asp:Button ID="btnClear" class="btn btn-warning btn-block text-white w-100 btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                        </div>
                        <div class="col-4">
                            <asp:Button ID="btnLogin" class="btn btn-warning btn-block text-white w-100 btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
                        </div>
                    </div>



                    <br />
                    <p class="text-center">
                        <a href="MemberRegistration.aspx" style="color: white">Member Register ?</a>
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
