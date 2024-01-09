<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="BCategory.aspx.cs" Inherits="LMS.BCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <style>
        #GridView1 {
            width: 100%;
            height: auto;
        }
    </style>
    <div>
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-striped" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="Select">
            <Columns>
                <asp:ButtonField CommandName="Select" Text="To Borrow" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
