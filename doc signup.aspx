<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="doc signup.aspx.cs" Inherits="WebApplication2.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div >
     <div class="container-fluid"  style="background-image:url(Dubai-Doctors-Directory-Dubai-UAE.jpg)"; >
        
        <div class="row">
            <div class="wrap-login col-md-4 col-md-offset-8">
               
                 <h2 style="margin-bottom:30px; text-align:center; color:#AB082B"> Sign Up </h2>
               <!-- <h4 style="text-align:center"> with </h4>
                <h5 style="text-align:center; color:#AB082B">Smart healt prediction</h5> -->
                 
  
  <div class="form-group">
      <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="require" runat="server" ForeColor="Red" ErrorMessage="Field required" ControlToValidate="name"></asp:RequiredFieldValidator> 
   
      <asp:TextBox ID="specialist" class="form-control" runat="server" placeholder="Disease Specialist"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorl" ForeColor="Red" runat="server" ErrorMessage="Field required" ControlToValidate="specialist"></asp:RequiredFieldValidator>
      
      <asp:TextBox ID="h_name" runat="server" class="form-control" placeholder="Hospital Name"></asp:TextBox>

  </div>
  <div class="form-group">
      <asp:TextBox ID="mail" runat="server"  class="form-control" placeholder="E-mail" ></asp:TextBox>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid E-mail" ControlToValidate="mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
  </div>
 
  <div class="form-group">
    <asp:TextBox ID="pass" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
      <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Too short or Too Long" ControlToValidate="pass" MaximumValue="4" MinimumValue="10"></asp:RangeValidator>
  </div>
  <div class="form-group">

    <asp:TextBox ID="conformpass" class="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Does not match" ControlToCompare="pass" ControlToValidate="conformpass" ForeColor="Red"></asp:CompareValidator>
  </div>
                <div class="form-group">
				
                  
                  <asp:TextBox ID="gender" class="form-control" runat="server" placeholder="Gender" ></asp:TextBox>  
                
            
			</div> 
        <div class="form-group">
   <asp:TextBox ID="add" class="form-control" runat="server" placeholder="Address"></asp:TextBox>
    
  </div>         
              
  <div class="form-group">
   <asp:TextBox ID="age" class="form-control" runat="server" placeholder="Age"></asp:TextBox>
    
  </div>
                <div class="form-group">
   <asp:TextBox ID="phone" class="form-control" data-msg="enter phone #" runat="server" placeholder="Phone#"></asp:TextBox>
    
  </div>


  <asp:button runat="server" Text="Sign Up" name="btn1" type="submit" class="btn  " style="float:right;color:white;" OnClick="docsignup_click" />
                
                </div>
            </div>
       

        </div>
   </div>
</asp:Content>
