<%--Filename: Survey.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-02--%>

<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <asp:Label ID="SurveyPage" runat="server" CssClass="SurveyTitle" />
    </div>

    <!--Declaring Name Text Box with RequiredFieldValidator and Error Message-->
    <div>
        <input type="text" placeholder="Name" id="txtName" runat="server" class="NameTextBox" />*
        
        <asp:RequiredFieldValidator ID="namerequired" runat="server" ValidationGroup="check" ValidateRequestMode="Enabled"
            ControlToValidate="txtName"
            ErrorMessage="Please Enter Your Name"
            SetFocusOnError="true" Display="Dynamic" ForeColor="Red" />
    </div>

    <!--Declaring EmailID Text Box with RegularExpressionValidator & RequiredFieldValidator and Error Message-->
    <div>
        <input type="text" placeholder="Email ID" id="txtEmail" runat="server" class="EmailTextBox" />*

        <asp:RegularExpressionValidator ID="Emailrequired" runat="server" ValidationGroup="check"
            ControlToValidate="txtEmail"
            ValidationExpression="^\S+@\S+\.\S+$"
            ErrorMessage="Please Enter a Valid Email ID"
            SetFocusOnError="true" Display="Dynamic" ForeColor="Red" />

        <asp:RequiredFieldValidator ID="Emailrequired1" runat="server" ValidationGroup="check"
            ControlToValidate="txtEmail"
            ErrorMessage="Please Enter an Email ID"
            SetFocusOnError="true" Display="Dynamic" ForeColor="Red" />
    </div>

    <!--Declaring Phone Number Text Box with RequiredFieldValidator and Error Message-->
    <div>
        <input type="text" placeholder="(000)-000-0000" id="txtPhNum" runat="server" class="PhoneNumberTxt" />*

        <asp:RequiredFieldValidator ID="PNrequired" runat="server" ValidationGroup="check"
            ControlToValidate="txtPhNum"
            ErrorMessage="Please Enter Your Phone Number"
            SetFocusOnError="true" Display="Dynamic" ForeColor="Red" />

        <asp:RegularExpressionValidator ID="PNrequired1" runat="server" ValidationGroup="check"
            ControlToValidate="txtPhNum"
            ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
            ErrorMessage="Please Enter a Valid Phone Number"
            SetFocusOnError="true" Display="Dynamic" ForeColor="Red" />
    </div>

    <!--Declaring CustomerSatisfaction RadioButton with RequiredFieldValidator and Error Message-->
    <%--Cheked=true will select value by default. Value helps to check only one radio button at a time--%>
    <div>
        <h4>How satisfied are you with your recent shopping experience?</h4>
        <asp:RadioButtonList ID="rbCustSat" runat="server">
            <asp:ListItem Text="Very Satisfied" Value="Very Satisfied" Selected="True" />
            <asp:ListItem Text="Satisfied" Value="Satisfied" />
            <asp:ListItem Text="Somewhat Satisfied" Value="Somewhat Satisfied" />
            <asp:ListItem Text="Not Satisfied" Value="Not Satisfied" />
        </asp:RadioButtonList>
    </div>

    <div>
        <h4>Would you recommend our brand to your friend?</h4>
        <asp:DropDownList ID="YN" runat="server">
            <asp:ListItem Text="" Value=""></asp:ListItem>
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
            <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
    </div>

    <!--Declaring ValidationSummary-->
    <div>
        <asp:ValidationSummary ID="valsum" DisplayMode="BulletList" runat="server" ShowSummary="true" />
    </div>

    <%--Validates if all the reuired fields and navigated to ThankYou page after entering all the fields--%>
    <div>
        <asp:Button ID="TYpage" BackColor="Coral" Text="Click to Complete Survey" runat="server" CssClass="SubmitButton" OnClick="TYpage_Click" ValidationGroup="check" />
    </div>

</asp:Content>

