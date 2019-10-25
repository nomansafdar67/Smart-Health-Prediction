<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplication2.WebForm20" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="feedback.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    


    <div id="w">
    <h1>Feedback!</h1>
    
    <asp:form id="contactform"   name="contact" method="post" action="#">
      <p class="note"><span class="req">*</span> Asterisk fields are required</p>
      <div class="row">
        <label for="name">Your Name <span class="req">*</span></label>
      <asp:TextBox ID="TextBox1" runat="server" class="txt" placeholder="Steve Jobs"></asp:TextBox>
      </div>
        
        
      <div class="row">
        <label for="email">E-mail Address <span class="req">*</span></label>
        <asp:TextBox ID="TextBox2" runat="server" Class="txt" placeholder="address@domain.com"></asp:TextBox>
          
      </div>
      
      <div class="row">
        <label for="subject">Subject <span class="req">*</span></label>
          <asp:TextBox ID="TextBox3" runat="server" Class="txt" placeholder="Advertising/Suggestion"></asp:TextBox>
          
      </div>
      
      <div class="row">
        <label for="message">Message <span class="req">*</span></label>
        
          <textarea name="message" runat="server" id="message" class="txtarea" tabindex="4" ></textarea>
      </div>
        
        
      
      <div class="center">
     
          <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Send Message" OnClick="Button1_Click" />
          
          
           </div>
      
    </asp:form>
  </div>


</asp:Content>
