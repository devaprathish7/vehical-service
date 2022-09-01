<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DocorStatus.aspx.cs" Inherits="DocorStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style2
{ font-size:20px;
  color:Purple;
  font-family:Times New Roman;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left:50px;float:left; height:200px;margin-right:200px" width="550px"
<tr><td class="style2">Spare Request<strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="white" 
        BackColor="BurlyWood" RowStyle-Font-Size="Large" CellSpacing ="2"  
        HeaderStyle-Font-Size="Larger"  HeaderStyle-Font-Bold="true" 

       AutoGenerateColumns="False"  DataSourceID="SqlDataSource1"  
        AllowSorting="True" onselectedindexchanged="grview_SelectedIndexChanged">
        <Columns>
        <asp:TemplateField headertext="Name">
        <HeaderStyle HorizontalAlign="Left" Width="200px" />
        <ItemStyle HorizontalAlign="Left" Width="200px"/>
        <ItemTemplate>
            <asp:Label ID="lblName" 
                       runat="server" Text='<%#Eval("Name")%>'/>
        </ItemTemplate>
            </asp:TemplateField>
           <%-- <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />--%>
            <asp:TemplateField headertext="EMailID">
        <HeaderStyle HorizontalAlign="Left" Width="200px" />
        <ItemStyle HorizontalAlign="Left" Width="200px"/>
        <ItemTemplate>
            <asp:Label ID="lblEMailID" 
                       runat="server" Text='<%#Eval("EMailID")%>'/>
        </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:BoundField DataField="EMailID" HeaderText="EMailID" 
                SortExpression="EMailID" />--%>

                 <asp:TemplateField headertext="Date">
        <HeaderStyle HorizontalAlign="Left" Width="200px" />
        <ItemStyle HorizontalAlign="Left" Width="200px"/>
        <ItemTemplate>
            <asp:Label ID="lblDate" 
                       runat="server" Text='<%#Eval("Date")%>'/>
        </ItemTemplate>
            </asp:TemplateField>

           <%-- <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />--%>

            <asp:TemplateField headertext="PermisisionReason">
        <HeaderStyle HorizontalAlign="Left" Width="200px" />
        <ItemStyle HorizontalAlign="Left" Width="200px"/>
        <ItemTemplate>
            <asp:Label ID="lblPermisisionReason" 
                       runat="server" Text='<%#Eval("PermisisionReason")%>'/>
        </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:BoundField DataField="PermisisionReason" HeaderText="PermisisionReason" 
                SortExpression="PermisisionReason" />--%>
                <asp:TemplateField>
                <ItemTemplate><asp:Button ID="button" runat="server" Text="Approve"  OnClick="appove_Now"/></ItemTemplate>
                </asp:TemplateField>
         
                  </Columns>
<HeaderStyle Font-Bold="True" Font-Size="Larger"></HeaderStyle>

<RowStyle BackColor="White" Font-Size="Large"></RowStyle>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [Name], [EMailID], [Date], [PermisisionReason] FROM [DoctorR]">
    </asp:SqlDataSource>
    </td>
        </table>
</asp:Content>

