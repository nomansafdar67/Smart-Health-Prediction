<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
     <div class="container-fluid"  style="background-image:url(Dubai-Doctors-Directory-Dubai-UAE.jpg)"; >
        
        <div class="row" style="margin-top:-30px; padding-bottom:10px;">
        <div class="wrap-login col-md-4 col-md-offset-7" >
               
                 <h2 style="margin-bottom:30px; text-align:center; color:#AB082B"> Sign Up </h2>
               <!-- <h4 style="text-align:center"> with </h4>
                <h5 style="text-align:center; color:#AB082B">Smart healt prediction</h5> -->
                 
  
  <div class="form-group">
      <asp:TextBox ID="firstn" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
      <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
      <asp:TextBox ID="lastn" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
      <asp:Label ID="Label2" runat="server" ForeColor="Red" Text=""></asp:Label>

  </div>
  <div class="form-group">
      <asp:TextBox ID="email" runat="server"  class="form-control" placeholder="E-mail" OnTextChanged="mail_TextChanged"></asp:TextBox>
      <asp:Label ID="Label3" runat="server" ForeColor="Red" Text=""></asp:Label>
  </div>
 
  <div class="form-group">
    <asp:TextBox ID="pass" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox> <br />
      <asp:Label ID="Label4" runat="server" ForeColor="Red" Text=""></asp:Label>
  </div>
  <div class="form-group">

    <asp:TextBox ID="conformpass" class="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
      <asp:Label ID="Label5" runat="server" ForeColor="Red" Text=""></asp:Label>
  </div>
                <div class="form-group">
				<asp:TextBox ID="gender" class="form-control" runat="server" placeholder="Gender" ></asp:TextBox>  
                    <asp:Label ID="Label6" ForeColor="Red" runat="server" Text=""></asp:Label>
                </div> 
        <div class="form-group">
   <asp:TextBox ID="address" class="form-control" runat="server" placeholder="Address"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" ForeColor="Red" Text=""></asp:Label>
  </div>         
              
  <div class="form-group">
   <asp:TextBox ID="age" class="form-control" runat="server" placeholder="Age"></asp:TextBox>
      <asp:Label ID="Label8" runat="server" ForeColor="Red" Text=""></asp:Label>
  </div>
                <div class="form-group">
   <asp:TextBox ID="phone" class="form-control" data-msg="enter phone #" runat="server" placeholder="Phone#"></asp:TextBox>
                    <asp:Label ID="Label9" runat="server" ForeColor="Red" Text=""></asp:Label>
  </div>


  <asp:button runat="server" Text="Sign Up" name="btn1" type="submit" class="btn  " style="float:right;color:white;" OnClick="signup_Click"/>
                
                </div>
            </div>
       

        </div>
   </div>
</asp:Content>
