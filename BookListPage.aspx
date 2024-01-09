<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BookListPage.aspx.cs" Inherits="LMS.BookListPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="assets/dt/DataTables/datatables.min.css" rel="stylesheet" />
    <script src="assets/dt/DataTables/jQuery-3.6.0/jquery-3.6.0.min.js" type="text/javascript"></script>
    <style>
        .bookListTable{
            width:100%;
        }
    </style>
    <form id="form1" runat="server">
    <br />
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header text-center">
                <h3 class="card-title text-center">Book List Page</h3>
              </div>
              <div class="card-body">
                  <asp:GridView ID="GridView1" CssClass="bookListTable" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCommand="delete" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                      <Columns>
                          <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                          <asp:BoundField DataField="b_name" HeaderText="Book Name" SortExpression="b_name" />
                          <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" />
                          <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                          <asp:BoundField DataField="qty" HeaderText="Qty" SortExpression="qty" />
                          <asp:BoundField DataField="edition" HeaderText="Edition" SortExpression="edition" />
                          <asp:BoundField DataField="b_type_id" HeaderText="Book Type ID" SortExpression="b_type_id" />
                          <asp:BoundField DataField="b_staff" HeaderText="Book Shell" SortExpression="b_staff" />
                          <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                          <asp:ButtonField CommandName="delete" Text="Delete" />
                      </Columns>

                      <FooterStyle BackColor="White" ForeColor="#000066" />
                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                      <RowStyle ForeColor="#000066" />
                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#00547E" />

                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [b_name], [author], [ISBN], [qty], [edition], [b_type_id], [b_staff], [description] FROM [books]"></asp:SqlDataSource>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
</form>
    <script src="assets/dt/DataTables/datatables.min.js" type="text/javascript"></script>


   
    <script>
        $(document).ready(function () {
            console.log("hello we ");
            var table = $('.bookListTable').prepend($("<thead></thead>").append($(this).find("tr:first")));
            table.DataTable();
        });
    </script>
</asp:Content>

