﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminconfCANCEL.aspx.cs" Inherits="AdminconfCANCEL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style2
{ font-size:20px;
  color:Orange;
  font-family:Times New Roman;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div class="style2">Cancel Request </div>--%>
 <table style="margin-left:50px;float:left;height:128px;margin-top:10px;margin-right:50px; width: 400px">
  <tr class="style2">
  <td>Cancel Request</td></tr>
  <tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-Font-Size="Large" CellSpacing ="2"  
        HeaderStyle-Font-Size="Larger"  HeaderStyle-Font-Bold="true" 
        AutoGenerateColumns="False"  DataSourceID="SqlDataSource1"   
        AllowSorting="True"   BackColor="DarkGray" 
        onselectedindexchanged="grview_SelectedIndexChanged" >

              <Columns>
           <asp:BoundField DataField="PatientName" HeaderText="PatientName" 
               SortExpression="PatientName"/>
           <asp:BoundField DataField="EMailID" HeaderText="EMailID" 
               SortExpression="EMailID"/>
           <asp:BoundField DataField="Reason" HeaderText="Reason" 
               SortExpression="Reason"/>
           <asp:BoundField DataField="AllotedTime" HeaderText="AllotedTime" 
               SortExpression="AllotedTime"/>
               
       </Columns>
       <HeaderStyle Font-Bold="True" Font-Size="Larger"></HeaderStyle>
<RowStyle BackColor="White" Font-Size="Large"></RowStyle>
        </asp:GridView> 
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [PatientName], [EMailID], [Reason], [AllotedTime] FROM [CanApp]">
        </asp:SqlDataSource></td></tr>
</table>
</asp:Content>

