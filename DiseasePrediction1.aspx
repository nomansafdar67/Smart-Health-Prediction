<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiseasePrediction1.aspx.cs" Inherits="WebApplication2.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container" style=" background-image:url(b1.jpg) ;height:510px;  width:100%; color:white; ">
       <div class="row">
           
<p style="color:red; text-align:match-parent;" >
        &nbsp&nbsp &nbsp &nbsp &nbsp        Note* This is a prediction system it is not 100% acurate .
           </p>

               
              <br />  
            <br /> <br /> <br />  <br />  <br />

           <div class="col-md-4 col-md-offset-2">
               <p>Please select any Symptoms</p>
               
                

              </div>
            <div class="col-md-4" style="color:black;">
                <asp:DropDownList ID="DropDownList1" value="Select any symptom"  runat="server" Height="29px" Width="182px">
                    <asp:ListItem>--Select any  symptoms-- </asp:ListItem>
                    <asp:ListItem Value="fever">fever</asp:ListItem>
                    <asp:ListItem Value="poor appetite">poor appetite</asp:ListItem>
                    <asp:ListItem Value="wheezing">wheezing</asp:ListItem>
                    
                </asp:DropDownList> 
                &nbsp&nbsp&nbsp&nbsp <asp:Label ForeColor="Red" ID="Label1" runat="server" style="font-size:larger" ></asp:Label>
             <br /> <br /> <br />
                &nbsp&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <asp:Button ID="Button1" runat="server" Text="Next" class="btn" style=" background-color:#AB082B; color:white; " OnClick="Button1_Click" />
                
                 
                
                  </div>
      </div>
        
            
               
                  
         
      
   </div>
</asp:Content>
