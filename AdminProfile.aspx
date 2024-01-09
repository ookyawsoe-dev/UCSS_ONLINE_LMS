<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="LMS.AdminProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="assets/dt/DataTables/jQuery-3.6.0/jquery-3.6.0.min.js" type="text/javascript"></script>  

        <style>
         .btnAdd {
            background-color: #808080;
            color: white;
            padding: 10px 10px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 10%;
        }
         .profileName{
             text-transform : uppercase;
         }
    </style>
    <br />
    <form id="form1" runat="server">
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <%--<div class="card-header p-2">
                   <h3 class="profile-username">Admin Profile</h3>
                </div>--%>
                <div class="card-body">
                    <div class="tab-pane" id="settings">
                        <div class="text-center">
                    <img class="profile-user-img img-fluid img-circle"
                        src="assets/dist/img/user4-128x128.jpg"
                        alt="User profile picture" />
                  </div>
                   <h3 class="profile-username text-center">
                       <asp:Label ID="profileName" CssClass="profileName" runat="server" Text=""></asp:Label></h3>
                  
                  <p class="text-muted text-center">UCSS Library Admin</p>
                        <div class="text-center">

                        </div>
                    
                        <div class="form-group row">
                            <div class="col-sm-2">

                            </div>
                          <label for="inputName" class="col-sm-2 col-form-label"></label>
                          <div class="col-sm-4">
                              <asp:TextBox ID="txtName" class="form-control"  runat="server" placeholder="Name"></asp:TextBox>
                          </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-2">

                            </div>
                          <label for="inputEmail" class="col-sm-2 col-form-label"></label>
                          <div class="col-sm-4">
                              <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email"  runat="server"></asp:TextBox>
                          </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-2">

                            </div>
                          <label for="inputPhone" class="col-sm-2 col-form-label"></label>
                          <div class="col-sm-4">
                              <asp:TextBox ID="txtPhone" class="form-control" placeholder="Phone"  runat="server"></asp:TextBox>
                          </div>
                        </div>
                        
                      <div class="form-group row">
                            <div class="col-sm-2">

                            </div>
                          <label for="inputEmail" class="col-sm-2 col-form-label"></label>
                          <div class="col-sm-4">
                              <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                          </div>
                        </div>
                        
  
                          <div class="offset-sm-5 col-sm-12">
                              <asp:Button ID="btnUpdate" class="btnAdd" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                          </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </section>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
