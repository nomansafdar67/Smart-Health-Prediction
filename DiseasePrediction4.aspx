<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiseasePrediction4.aspx.cs" Inherits="WebApplication2.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="div1" style= " background-image:url(b1.jpg) ;height:510px;  width:100%; color:white; " class="img-responsive " >
      <div class="row">
   <div class="col-md-6 col-md-offset-4 animated wow slideInLeft">
       &nbsp&nbsp&nbsp <h5> Are you experiences any of thes Symptoms too ?</h5>
       

   </div>
        </div>
        <br /> <br />
        <div class="row">
            <div class="col-md-4 col-md-offset-6 animated wow slideInLeft">
               <p>  Headache </p>
                 <p> Stomach pain </p>
                <p> Chest pain </p>

                </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-5"> 
                <br /> <br /> <br />  
               <div style="color:black;">
            Please Select :   <asp:DropDownList ID="DropDownList4" value="Select any symptom"  runat="server" Height="29px" Width="182px">
                    <asp:ListItem>--Select any  symptoms-- </asp:ListItem>
                    <asp:ListItem Value="Headache">Headache</asp:ListItem>
                    <asp:ListItem Value="stomach pain">stomach pain</asp:ListItem>
                    <asp:ListItem Value="chest pain">chest pain</asp:ListItem>
                </asp:DropDownList>
                    
                     &nbsp &nbsp &nbsp <asp:Label ForeColor="Red" ID="Label1" runat="server" style="font-size:larger" ></asp:Label><br /> 
         &nbsp &nbsp    &nbsp &nbsp  &nbsp &nbsp    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <asp:button runat="server" text="Next" type="button" class="btn" style=" background-color:#AB082B; color:white;" OnClick="Unnamed1_Click" />  
                   </div> 
            </div>
            </div>
        </div>

        <br /> <br /> <br /><asp:GridView ID="GridView11" runat="server"></asp:GridView>
    </div>

</asp:Content>
