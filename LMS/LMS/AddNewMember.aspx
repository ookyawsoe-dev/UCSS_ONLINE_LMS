<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewMember.aspx.cs" Inherits="LMS.AddNewMember" %>
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
          .btnClear {
            background-color: #00ff21;
            color: white;
            padding: 10px 10px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 10%;
        }
    </style>
    <br />
    
    <section class="content">
        <div class="container-fluid">
            <form id="form1" runat="server">
            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title">Add New Member</h3>

                    <div class="card-tools">
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Member Name</label>
                                <asp:TextBox ID="txtName" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Author"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox ID="txtDescription" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Shell  Number"></asp:TextBox>
                            </div>
                             
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Shell  Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Destination</label>
                                <asp:TextBox ID="txtDestination" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter ISBN"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Department/ Class</label>
                                <asp:TextBox ID="txtDept" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Edition"></asp:TextBox>
                            </div>
                           
                            <div class="form-group">
                                <label>Profile Image</label>
                                 <asp:FileUpload ID="FileUpload1" class="form-control" Style="width: 100%;" runat="server" />
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="txtConPassword" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Shell  Number"></asp:TextBox>
                            </div>
                        </div>
                    </div> 
                    <div class="text-center">
                        <asp:Button ID="txtClear" runat="server" Text="Clear" CssClass="btnClear" OnClick="txtClear_Click" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="txtAdd" runat="server" Text="Add" CssClass="btnAdd" OnClick="txtAdd_Click" />

                    </div>
            </div>
           </div>
             </form>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
