<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="LMS.AboutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        @media (max-width: 576px) {
            .xs {
                color: red;
                font-weight: bold;
            }
        }

        /* Small devices (landscape phones, 576px and up) */
        @media (min-width: 576px) and (max-width:768px) {
            .sm {
                color: red;
                font-weight: bold;
            }
        }

        /* Medium devices (tablets, 768px and up) The navbar toggle appears at this breakpoint */
        @media (min-width: 768px) and (max-width:992px) {
            .md {
                color: red;
                font-weight: bold;
            }
        }

        /* Large devices (desktops, 992px and up) */
        @media (min-width: 992px) and (max-width:1200px) {
            .lg {
                color: red;
                font-weight: bold;
            }
        }

        /* Extra large devices (large desktops, 1200px and up) */
        @media (min-width: 1200px) {
            .xl {
                color: red;
                font-weight: bold;
            }
        }


        .about-section {
            padding: 50px;
            text-align: center;
            background-color: #474e5d;
            color: white;
        }
    </style>
    <div class="about-section">
            <h1>ကွန်ပျူတာတက္ကသိုလ် စာကြည့်တိုက်</h1><br />
            <p>စာကြည့်တိုက် ဆိုသည်မှာ တက္ကသိုလ်တိုင်းတွင် ရှိသင့်ရှိထိုက်သောအရာတစ်ခုအဖြစ် မြင်မိပါသည်။ထို့ကြောင့် ကျွန်တော်တို့ အေပရောဂျက်ကိုရွေးချယ်ရခြင်းဖြစ်ပါသည်။</p>
            <p>ကျွန်တော်တို့ မန်ဘာ ၅ ယောက်လုံးက အချိန်တိုအတွင်း တတ်စွမ်းသလောက် ကြိုးစားဖန်တီးထားပါသည်။</p>
        </div>
    <br />
    <div class="container">
        <h3 class="text-muted text-center p-2">Our Team Members</h3>
        <%--five card--%>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
            <div class="col mb-4">
                <div class="card">
                    <img src="assets/dist/img/oks.png" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h6 class="card-title text-muted"><b><i class="bi bi-person bi-lg"></i></b> &nbsp;Oo Kyaw Soe</h6>
                        <p class="card-text text-muted">oks-dev@gmail.com</p>
                     </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card">
                    <img src="assets/dist/img/htaa.jpg" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h6 class="card-title text-muted"><b><i class="bi bi-person bi-lg"></i></b> &nbsp;Htay Than Aung</h6>
                        <p class="card-text text-muted">hta-dev@gamil.com</p>
                     </div>
                </div>
            </div>

            <div class="col mb-4">
                <div class="card">
                    <img src="assets/dist/img/cho.png" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h6 class="card-title text-muted"><b><i class="bi bi-person bi-lg"></i></b> &nbsp;Htet Myat Khine</h6>
                        <p class="card-text text-muted">hmk-dev@gamil.com</p>
                       </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card">
                    <img src="assets/dist/img/kk.png" class="card-img-top" alt="..." />
                    <div class="card-body">
                       <h6 class="card-title text-muted"><b><i class="bi bi-person bi-lg"></i></b>Khin Thandar Kyaw</h6>
                        <p class="card-text text-muted text-center">ktdk-dev@gamil.com</p>
                    </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card">
                    <img src="assets/dist/img/wmh.png" class="card-img-top" alt="..." />
                    <div class="card-body text-center">
                        <h6 class="card-title text-muted"><b><i class="bi bi-person bi-lg"></i></b> &nbsp;Wai Myint Htet</h6>
                        <p class="card-text text-muted">wmh-dev@gamil.com</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
