<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="MemberListPage.aspx.cs" Inherits="LMS.MemberList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="assets/dt/DataTables/datatables.min.css" rel="stylesheet" />
    <script src="assets/dt/DataTables/jQuery-3.6.0/jquery-3.6.0.min.js" type="text/javascript"></script>
    <style>
        .memberListTable{
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
              <h5 class="text-center">Member List</h5>
                <hr />
              <div class="card-body">
                  <asp:GridView ID="GridView1" CssClass="memberListTable" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" OnRowCommand="delete" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                      <Columns>
                          <asp:BoundField DataField="id" HeaderText="ID" />
                          <asp:BoundField DataField="name" HeaderText="Name" />
                          <asp:BoundField DataField="destination" HeaderText="Destination" />
                          <asp:BoundField DataField="department" HeaderText="Department" />
                          <asp:BoundField DataField="description" HeaderText="Description" />
                          <asp:ButtonField Text="Delete" CommandName="delete" />
                      </Columns>
                      <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                      <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                      <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                      <RowStyle BackColor="White" ForeColor="#003399" />
                      <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                      <SortedAscendingCellStyle BackColor="#EDF6F6" />
                      <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                      <SortedDescendingCellStyle BackColor="#D6DFDF" />
                      <SortedDescendingHeaderStyle BackColor="#002876" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [email], [password], [destination], [department], [description], [profile_image], [id] FROM [members]"></asp:SqlDataSource>
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
            var table = $('.memberListTable').prepend($("<thead></thead>").append($(this).find("tr:first")));
            table.DataTable();
        })

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
