<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorHome.master" AutoEventWireup="true" CodeFile="Copy of PatientReport.aspx.cs" Inherits="PatientReport" %>

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
    <table style="margin-left:200px;float:left; height:128px;margin-right:200px"
<tr><td class="style2">Customer List<strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="white" 
        BackColor="DarkGray" RowStyle-Font-Size="Large" CellSpacing ="10"  
        HeaderStyle-Font-Size="X-Large"  HeaderStyle-Font-Bold="true" 
        DataSourceID="SqlDataSource1"  AutoGenerateColumns="False">
           <Columns>
        <asp:BoundField DataField="PatientName" HeaderText="PatientName" 
            SortExpression="PatientName"/>
        <asp:BoundField DataField="EMailID" HeaderText="EMailID" 
            SortExpression="EMailID" />
        <asp:BoundField DataField="Reason" HeaderText="Reason" 
            SortExpression="Reason" />
        <asp:BoundField DataField="AllotedTime" HeaderText="AllotedTime" 
            SortExpression="AllotedTime"/>
    </Columns>
      <HeaderStyle Font-Bold="True" Font-Size="X-Large"></HeaderStyle>
      <RowStyle BackColor="White" Font-Size="Large"></RowStyle>
        </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
                SelectCommand="SELECT [PatientName], [EMailID], [Reason], [AllotedTime] FROM [CanApp]"></asp:SqlDataSource>
        </td></tr>
    </table>
    </asp:Content>

