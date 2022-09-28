<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BookBorrowList.aspx.cs" Inherits="LMS.BookBorrowPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="assets/dt/DataTables/datatables.min.css" rel="stylesheet" />
    <script src="assets/dt/DataTables/jQuery-3.6.0/jquery-3.6.0.min.js" type="text/javascript"></script>
    <style>
        .bookBorrowListTable{
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
                <br />
              <h5 class="text-center">Book Borrow List</h5>
                <hr />
              <div class="card-body">
                  <asp:GridView ID="GridView1" CssClass="bookBorrowListTable" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCommand="select" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                      <Columns>
                          <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                          <asp:BoundField DataField="admin_name" HeaderText="Admin Name" SortExpression="admin_name" />
                          <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                          <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                          <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                          <asp:BoundField DataField="borrow_date" HeaderText="Borrow Date" SortExpression="borrow_date" />
                          <asp:BoundField DataField="receive_date" HeaderText="Return Date" SortExpression="receive_date" />
                          <asp:ButtonField CommandName="change" Text="Change Return" />
                          <asp:ButtonField CommandName="select" Text="Delete" />
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
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book_borrow_receive] WHERE ([status] = @status)">
                      <SelectParameters>
                          <asp:Parameter DefaultValue="borrow" Name="status" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
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
            var table = $('.bookBorrowListTable').prepend($("<thead></thead>").append($(this).find("tr:first")));
            table.DataTable();
        })

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
