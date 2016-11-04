<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div>
        <asp:Label ID="SurveyPage" runat="server" CssClass="SurveyTitle" />
    </div>

    <!--Declaring Name Text Box with RequiredFieldValidator and Error Message-->

    <div>
        <input type="text" placeholder="Name" id="txtName" runat="server"  />

    <asp:RequiredFieldValidator ID="namerequired" runat="server" ValidationGroup="check" ValidateRequestMode="Enabled"
        ControlToValidate="txtName"
        ErrorMessage="Please Enter Your Name"
        SetFocusOnError="true" Display="Dynamic" ForeColor="Red"
      />
    </div>


     <!--Declaring EmailID Text Box with RegularExpressionValidator and Error Message-->

    <div>
        <%--<input type="text" placeholder="Email ID" id="txtEmail" runat="server" />--%>
        <asp:TextBox id="txtEmail" runat="server"  />

    <asp:RegularExpressionValidator ID="Emailrequired" runat="server" ValidationGroup="check"
        ControlToValidate="txtEmail"
        ValidationExpression="^\S+@\S+\.\S+$"
        ErrorMessage="Please Enter a valid Email ID"
        SetFocusOnError="true" Display="Dynamic" ForeColor="Red"
      />
    </div>

 <!--Declaring Phone Number Text Box with RequiredFieldValidator and Error Message-->

    <div>
        <input type="text" placeholder="(000)-000-0000" id="txtPhNum" runat="server" />

    <asp:RequiredFieldValidator ID="PNrequired" runat="server" ValidationGroup="check"
        ControlToValidate="txtPhNum"
        ErrorMessage="Please Enter Your Phone Number"
        SetFocusOnError="true" Display="Dynamic" ForeColor="Red"
      />
    </div>

 <!--Declaring CustomerSatisfaction RadioButton with RequiredFieldValidator and Error Message-->
<%--Cheked=true will select value by default. Value helps to check only one radio button at a time--%>
<div>
    <h4>How well are you satisfied with your recent shopping experience?</h4>
    <%--<asp:RadioButton id="VerySatisfied" text="Very Satisfied" runat="server" Checked="true" />
    <asp:RadioButton id="Satisfied" text="Satisfied" runat="server"  />
    <asp:RadioButton id="SomewhatSatisfied" text="Somewhat Satisfied" runat="server"  />
    <asp:RadioButton id="NotSatisfied" text="Not Satisfied" runat="server"  />--%>

    <asp:RadioButtonList id="rbCustSat" runat="server">
        <asp:ListItem Text="Very Satisfied" Value="1" Selected="True"/>
        <asp:ListItem Text="Satisfied" Value="2" />
        <asp:ListItem Text="Somewhat Satisfied" Value="3" />
        <asp:ListItem Text="Not Satisfied" Value="4" />
    </asp:RadioButtonList>
</div>

<div>
    <h4>Would you recommend our brand to your friend?</h4>
    <asp:CheckBoxList ID="YN" runat="server">
        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
        <asp:ListItem Text="No" Value="Yes"></asp:ListItem>
    </asp:CheckBoxList>

</div>

<%--Declaring Submit Button with ValidationSummary--%>
   <!--Submit Button -->
    <div>
        
        <%--<input type="button" title="Send" value="Send" class="SendButton" id="ButSub" ValidationGroup="check" onclick="buttonClicked();" />--%>
        <asp:Button id="ButSub" Text="Send" runat="server" ValidationGroup="check"/>
   <!--Validation Summary -->
        <asp:ValidationSummary ID="valsum" DisplayMode="BulletList" runat="server" ShowSummary="true" />
    </div>
    
  

   
</asp:Content>

