<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="app history.aspx.cs" Inherits="WebApplication2.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="btn-group btn-group-justified" >
  <a href="p profile.aspx" class="btn btn-primary">Profile</a>
  <a href="Appointment.aspx" class="btn btn-primary">Appointment</a>
  <a href="app history.aspx" class="btn btn-primary">Appointment History</a>
<a href="rating.aspx" class="btn btn-primary">Rating</a>
</div>
    <div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-2">
    <asp:GridView ID="GridView1" runat="server"  CellPadding="4" Height="226px" Width="713px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
     </asp:GridView>
            </div>
    </div>
        </div>
</asp:Content>
