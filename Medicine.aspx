<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Medicine.aspx.cs" Inherits="WebApplication2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   


     <script type="text/javascript">
        $(document).ready(function () {
            $("#textb").autocomplete({
                source :   'MedicineHandler.ashx'
            
            });
        });
     </script>
    <div style= " background-image:url(b1.jpg) ;height:510px;  width:100%; color:white; " class="img-responsive " >
    <div class="container">
        <div class="row" >
            
            <div class="col-md-6 col-md-offset-3">
               <!-- <div class=" " role="search" style="color:white; float:right;" >
                        <div class="form-group waves-effect waves-light" style="color:white">
                            <input type="text" id="textbox" class="form-control" placeholder="Search Doctor" />
                        </div>
                   -->
                
              
                  <asp:TextBox ID="textb" PlaceHolder="Search Medicine Here"  runat="server" ForeColor="Black"></asp:TextBox>
            </div>
                 <br /> <br /> 
                    <asp:Button  ID="Button1" class="btn btn-default; hide" runat="server" OnClick="Button1_Click" Text="Button"  />
                    <br /> 
                    
               
<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                   
                      </div> 
                   
               
        </div>
    <br />
    <br />
    
    <div class="row">
        <div class="col-md-4 col-md-offset-3" style="height:250px; width:200px; top: 0px; left: 0px;">
                     
                     
                     
          &nbsp;&nbsp;&nbsp; <div class="text-center">  <asp:GridView Font-Size="15px" CssClass="table table-hover " ID="GridView1" Width="503px" CellPadding="10" runat="server" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" />
              <headerstyle  backcolor="#009688" forecolor="White"/>
                <Columns>
                    <asp:BoundField DataField="Medicine Id" HeaderText="Medicine Id" InsertVisible="False" ReadOnly="True" SortExpression="Medicine Id" />
                    <asp:BoundField DataField="Medicine name" HeaderText="Medicine name" SortExpression="Medicine name" />
                    <asp:BoundField DataField="Mg" HeaderText="Mg" SortExpression="Mg" />
                    <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                    <asp:HyperLinkField DataNavigateUrlFields="Medicine Id" DataNavigateUrlFormatString="https://www.google.com/maps/search/Butt+Medical+Store,+Gujrat,+Pakistan/@32.5763312,74.0815835,16z/data=!3m1!4b1" DataTextField="Location" HeaderText="Location" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
              
               </div>                                                                               
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SHPConnectionString %>" SelectCommand="SELECT * FROM [tbl_med] WHERE ([Medicine name] = @Medicine_name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="textb" Name="Medicine_name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                                                                                              
    </div>
    
    </div>
        </div>
</asp:Content>
