<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rating.aspx.cs" Inherits="WebApplication2.WebForm19" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    
 
    

   

</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="btn-group btn-group-justified" >
  <a href="p profile.aspx" class="btn btn-primary">Profile</a>
  <a href="Appointment.aspx" class="btn btn-primary">Appointment</a>
  <a href="app history.aspx" class="btn btn-primary">Appointment History</a>
<a href="rating.aspx" class="btn btn-primary">Rating</a>
</div>
    <div class="row">
        <div class="col-md-3 col-md-offset-4">
            <br /> <br /> <br />
   <b> <asp:Label runat="server" text="Give us Rating :"></asp:Label> </b>
    <asp:DropDownList ID="DropDownList1" runat="server">
       <asp:ListItem>Give Rating</asp:ListItem>
         <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:DropDownList>

            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
            <br /> <br />
  &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp 
             <asp:Button ID="Button1" CssClass="btn btn-default " runat="server" Text="Submit" OnClick="Button1_Click" />

            </div>
</div>
</asp:Content>
