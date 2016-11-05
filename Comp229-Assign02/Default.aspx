<%--Filename: Default.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-02--%>


<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <asp:Label ID="lblPageTitle" runat="server" CssClass="TitleStyle" />
    </div>

    <div>
        <%--Image Source=http://www.livestrong.com/article/236028-the-best-running-shoes-for-heel-support/--%>
        <img src="Assets/Shoe.jpg" runat="server" />
    </div>

    <div class="SurveyImage">
        <%--Image Source=http://digiclickmoney.com/earn-free-online-from-few-more-reputed-online-survey-sites/--%>
        <a href="Survey.aspx" title="Click to enter Survey Page">
            <img src="Assets/Survey.png" runat="server" /></a>
    </div>

    <div>
        <asp:Label ID="lblSurveyDescription" runat="server" CssClass="SurveyText" Text="Please complete a quick survey to help us serve you better. This survey will capture your experience about your recent purchase of footwear" />
    </div>
    
</asp:Content>
