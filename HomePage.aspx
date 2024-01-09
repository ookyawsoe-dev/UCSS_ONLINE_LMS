<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LMS.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/dt/DataTables/datatables.min.css" rel="stylesheet" />
    <script src="assets/dt/DataTables/jQuery-3.6.0/jquery-3.6.0.min.js" type="text/javascript"></script>
    <style>
        .gridTable{
            width:100%;
        }
    </style>
</asp:Content>
  

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">Dashboard</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
              </ol>
            </div>
          </div>
        </div>
      </div>

      <section class="content">
        <div class="container-fluid">
          <div class="row">
              <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>
                    <asp:Label ID="totalBookCount" runat="server" Text=""></asp:Label>
                </h3>

                <p>Total Books Count</p>
              </div>
              <div class="icon">
                <i class="ion ion-ios-book-outline"></i>
              </div>
              <a href="BookListPage.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
         
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>
                    <asp:Label ID="totalmemberCount" runat="server" Text="2"></asp:Label></h3>

                <p>Total Members Count</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="MemberListPage.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
              <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>
                    <asp:Label ID="totalBorrowBookCount" runat="server" Text="3"></asp:Label><sup style="font-size: 20px"></sup></h3>

                <p>Total Borrow Books</p>
              </div>
              <div class="icon">
                <i class="ion ion-ios-bookmarks-outline"></i>
              </div>
              <a href="BookBorrowList.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>

               <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>
                    <asp:Label ID="totalReturnBookCount" runat="server" Text="4"></asp:Label></h3>

                <p>Total Return Books</p>
              </div>
              <div class="icon">
                <i class="ion ion-ios-book"></i>
              </div>
              <a href="BookReturnList.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
               <p class="text-center"><b>Books List To Borrow</b></p>

                  <div class="row">
                    <div class="col-md-12">
                        <asp:GridView ID="GridView1" CssClass="gridTable" OnRowCommand="select" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="b_name" HeaderText="Name" SortExpression="b_name" />
                                <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" />
                                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                                <asp:BoundField DataField="edition" HeaderText="Edition" SortExpression="edition" />
                                <asp:BoundField DataField="qty" HeaderText="Qty" SortExpression="qty" />
                                <asp:BoundField DataField="b_staff" HeaderText="Book Staff" SortExpression="b_staff" />
                                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                <asp:ButtonField CommandName="select" Text="To Borrow" />
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

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [b_name], [author], [ISBN], [edition], [qty], [b_type_id], [b_staff], [description] FROM [books]"></asp:SqlDataSource>

                      <div class="chart">
                        <canvas id="salesChart" height="180" style="height: 180px;"></canvas>
                      </div>
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
    <script src="assets/dt/DataTables/datatables.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            console.log("hello we ");
            var table = $('.gridTable').prepend($("<thead></thead>").append($(this).find("tr:first")));
            table.DataTable();
        })
     
    </script>
</asp:Content>
  
