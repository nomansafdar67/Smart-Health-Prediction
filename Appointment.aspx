<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="WebApplication2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="btn-group btn-group-justified" >
  <a href="p profile.aspx" class="btn btn-primary">Profile</a>
  <a href="Appointment.aspx" class="btn btn-primary">Appointment</a>
  <a href="app history.aspx" class="btn btn-primary">Appointment History</a>
<a href="rating.aspx" class="btn btn-primary">Rating</a>
</div>
    <div  style="background-image:url(slider2.png);height:800px;width:100%;" class="img-responsive">
         <div class="row">
            <div class="wrap-login col-md-8 col-md-offset-2" style="opacity:0.8; background-color:#1B3146;color:white;">
           <div style="text-align:center"> <h3 > Appointment </h3>
                        </div>
  <div class="form-group">
   
     <asp:TextBox ID="TextBox2" runat="server" placeholder="Doctor Name"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" ForeColor="Red" runat="server" ErrorMessage="*Field required"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
  
     <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="*Field required"></asp:RequiredFieldValidator>
  </div>
                
 <div class="form-group">
   
     <asp:TextBox ID="TextBox3" runat="server" placeholder="Disease"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ForeColor="Red" ErrorMessage="*Field required"></asp:RequiredFieldValidator>
      
  </div>




                <div class="form-group">
   
     <asp:TextBox ID="TextBox4" runat="server"  placeholder="DD/MM/YY"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TextBox4" runat="server" ErrorMessage="*Field required"></asp:RequiredFieldValidator>
  </div>
   <asp:button ID="appointment" runat="server" type="submit" name="Submit" class="btn btn-default" Text="Submit" OnClick="appointment_Click" />
      
                
               

                </div>
            
            </div>
        
        
    

    </div>
</asp:Content>
