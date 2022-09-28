<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BookCategoryListPage.aspx.cs" Inherits="LMS.BookCategoryListPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <link href="assets/dt/DataTables/datatables.min.css" rel="stylesheet" />
        <script src="assets/dt/DataTables/jQuery-3.6.0/jquery-3.6.0.min.js" type="text/javascript"></script>
        <style>
            .bookCategoryTable {
                width: 100%;
            }
        </style>
        <br />
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header text-center">
                                <h3 class="card-title text-center">Book Category List Page</h3>
                            </div>
                            <div class="card-body">
                                <asp:GridView ID="GridView1" CssClass="bookCategoryTable" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="delete" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                        <asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />
                                        <asp:BoundField DataField="created_date" HeaderText="created_date" SortExpression="created_date" />
                                        <asp:ButtonField CommandName="delete" Text="Delete" />
                                    </Columns>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [b_category]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="assets/dt/DataTables/datatables.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                console.log("hello we ");
                var table = $('.bookCategoryTable').prepend($("<thead></thead>").append($(this).find("tr:first")));
                table.DataTable();
            })

        </script>

    </form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
