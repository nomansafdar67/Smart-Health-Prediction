<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="wrap-login col-md-4 col-md-offset-4">
                <h2 style="margin-bottom:30px; text-align:center;"> User Login</h2>
  
  <div class="form-group">
    <label for="">Username</label>
     <asp:TextBox ID="TextBox2" runat="server" placeholder="Username"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Field Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="">Password</label>
     <asp:TextBox ID="TextBox1" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Field Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
       </div>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  <div class="checkbox">
    <label>
      <input type="checkbox"/> Remember me  
    </label>
  </div>
  <!-- <asp:button ID="Login" runat="server" type="submit" name="Submit" class="btn btn-default" Text="Login"/>
      -->
                <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click1" class="btn btn-default" />
              
               

                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              
               

                </div>
            
            </div>
        <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <p class="text-center" style="margin-top:30px">
                       <input type="button" id="forget" value="Forget Password" runat="server" class="btn btn-default"   onserverclick="forget_ServerClick"  />
                        
                    </p>
                </div>

        </div>
    </div>
        
</asp:Content>
