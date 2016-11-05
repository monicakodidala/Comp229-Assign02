<%--Filename: ThankYou.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-04--%>

<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Comp229_Assign02.ThankYou" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="ThankYouPage" runat="server" CssClass="ThankYouTitle" />
    </div>
    <br />

    <table>
        <tr>
            <td>Name:</td>
            <td><asp:Label runat="server" ID="name"></asp:Label></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><asp:Label runat="server" ID="email"></asp:Label></td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td><asp:Label runat="server" ID="phone"></asp:Label></td>
        </tr>
        <tr>
            <td>How satisfied are you with your recent shopping experience?</td>
            <td><asp:Label runat="server" ID="rbcust"></asp:Label></td>
        </tr>
        <tr>
            <td>Would you recommend our brand to your friend?</td>
            <td><asp:Label runat="server" ID="YesNo"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
