<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BookReturnList.aspx.cs" Inherits="LMS.BookReturnList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="assets/dt/DataTables/datatables.min.css" rel="stylesheet" />
    <script src="assets/dt/DataTables/jQuery-3.6.0/jquery-3.6.0.min.js" type="text/javascript"></script>
    <style>
        .bookReturnListTable{
            width:100%;
        }
    </style>
    <form id="form1" runat="server">
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
                <br />
              <h5 class="text-center">Book Return List</h5>
                <hr />
              <div class="card-body">
                  <asp:GridView ID="GridView1" CssClass="bookReturnListTable" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCommand="delete" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                      <Columns>
                          <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                          <asp:BoundField DataField="admin_name" HeaderText="Admin Name" SortExpression="admin_name" />
                          <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                          <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                          <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                          <asp:BoundField DataField="borrow_date" HeaderText="Borrow Date" SortExpression="borrow_date" />
                          <asp:BoundField DataField="receive_date" HeaderText="Receive Date" SortExpression="receive_date" />
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
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book_borrow_receive] WHERE ([status] = @status)">
                      <SelectParameters>
                          <asp:Parameter DefaultValue="return" Name="status" Type="String" />
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
            var table = $('.bookReturnListTable').prepend($("<thead></thead>").append($(this).find("tr:first")));
            table.DataTable();
        })

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
