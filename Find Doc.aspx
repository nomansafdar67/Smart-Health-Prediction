<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Find Doc.aspx.cs" Inherits="WebApplication2.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>  <div class="col-md-6 col-md-offset-3" style="background-color:white">
    <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  ForeColor="#333333" GridLines="None" Height="200px" Width="400px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="did" DataNavigateUrlFormatString="d profile.aspx?did={0}" DataTextField="name" HeaderText="Doctor Name" />
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
      </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SHP %>" SelectCommand="SELECT [did], [name] FROM [tbl_docsignup] WHERE ([name] = @name)">
        <SelectParameters>
            <asp:SessionParameter Name="name" SessionField="name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br /> <br />
    
</asp:Content>
