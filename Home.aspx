<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" margin-top:1px;">
     <div class="container" id="slider" >

<style>
    .bttn{
        color:white;

    }
    
    .card .view:hover img{
        transform:scale(1.2) rotate(-7deg);
    }
    
</style>


         <div class="container-fluid" >
  <div class="row" >

      
    
      <!-- Start picture Coursal -->
    <div class="col-md-12">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
   
    
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
   

    <div class="item active  img-responsive">
      <img src="images/slider 3.jpg" alt="Chania" class="imgg" style=" background-size: cover;
background-position:center;
background-repeat:no-repeat;
height:600px;
"/>
    </div>

   

    <div class="item  img-responsive">
      <img src="images/slider 4.jpg" alt="Flower"  style="background-size: cover;
background-position:center;
background-repeat:no-repeat;
height:600px;
 " />
    </div>
      
       <div class="item  img-responsive">
      <img src="images/slider 5.jpg" alt="Flower" style="background-size: cover;
background-position:center;
background-repeat:no-repeat;
height:600px;
" />
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
 <!--  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> --> 
   <!--   <img src="images/left_icon.png" style="float:left; padding-top:300px;" />  -->

    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
  <!--   <img src="imgggg/right_arrow.png" style="float:right; padding-top:300px;"  /> -->
    <span class="sr-only">Next</span>
  </a>
</div>
      </div>

      

  </div>
       
        </div>
        </div>
    </div> 
   <br />  <br /> <br /> <br />  <br />  <br />  <br /> <br /> <br /> <br />  <br />  <br />  <br /> <br />   <br />  <br />  <br /> <br /> <br />  <br /> <br />
     <hr style="margin-top:20px;  background-color:black" />
   


    <!-- Card   -->
    <div style="background-color:white">
     <div class="container" >
         <div class="row">


    <div class="col-md-4 col-md-offset-1 ">

    
    <div class="card card-cascade narrower card1">

        <!--Card image-->
        <div class="view overlay hm-white-slight" onclick="window.location='DiseasePrediction1.aspx'" >
            
            <img src="images/dise%20p.jpg" class="img-fluid" alt="" style="height:180px; width:400px;" />
            <a>
                <div class="mask waves-effect waves-light"></div>
            </a>
        </div>
        <!--/.Card image-->

        <!--Card content-->
        <div class="card-block">
            <h5 class="red-text"><i class="fa fa-medkit" aria-hidden="true" ></i> &nbsp <b>Disease Prediction</b></h5>
            <!--Title-->
            
            <!--Text-->
            <p class="card-text">&nbsp&nbsp&nbsp Check Desease .</p>
            <a class="btn " style="color:white;"  onclick="window.location='DiseasePrediction1.aspx'" >Click here</a>
        </div>
        <!--/.Card content-->

    </div>
    <!--/.Card-->

</div>


    <!-- Card 2 -->
   
      
   
     <div class="col-md-4 col-md-offset-2">

    
    <div class="card card-cascade narrower card2">

        <!--Card image-->
        <div class="view overlay hm-white-slight"  onclick="window.location='Doc login.aspx'" >
            
            <img src="images/headaches-doctor.jpg" class="img-fluid" alt="" style="height:180px; width:400px;" />
            <a>
                <div class="mask waves-effect waves-light"></div>
            </a>
        </div>
        <!--/.Card image-->

        <!--Card content-->
        <div class="card-block">
            <h5 class="red-text"><i class="fa fa-search" aria-hidden="true"></i> &nbsp <b>Doctor Portal</b></h5>
            <!--Title-->
            
            <!--Text-->
            <p class="card-text" > &nbsp&nbsp&nbsp Doctor Login</p>
            <a class="btn"  style="color:white;" onclick="window.location='Doc login.aspx'" >Click here</a>
        </div>
        <!--/.Card content-->

    </div>
    <!--/.Card-->

</div>
      

         </div>
         </div>
    <!-- End Card -->



    <br />
    <br />

    <!--  2nd Line Start Card --> 

    <!-- Card   -->

     <div class="container ">
         <div class="row">


    <div class="col-md-4 col-md-offset-1">

    
    <div class="card card-cascade narrower card3">

        <!--Card image-->
        <div class="view overlay hm-white-slight">
            <img src="images/med.jpg" class="img-fluid" alt="" style="height:180px; width:400px;" /> <a href="DiseasePrediction1.aspx"a></a>
            <a>
                <div class="mask waves-effect waves-light"></div>
            </a>
        </div>
        <!--/.Card image-->

        <!--Card content-->
        <div class="card-block">
            <h5 class="red-text"><i class="fa fa-search" aria-hidden="true"></i> &nbsp <b>Search Medicine</b></h5>
            <!--Title-->
            
            <!--Text-->
            <p class="card-text"> &nbsp&nbsp&nbsp Check Medicine Availability.</p>
            <a class="btn " style="color:white;" onclick="window.location='Medicine.aspx'">CLICK HERE</a> 
        </div>
        <!--/.Card content-->

    </div>
    <!--/.Card-->

</div>


    <!-- Card 2 -->
   
      
   
     <div class="col-md-4 col-md-offset-2">

    
    <div class="card card-cascade narrower card4">

        <!--Card image-->
        <div class="view overlay hm-white-slight">
            <img src="images/med%20news.jpg" class="img-fluid" alt="" style="height:180px; width:400px;" />
                        <a>
                <div class="mask waves-effect waves-light"></div>
            </a>
        </div>
        <!--/.Card image-->

        <!--Card content-->
        <div class="card-block">
            <h5 class="red-text"><i class="fa fa-newspaper-o" aria-hidden="true"></i> &nbsp &nbsp <b>Medical News</b></h5>
            <!--Title-->
            
            <!--Text-->
            <p class="card-text"> &nbsp&nbsp&nbsp
                Latest Health News</p>
            <a href="http://nsfame.blogspot.com"  target="_blank" class="btn "  style="color:white;">CLICK HERE</a>
        </div>
        <!--/.Card content-->

    </div>
    <!--/.Card-->

</div>
        </div>

         </div>
        

    <!-- End Card -->


    <!-- Second Line End Card -->
    
    <!-- News Start -->

        </div>
    
    <!-- New -->
     <script>
        window.sr = ScrollReveal();
        sr.reveal('.navbar', {
            duration: 1500,
            origin: 'left',
            distance:'2000px'
        });
        sr.reveal('.card3', {
          duration: 2000,
          origin:'left',
          distance:'300px'
        });
        sr.reveal('.card2', {
          duration: 2000,
          origin:'right',
          distance:'300px'
        });
        sr.reveal('.showcase-btn', {
          duration: 2000,
          delay: 2000,
          origin:'bottom'
        });
        sr.reveal('#testimonial div', {
          duration: 2000,
          origin:'bottom'
        });
        sr.reveal('.card1', {
          duration: 2000,
          origin:'left',
          distance:'300px',
          viewFactor: 0.2
        });

        sr.reveal('.card4', {
          duration: 2000,
          origin:'right',
          distance:'300px',
          viewFactor: 0.2
        });
    </script>

    <script>
    $(function() {
      // Smooth Scrolling
      $('a[href*="#"]:not([href="#"])').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
          var target = $(this.hash);
          target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
          if (target.length) {
            $('html, body').animate({
              scrollTop: target.offset().top
            }, 1000);
            return false;
          }
        }
      });
    });
    </script>
    
</asp:Content>
