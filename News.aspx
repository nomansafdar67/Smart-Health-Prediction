<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="WebApplication2.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>

       .photo img{
            padding-top:30px;
            padding-bottom:30px;
            padding-left:30px;
        }
       .photo img:hover{
              transform:scale(1.2);
             transition:  transform   2s;
        
    }
    </style>
    <br /> <br />

    <div class="container">
        <div class="row">
            <div class="col-md-8 ">
                <section >
    <h3>Latest News</h3>
    <hr />

    <p>
        <span>
        <i class="fa fa-clock-o" aria-hidden="true"></i>

        </span>Posted on July 12 ,2017
    </p>
    <hr />
 <div class="photo">
                <img src="images/med.jpg" class="img-responsive " />
             </div>
       <hr />
                <p>When everyone seems obsessed with losing weight,
                     it can be hard to figure out how to gain weight 
                    in a safe and healthy way.
                     Luckily, the math of weight gain isn't hard to grasp. Adjust when you eat and what you eat so you can increase the calories you eat every day. </p>
                
                <a class="btn btn-primary" href="#"> Read More &raquo;</a>
                    </section>
                <!--Another -->

                 <section>
    <h3>Latest News</h3>
    <hr />

    <p>
        <span >
            <i class="fa fa-clock-o" aria-hidden="true"></i>
        </span>Posted on July 12 ,2017
    </p>
    <hr />
                     <div class="photo">
                <img src="imgggg/img36.jpg" class="img-responsive" />
               </div> <hr />
                <p>When everyone seems obsessed with losing weight,
                     it can be hard to figure out how to gain weight 
                    in a safe and healthy way.
                     Luckily, the math of weight gain isn't hard to grasp. Adjust when you eat and what you eat so you can increase the calories you eat every day. </p>
                
                <a class="btn btn-primary" href="#"> Read More &raquo;</a>
                    </section>
                <!-- Another -->
                 <section>
    <h3>Latest News</h3>
    <hr />

    <p>
        <span >
            <i class="fa fa-clock-o" aria-hidden="true"></i>
        </span>Posted on July 12 ,2017
    </p>
    <hr />
                     <div class="photo">
                <img src="imgggg/img35.jpg" class="img-responsive" />
           </div>     <hr />
                <p>When everyone seems obsessed with losing weight,
                     it can be hard to figure out how to gain weight 
                    in a safe and healthy way.
                     Luckily, the math of weight gain isn't hard to grasp. Adjust when you eat and what you eat so you can increase the calories you eat every day. </p>
                
                <a class="btn btn-primary" href="#"> Read More &raquo;</a>
                    </section>
                <!--Another -->
                <ul class="pagination">
                    <li> <a href="#">&laquo;</a></li>
               <li class="active"> <a href="#">1</a>  </li>
                <li><a href="#">2</a></li> 
                    <li><a href="#">3</a></li> 
                    <li><a href="#">4</a></li>
                         <li> <a href="#">&laquo;</a></li>
                     </ul>

    </div>
            

          
        </div>
    </div>
</asp:Content>
