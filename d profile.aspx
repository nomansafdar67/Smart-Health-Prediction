<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="d profile.aspx.cs" Inherits="WebApplication2.WebForm8" %>
<%@ Import Namespace="WebApplication2.Code" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <link href="chatboxx.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       

    
     <style>
        .container{
            font-size:18px;
            background-color:azure;
        }
        #divp{
            background-color:antiquewhite;
        }
    </style>
    
    <div>
        <div class="row" id="divp"> 
            <div class="col-md-3 col-md-offset-5">
                <h3>Doctor Profile</h3>
            </div>
        </div>
    </div>
<div class="container">
             <input type="hidden" id="uid" value="<%=Userid %>"/> 
    <input type="hidden" id="uname" value="<%=UserName %>"/> 
    <div class="row">
        <div class="col-md-4 ">
        <b>  <asp:Label ID="Lable" runat="server" Text="Name:"></asp:Label> </b>    &nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp  &nbsp <asp:Label ID="name" runat="server" Text="Ali"></asp:Label> <br /> <br />
            <b>  <asp:Label ID="Label1" runat="server" Text="Doctor ID:"></asp:Label> </b>&nbsp;&nbsp;&nbsp; &nbsp  &nbsp <asp:Label ID="p_id" runat="server" Text="4521"></asp:Label> <br /> <br />
           <b>  <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label></b>   &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="age" runat="server" Text="27"></asp:Label> <br /> <br />
             <b>  <asp:Label ID="Label2" runat="server" Text="Speciality:"></asp:Label> </b>    &nbsp; &nbsp;&nbsp;  &nbsp <asp:Label ID="Label4" runat="server" Text="Speciality"></asp:Label> <br /> <br />
          <b>   <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label></b> &nbsp &nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;    <asp:Label ID="gender" runat="server" Text="Male"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label></b>  &nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="address" runat="server" Text="Madina Saida"></asp:Label>  <br /> <br />
                <b>   <asp:Label ID="Label9" runat="server" Text="City:"></asp:Label></b>  &nbsp&nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="city" runat="server" Text="Gujrat"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label13" runat="server" Text="Country:"></asp:Label></b> &nbsp&nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="country" runat="server" Text="Pakistan"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label15" runat="server" Text="Phone#:"></asp:Label></b>  &nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp    <asp:Label ID="number" runat="server" Text="0312-1234567"></asp:Label>  <br /> <br />
         <b>   <asp:Label ID="Label17" runat="server" Text="Email:"></asp:Label></b> &nbsp&nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="email" runat="server" Text="abc@gmail.com"></asp:Label>  <br /> <br />

           


             </div>
        <asp:FileUpload ID="FileUpload2" runat="server" />
       <br /><br /><br />
        <div class="col-md-2  ">
            <img src="nn.jpg" class="img-responsive img-circle" runat="server" id="imggg"/> <br />
           &nbsp &nbsp  &nbsp <asp:Button class="btn-default" ID="Button1" runat="server" Text="Change Image" OnClick="Button1_Click" />
            <br /> <br />  <br />
             <asp:Button class="btn-default" ID="Button2" runat="server" Text="Add Contact" OnClick="Button2_Click"  />
        </div>
         
       <div class="col-md-6 " style="background-color:white;">
        &nbsp &nbsp  &nbsp &nbsp &nbsp  &nbsp    &nbsp &nbsp  &nbsp &nbsp &nbsp  &nbsp  <asp:Button class="btn-default" ID="Button3" runat="server" Text="Appoinment" OnClick="Button3_Click"   />

           <asp:GridView ID="GridView1" runat="server"></asp:GridView>
       </div>
    </div>
</div>
    <div class="container">
    <div class="row chat-window col-xs-5 col-md-3" id="chat_window_1" style="margin-left:10px;z-index:1000;display:none">
        <div class="col-xs-12 col-md-12">
        	<div class="panel panel-default">
                <div class="panel-heading top-bar">
                    <div class="col-md-8 col-xs-8">
                        <h3 class="panel-title"><span class="glyphicon glyphicon-comment"></span> Chat - Miguel</h3>
                    </div>
                    <div class="col-md-4 col-xs-4" style="text-align: right;">
                        <a href="#"><span id="minim_chat_window" class="glyphicon glyphicon-minus icon_minim"></span></a>
                        <a href="#"><span class="glyphicon glyphicon-remove icon_close" data-id="chat_window_1"></span></a>
                    </div>
                </div>
                <div class="panel-body msg_container_base">
                    <div class="row msg_container base_sent">
                        <div class="col-md-10 col-xs-10">
                            <div class="messages msg_sent">
                                <p>that mongodb thing looks good, huh?
                                tiny master db, and huge document store</p>
                                <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg" class=" img-responsive ">
                        </div>
                    </div>
                    <div class="row msg_container base_receive">
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg" class=" img-responsive ">
                        </div>
                        <div class="col-md-10 col-xs-10">
                            <div class="messages msg_receive">
                                <p>that mongodb thing looks good, huh?
                                tiny master db, and huge document store</p>
                                <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                            </div>
                        </div>
                    </div>
                    <div class="row msg_container base_receive">
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg" class=" img-responsive ">
                        </div>
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_receive">
                                <p>that mongodb thing looks good, huh?
                                tiny master db, and huge document store</p>
                                <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                            </div>
                        </div>
                    </div>
                    <div class="row msg_container base_sent">
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_sent">
                                <p> store</p>
                                <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg" class=" img-responsive ">
                        </div>
                    </div>
                    <div class="row msg_container base_receive">
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg" class=" img-responsive ">
                        </div>
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_receive">
                                <p> store</p>
                                <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                            </div>
                        </div>
                    </div>
                    <div class="row msg_container base_sent">
                        <div class="col-md-10 col-xs-10 ">
                            <div class="messages msg_sent">
                                <p>that mongodb thing looks good, huh?
                                tiny master db, and huge document store</p>
                                <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg" class=" img-responsive ">
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <div class="input-group">
                        <input style="margin:auto" id="btn-input" type="text" class="form-control input-sm chat_input" placeholder="Write your message here..." />
                        <span class="input-group-btn">
                        <button class="btn btn-primary btn-sm" id="btn-chat">Send</button>
                        </span>
                    </div>
                </div>
    		</div>
        </div>
    </div>
    
    <div class="btn-group dropup">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            <span class="glyphicon glyphicon-cog"></span>
            <span class="sr-only">Toggle Dropdown</span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="#" id="new_chat"><span class="glyphicon glyphicon-plus"></span> Novo</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-list"></span> Ver outras</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-remove"></span> Fechar Tudo</a></li>
            <li class="divider"></li>
            <li><a href="#"><span class="glyphicon glyphicon-eye-close"></span> Invisivel</a></li>
        </ul>
    </div>
</div>
    <div>
        <%
            if (Conversations != null)
            {
                foreach (BO_Conversation conv in Conversations)
                {
                    %>
        <a href="javascript:void(0)" class="contact"
            data-conversationid="<%=conv.id %>" data-senderid="<%=conv.PatientID %>" data-receiverid="<%=conv.DoctorID %>"><%=conv.NextUserName %> </a> <br />
        <%
                }
            }
             %>
        
       
    </div>
    <script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyBWGTlBP8BEzbxuzPRj7rPlmyfXd_uw6_Q",
    authDomain: "smarthealthprediction-cdd72.firebaseapp.com",
    databaseURL: "https://smarthealthprediction-cdd72.firebaseio.com",
    projectId: "smarthealthprediction-cdd72",
    storageBucket: "smarthealthprediction-cdd72.appspot.com",
    messagingSenderId: "119813533486"
  };
  firebase.initializeApp(config);
</script>
    <script src="Chatbox.js"></script>
</asp:Content>
