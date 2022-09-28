<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BookAddPage.aspx.cs" Inherits="LMS.BookAddPage" %>

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
                    <h3 class="card-title text-center">Book Add Form</h3>

                    <div class="card-tools">
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Book Name</label>
                                <asp:TextBox ID="txtName" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Author Name</label>
                                <asp:TextBox ID="txtAuthor" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Author"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>ISBN</label>
                                <asp:TextBox ID="txtISBN" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter ISBN"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Book Edition</label>
                                <asp:TextBox ID="txtEdition" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Edition"></asp:TextBox>
                            </div>
                           
                        </div>

                         <div class="col-md-6">
                            <div class="form-group">
                                <label>Book Type</label>
                                <asp:DropDownList ID="DropDownList1"  class="form-control" Style="width: 100%;" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_name"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_name] FROM [b_category]"></asp:SqlDataSource>
                            </div>
                            <div class="form-group">
                                <label>Book Shell</label>
                                <asp:TextBox ID="txtStaff" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Shell  Number"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label>Book Cover Image</label>
                                 <asp:FileUpload ID="FileUpload1" class="form-control" Style="width: 100%;" runat="server" />
                            </div>
                              
                        </div>
                         <div class="col-md-6">
                            <div class="form-group">
                                <label>Qty</label>
                                <asp:TextBox ID="txtQty" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Qty"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label>Book Desctiption</label>
                                <asp:TextBox ID="txtDescription" runat="server" class="form-control" Style="width: 100%;" placeholder ="Enter Book Descrition"></asp:TextBox>

                                 <%--<textarea id="TextArea1" name="TextArea1" cols="20" rows="1" class="form-control" style="width: 100%;" placeholder ="Enter Book Description"></textarea>--%>
                            </div>
                            <div class="form-group">
                                <label>PDF File</label>
                                 <asp:FileUpload ID="FileUpload2"  class="form-control" Style="width: 100%;" runat="server"/>
                            </div>  
                        </div>
                    </div> 
                    <div style="text-align: center;">
                        <asp:Button ID="txtClear" runat="server" Text="Clear" CssClass="btnClear"  OnClick="txtClear_Click" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Button ID="txtAdd" runat="server" Text="Add" CssClass="btnAdd" OnClick="txtAdd_Click" />
                          
                    </div>
            </div>
           </div>
             </form>
        </div>
    </section>
   
</asp:Content>
