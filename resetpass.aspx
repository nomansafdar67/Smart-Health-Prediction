<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="resetpass.aspx.cs" Inherits="WebApplication2.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
   <div class="container">
        <div class="row">
            <div class="wrap-login col-md-4 col-md-offset-4">
                <h3 style="margin-bottom:30px; text-align:center;"> Reset Password</h3>
  
  <div class="form-group">
    
     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="New password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Field Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    
     <asp:TextBox ID="TextBox1" runat="server" placeholder="Confirm password" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Field Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
       </div>
              

                <asp:Button ID="Button1" runat="server" Text="Save" style="float:right" class="btn btn-default" OnClick="Button1_Click1" />
              
               

                </div>
  </div>
            
            </div>
    
</asp:Content>
