<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Comp229_Assign02.ThankYou" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Thank You For Completing the Survey!!!
    </h2>
    <asp:Label runat="server" ID="name"></asp:Label>
    <asp:Label runat="server" ID="email"></asp:Label>
    <asp:Label runat="server" ID="phone"></asp:Label>
    <asp:Label runat="server" ID="rbcust"></asp:Label>
    <asp:Label runat="server" ID="YesNo"></asp:Label>
    
</asp:Content>
