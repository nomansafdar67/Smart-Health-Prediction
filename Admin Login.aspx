<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Login.aspx.cs" Inherits="WebApplication2.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
   
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">

    <div class="container">
        <div class="row">
            <div class="wrap-login col-md-4 col-md-offset-4">
                <h2 style="margin-bottom:30px; text-align:center;"> Admin Login</h2>
  
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
  
  <!-- <asp:button ID="Login" runat="server" type="submit" name="Submit" class="btn btn-default" Text="Login"/>
      -->
                <asp:Button ID="Button1" runat="server" Text="LogIn" class="btn btn-default" OnClick="Button1_Click" />
              
               

                </div>
            
            </div>
       
        </div>
   
        
    </form>
</body>
</html>
