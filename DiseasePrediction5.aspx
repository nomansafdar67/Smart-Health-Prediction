<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiseasePrediction5.aspx.cs" Inherits="WebApplication2.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div id="div1" style= " background-image:url(b1.jpg) ;height:510px;  width:100%; color:white; " class="img-responsive " >

        <div class="row">

            <h4 style="text-align:center">Analysis complete</h4>
            <div class="col-md-5 col-md-offset-2 animated wow slideInLeft">
                
                <br /> <br />
                <h5>
                    
                    
                    Suspected Diesease:    &nbsp &nbsp  
                    <asp:Label ID="Label1" BorderStyle="Inset" Width="250px" Height="50px" runat="server" Text="Label"></asp:Label>
                </h5>
                <br />
                    
                <asp:Label BorderStyle="Inset" Width="500px" Height="200px" runat="server">

                <b style="text-align:center" > " precaution is better than cure " </b>
                        <br /> <br />
                    If you want to contact with related doctor click on the suggest doctor button <br />
                    Dont be your own doctor contact with doctor for any deatail. 
                    
                </asp:Label>
            </div>
           <div class="col-md-2 col-md-offset-2">
               <br /> 
             &nbsp &nbsp  &nbsp&nbsp &nbsp  &nbsp  &nbsp    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
             <asp:button runat="server" text="Suggest Doctor" type="button" class="btn" style=" background-color:#AB082B; color:white;" OnClick="Unnamed1_Click"  /> 
          <br /> <br />
              
                <asp:GridView ID="GridView1" runat="server"  CellPadding="4" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </div> 
        </div>

   

      </div>
</asp:Content>
