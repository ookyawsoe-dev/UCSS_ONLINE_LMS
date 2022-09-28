<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="MemberHomePage.aspx.cs" Inherits="LMS.BookCategoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        
        .about-section {
            font-family :'AR BONNIE';
            font-weight : bold;
            padding: 50px;
            text-align: center;
            color: white;
            border-radius : 50%;
            font-size : 25px;
        }
    </style>
    <section class="jumbotron text-center bg-white" style="background-image : url('assets/dist/img/photo3.jpg');">
        <div class="about-section">
            <h1 style="font-size : 500%;">Welcome To UCSS Online LMS</h1>
            <p>If your are a reading enthausiast,</p>
            <p>Our system will help you more and we hope you enjoy this.</p>
        </div>
    </section>

    <div class="album py-5 border border-info rounded">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" src="assets/dist/img/lb.png" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;" />
                        <div class="card-body">
                            <p class="card-text text-center">ပုံ-၁ စာကြည့်တိုက်အတွင်းပိုင်းပုံ</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" src="assets/dist/img/lbOne.png" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;" />
                        <div class="card-body">
                            <p class="card-text text-center">ပုံ-၂ စာကြည့်တိုက်အတွင်းပိုင်းပုံ</p>
                            
                        </div>
                    </div>
                </div>
               

                
                
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" src="assets/dist/img/lbTwo.png" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;" />
                        <div class="card-body">
                            <p class="card-text text-center">ပုံ-၃ စာကြည့်တိုက်အတွင်းပိုင်းပုံ</p>
                            
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" src="assets/dist/img/lbThee.png" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;" />

                        <div class="card-body">
                            <p class="card-text text-center">ပုံ-၄ စာကြည့်တိုက်အတွင်းပိုင်းပုံ</p>
                           
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" src="assets/dist/img/lbFour.png" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;" />

                        <div class="card-body">
                            <p class="card-text text-center">ပုံ-၅ စာကြည့်တိုက်အတွင်းပိုင်းပုံ</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" src="assets/dist/img/lbSix.png" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;" />
                        <div class="card-body">
                            <p class="card-text text-center">ပုံ-၆ စာကြည့်တိုက်အတွင်းပိုင်းပုံ</p>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
