<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="LMS.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <style>

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  padding: 20px;
}
h3{
    text-align : center;
    font-weight : lighter;
}
</style>
   <div class="container">
        <h3>CONTACT FORM</h3>

<div class="container">
    <div class="row">
        <div class="col-6">
             <label for="fname">First Name</label>
             <input type="text" id="fname" name="firstname" placeholder="Your first name.." />
        </div>
         <div class="col-6">
             <label for="fname">Last Name</label>
             <input type="text" id="lname" name="firstname" placeholder="Your last name.." />
        </div>
         <div class="col-6">
             <label for="fname">Phone</label>
             <input type="text" id="phone" name="phone" placeholder="Your phone.." />
        </div>
         <div class="col-6">
             <label for="fname">Email</label>
             <input type="text" id="email" name="email" placeholder="Your email.." />
        </div>
    </div>

    <label for="subject">Description</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit" />
</div>

   </div>
</asp:Content>
