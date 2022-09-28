<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="MemberBookBorrow.aspx.cs" Inherits="LMS.MemberBookBorrow" %>
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
            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title text-center ">Book Borrow Form</h3>

                    <div class="card-tools">
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            
                            <div class="form-group">
                                <label>Borrower Name</label>
                                <asp:TextBox ID="txtBorrower" runat="server" class="form-control" Text="micho   " Style="width: 100%;" placeholder ="Enter Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Borrower Phone</label>
                                <asp:TextBox ID="txtBorrow" runat="server" class="form-control" Text="09689662136" Style="width: 100%;" placeholder ="Enter Phone"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>ISBN</label>
                                <asp:TextBox ID="txtISBN" runat="server" class="form-control" Text="18" Style="width: 100%;" placeholder ="Enter Book Name"></asp:TextBox>
                            </div>
                           <div class="form-group">
                                <label>Book Name</label>
                                <asp:TextBox ID="txtBookName" runat="server" Text="just friend" class="form-control" Style="width: 100%;" placeholder ="Enter Book Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            
                             <div class="form-group">
                                <label>Book Author</label>
                                <asp:TextBox ID="txtAuthor" runat="server" Text="kg myat hein" class="form-control" Style="width: 100%;" placeholder ="Enter Book Name" OnTextChanged="txtReturn_TextChanged"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label>Borrow Date</label>
                                <asp:TextBox ID="txtBorrowDate" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Borrow Date"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Return Date</label>
                                <asp:TextBox ID="txtReturnDate" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Return Date"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox ID="description" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Description"></asp:TextBox>
                            </div>
                        </div>
                    </div> 
                    <div style="text-align: center;">
                        <asp:Button ID="txtClear" runat="server" Text="Clear" CssClass="btnClear" OnClick="txtClear_Click" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Button ID="btnBorrow" runat="server" Text="Submit" CssClass="btnAdd" OnClick="btnBorrow_Click" />
                          
                    </div>
            </div>
           </div>
        </div>
    </section>
</asp:Content>
