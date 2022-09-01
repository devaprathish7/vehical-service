<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorHome.master" AutoEventWireup="true" CodeFile="PatientReport.aspx.cs" Inherits="PatientReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style2
{ font-size:25px;
  color:Orange;
  font-family:Times New Roman;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left:200px;float:left; height:128px; margin-right:200px"
<tr><td class="style2">Customer List<strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="white" 
        BackColor="DarkGray" RowStyle-Font-Size="Large" CellSpacing ="10"  
        HeaderStyle-Font-Size="X-Large"  HeaderStyle-Font-Bold="true" 
        DataSourceID="SqlDataSource1" 
        AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="EMailID" HeaderText="EMailID" 
                SortExpression="EMailID" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
<HeaderStyle Font-Bold="True" Font-Size="X-Large"></HeaderStyle>

<RowStyle BackColor="White" Font-Size="Large"></RowStyle>
        </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [ID], [Name], [EMailID], [Time], [Status] FROM [Conform]"></asp:SqlDataSource>
        </td>
    </table>
    
</asp:Content>

