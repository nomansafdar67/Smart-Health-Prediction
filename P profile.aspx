<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="P profile.aspx.cs" Inherits="WebApplication2.WebForm7" %>
<%@ Import Namespace="WebApplication2.Code" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="chatboxx.css" rel="stylesheet" />
</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" id="uid" value="<%=Userid %>"/>
    <input type="hidden" id="uname" value="<%=UserName%>"/>
    <style>
        .container{
            font-size:18px;
            background-color:azure;
        }
        #divp{
            background-color:antiquewhite;
        }
    </style>
    
    <br />
  <div class="container" style="background-color:white">
      <div class="row">
          <div class="col-md-5 col-md-offset-3">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Search doctor"></asp:TextBox><asp:Button class="btn btn-default" ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
     </div> </div>

  </div> 
    <div class="btn-group btn-group-justified" >
  <a href="p profile.aspx" class="btn btn-primary">Profile</a>
  <a href="Appointment.aspx" class="btn btn-primary">Appointment</a>
  <a href="app history.aspx" class="btn btn-primary">Appointment History</a>
<a href="rating.aspx" class="btn btn-primary">Rating</a>
</div>
    <div>
        <div class="row" id="divp"> 
            <div class="col-md-3 col-md-offset-5">
                <h3>Patient Profile</h3>
            </div>
            &nbsp;</div>
    </div>
<div class="container">
    <div class="row">
        <div class="col-md-4">
        <b>  <asp:Label ID="Lable" runat="server" Text="Name:"></asp:Label> </b>    &nbsp &nbsp &nbsp &nbsp  &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="name" runat="server" Text="Ali"></asp:Label> <br /> <br />
            <b>  <asp:Label ID="Label1" runat="server" Text="Patient ID:"></asp:Label> </b>    &nbsp &nbsp  &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="p_id" runat="server" Text="4521"></asp:Label> <br /> <br />
           <b>  <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label></b>   &nbsp &nbsp &nbsp &nbsp  &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp <asp:Label ID="age" runat="server" Text="27"></asp:Label> <br /> <br />
          <b>   <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label></b> &nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp    <asp:Label ID="gender" runat="server" Text="Male"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label></b>  &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp    <asp:Label ID="address" runat="server" Text="Madina Saida"></asp:Label>  <br /> <br />
                <b>   <asp:Label ID="Label9" runat="server" Text="City:"></asp:Label></b>  &nbsp&nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="city" runat="server" Text="Gujrat"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label13" runat="server" Text="Country:"></asp:Label></b> &nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp &nbsp    <asp:Label ID="country" runat="server" Text="Pakistan"></asp:Label>  <br /> <br />
             <b>   <asp:Label ID="Label15" runat="server" Text="Phone#:"></asp:Label></b>  &nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp    <asp:Label ID="number" runat="server" Text="0312-1234567"></asp:Label>  <br /> <br />
         <b>   <asp:Label ID="Label17" runat="server" Text="Email:"></asp:Label></b> &nbsp&nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp    <asp:Label ID="email" runat="server" Text="abc@gmail.com"></asp:Label>  <br /> <br />




             </div>
       &nbsp;
       <br />
      
        <br />
        <div  class="col-md-2  ">
          <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
        &nbsp;<br />
        <asp:FileUpload ID="FileUpload1" CssClass="btn btn-default" runat="server" />
        <br />
        <asp:Label ID="lableimg" runat="server">

                <img src="nn.jpg" class="img-responsive img-circle" runat="server" id="imgg" /> <br /> </asp:Label>
           &nbsp &nbsp  &nbsp <asp:Button class="btn btn-default" ID="Button1" runat="server" Text="Change Image" OnClick="Button1_Click" />
        </div>
        <div class="col-md-1 col-md-offset-1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </div>
</div>
    <div class="row chat-window col-xs-5 col-md-3" id="chat_window_1" style="margin-left:10px;z-index:1000;display:none">
        <div class="col-xs-12 col-md-12">
        	<div class="panel panel-default">
                <div class="panel-heading top-bar">
                    <div class="col-md-8 col-xs-8">
                        <h3 class="panel-title"><span class="glyphicon glyphicon-comment"></span> <span id="nextusername"></span></h3>
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
    <div>

        <div class="container">

            <div class="row">
                <div class="col-md-3 col-md-offset-8">
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
                </div>
       </div>
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
