<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NoNameTask._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div id="wraper">
      <div id="sidebar">
        <div class="logo">
            <img src="<%Response.Write(MenyHeaders[0].LogoPath);%>" alt="">
            <p><%Response.Write(MenyHeaders[0].Text);%></p>
        </div>
        <div class="BlogezyMeny">

            <ul>
                <% foreach (var menyItem in MenyItems)
                    {
                        if (menyItem.MenyItemIns.Count != 0)
                        {
                            %>
                                 <li class="itemHead">
                                     <% Response.Write(menyItem.Name);%>
                                </li>
                                <ul class="itemMain">
                            <%
                            foreach (var menyItemIn in menyItem.MenyItemIns)
                            {
                                %>
                                    <li class="<%Response.Write(menyItemIn.Name);%>"><%Response.Write(menyItemIn.Name);%></li>
                                    <%
                            }
                            %>
                                    </ul>
                                    <%
                            break;
                        }
                        %>
                        <li class="<%Response.Write(menyItem.Name);%>">
                            <%Response.Write(menyItem.Name); %>
                        </li>
                <%
                    }

                   %>
                <li class="Home">
                    Home
                </li>
                <li class="itemHead">
                    Features
                </li>
                <ul class="itemMain">
                    <li class="StandartPost">Standart Post</li>
                    <li class="VideoPost">Video Post</li>
                    <li class="AudioPost">Audio Post</li>
                    <li class="QalleryPost">Qallery Post</li>
                    <li class="QuotePost">Quote Post</li>
                    <li class="LinkPost">Link Post</li>
                </ul>
                <li class="Lifestyle ">
                     Lifestyle 
                </li>
                <li class="Travel">
                    Travel
                </li>
                <li class="Music">
                    Music
                </li>
                <li class="About">
                    About
                </li>
                <li class="Contact">
                    Contact
                </li>
            </ul>
     </div>
</div>

    </div>
    <script>
        let itemsHead = document.querySelectorAll(".itemHead");
        let itemsMain = document.querySelectorAll(".itemMain");
        /*--------sidebar start--------------- */
let g = true
for (let i = 0; i < itemsHead.length; i++) {
    $(document).ready(function () {
        $(itemsHead[i]).val("1");
        $(itemsHead[i]).click(() => {

            yoxla($(itemsHead[i]).val());
            if (g) {
                $(itemsHead[i]).addClass("select");
                $(itemsHead[i]).val("2");
            }
            else {
                $(itemsHead[i]).val("1");

            }

            if (g) {
                $(itemsMain[i]).slideToggle("fast")
            }
            setTimeout(() => {
                let pos = itemsHead[i].offsetTop;
                let k = 0;
                let h = setInterval(() => {
                    document.documentElement.scrollTo(0, pos - k)
                    k++;
                    if (k == 100) {
                        clearInterval(h);
                    }
                }, 5)

            }, 500)
            g = true;
        })
    })
}
function yoxla(clickVal) {
    for (let k of itemsHead) {
        if ($(k).val() == "2") {
            if ($(k).val() == clickVal) {
                g = false;
            }
            $(k).next().slideToggle();
            $(k).val("1")
        }
    }
    for (let k of itemsHead) {
        $(k).removeClass("select")
    }
}
let h = true
for (let i = 0; i < itemsDevelopHead.length; i++) {
    $(document).ready(function () {
        $(itemsDevelopHead[i]).val("1");
        $(itemsDevelopHead[i]).click(() => {
            yoxla2($(itemsDevelopHead[i]).val());
            if (h) {
                $(itemsDevelopHead[i]).addClass("select2");
                $(itemsDevelopHead[i]).val("2");
            }
            else {
                $(itemsDevelopHead[i]).val("1");

            }

            if (h) {
                $(itemsDevelopMain[i]).slideToggle("fast")
            }
            h = true;
        })
    })
}

window.addEventListener("resize", function () {
    function resize() {
        windowInnerWidth = window.innerWidth;
        // windowInnerHeight = document.getElementById('main').offsetHeight;
        if (windowInnerHeight > 2000) {
            // $('#sidebar').css('min-height', `${windowInnerHeight}px`);
            // $('#chatUI').css('min-height', `${windowInnerHeight}px`);
        }
        if (windowInnerWidth < 992) {
            $("#main").css('margin-left', '0px');
        }
        else {
            $("#main").css('margin-left', '200px');
            $("#sidebar").css('opacity', '1');
            $("#sidebar").off('mouseenter')
            $("#sidebar").off('mouseleave')
        }
    }
    resize();
})
    </script>
    <style>
        .body-content {
    padding: 35px;
   background-color: #e1e6ed;
       font-family: 'Nunito Sans', sans-serif;
        }
      #sidebar {
    grid-column: 1/6;
    width: 280px;
    background-color: #f0f4f7;
    display: inline-block;
    
    z-index: 1;
    padding:40px;
    
      }
      #sidebar .logo img{
          height: 44px;
      }
      #sidebar .logo p{
          margin: 30px 0 45px 0;
          opacity:0.5;
      }
    #sidebar ul {
      color: #000000;
      padding: 0;
      margin: 0;
      list-style: none; }
      #sidebar ul > li {
        cursor: pointer;
        position: relative;
        padding: 10px 0px 12px 0px;
        margin: 12px 0 12px 0;
            font-size: 16px; }
        #sidebar ul > li i:nth-of-type(2) {
          float: right; }
      #sidebar ul > ul {
        display: none;
        opacity:0.6;
        margin-left:10px;
         }
      #sidebar ul > ul >li{
        margin: 5px 0 5px 0;

         }
    
    </style>
</asp:Content>
