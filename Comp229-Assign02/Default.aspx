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
         <a href="Survey.aspx" title="CLick to enter Survey Page"><img src="Assets/Survey.png" runat="server"/></a>
    </div>

    <div>
         <asp:Label ID="lblSurveyDescription" runat="server" CssClass="SurveyText" Text="Please complete a quick survey to help us serve you better. This survey will capture your experience about you recent purchase of footwear" />
    </div>

    <div>
        <%--Aldo shoes Disclaimer/Privacy Statement is used since my product is shoe--%>
        
          <a href="http://www.aldoshoes.com/ca/en/privacyPolicy" target="_blank" title="Disclaimer"</a>
            
    </div>


</asp:Content>
