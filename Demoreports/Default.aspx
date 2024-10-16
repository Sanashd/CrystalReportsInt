<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demoreports._Default" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        
    </div>

    <div> 

        <asp:DropDownList ID="DropDownList1" runat="server" Width="241px" Height="71px">
             <asp:ListItem Text="Select Report" Value=""></asp:ListItem>
            <asp:ListItem Text="Employee Report" Value="Employeesapcr.rpt"></asp:ListItem>
            <asp:ListItem Text="Card Code Report" Value="Cardcodesapreport.rpt"></asp:ListItem>
            <asp:ListItem Text="Items Report" Value="Itemssapreport.rpt"></asp:ListItem>
              <%--<asp:ListItem Text="Items Report" Value="Itemssapreport.rpt"></asp:ListItem>--%>
             <asp:ListItem Text="Labs Sample Report" Value="Labs Sample Report.rpt"></asp:ListItem>
        </asp:DropDownList>
      
    </div>
    <div> 

    </div>
    <div> 

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Load Report" Width="171px" BackColor="#006600" ForeColor="White" Height="50px" />

    </div>

    <div> 

        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />

    </div>

</asp:Content>
