<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiseasePrediction2.aspx.cs" Inherits="WebApplication2.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="div1" style= " background-image:url(b1.jpg) ;height:510px;  width:100%; color:white; " class="img-responsive " >
      <div class="row">
   <div class="col-md-6 col-md-offset-4   animated wow slideInLeft  ">
       &nbsp&nbsp&nbsp <h5> Are you experiences any of these Symptoms too ?</h5>
       

   </div>
        </div>
        <br /> <br />
        <div class="row">
            <div class="col-md-4 col-md-offset-6  animated wow slideInLeft ">
               <p>  Vomiting </p>
                 <p> Eye pain </p>
                <p> Pale eyes </p>

                </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-5  animated wow slideInLeft"> 
                <br /> <br /> <br />  
               <div style="color:black;">
            Please Select :   <asp:DropDownList ID="DropDownList2" value="Select any symptom"  runat="server" Height="29px" Width="182px">
                    <asp:ListItem>--Select any  symptoms-- </asp:ListItem>
                    <asp:ListItem Value="vomiting">Vomiting</asp:ListItem>
                    <asp:ListItem Value="eye pain">Eye pain</asp:ListItem>
                    <asp:ListItem Value="pale eyes">Pale eyes</asp:ListItem>
                </asp:DropDownList>
                    
                     &nbsp &nbsp &nbsp <asp:Label ForeColor="Red" ID="Label1" runat="server" style="font-size:larger" ></asp:Label><br /> 
         &nbsp &nbsp    &nbsp &nbsp  &nbsp &nbsp    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <asp:button type="button" runat="server" class="btn" Text="Next" style=" background-color:#AB082B; color:white;" OnClick="Unnamed1_Click" />    
                   </div> 
            </div>
            </div>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
    </div>
</asp:Content>
