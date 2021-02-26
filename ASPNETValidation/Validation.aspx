<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="ASPNETValidation.Validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    <div>
        <asp:Label ID="Label3" runat="server" Style="top: 241px; left: 70px; position: absolute; height: 22px; width: 128px; bottom: 282px;"
            Text="Enter your email id:"></asp:Label>
        <asp:Label ID="Label1" runat="server" Style="top: 54px; left: 74px; position: absolute; height: 22px; width: 128px"
            Text="Enter your name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="top: 54px; left: 221px; position: absolute; height: 22px; width: 128px; right: 396px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Style="top: 56px; left: 378px; position: absolute; height: 22px; width: 128px"
            ErrorMessage="RequiredFieldValidator"
            ControlToValidate="TextBox1">name is   
        mandatory </asp:RequiredFieldValidator>
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Style="top: 311px; left: 267px; position: absolute; height: 26px; width: 61px"
            Text="Submit" OnClick="Button1_Click" />
    </p>
    <asp:TextBox ID="TextBox3" runat="server" Style="top: 145px; left: 217px; position: absolute; height: 22px; width: 131px"
        TextMode="Password"></asp:TextBox>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Style="top: 101px; left: 218px; position: absolute; height: 22px; width: 131px"
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="top: 105px; left: 74px; position: absolute; height: 22px; width: 128px"
            Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Style="top: 239px; left: 210px; position: absolute; height: 22px; width: 134px"></asp:TextBox>
    </p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Style="top: 98px; left: 367px; position: absolute; height: 26px; width: 162px"
        ErrorMessage="password required"
        ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Style="top: 145px; left: 367px; position: absolute; height: 26px; width: 162px"
        ErrorMessage="password required"
        ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" Style="top: 149px; left: 512px; position: absolute; height: 26px; width: 162px"
        ErrorMessage="CompareValidator"
        ControlToValidate="TextBox3" ValueToCompare="hello"></asp:CompareValidator>
    <p>
        <asp:Label ID="Label5" runat="server" Style="top: 148px; left: 71px; position: absolute; height: 22px; width: 128px; bottom: 375px;"
            Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="top: 194px; left: 212px; position: absolute; height: 22px; width: 140px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Style="top: 194px; left: 71px; position: absolute; height: 22px; width: 128px; bottom: 329px;"
            Text="Enter your age:"></asp:Label>
    </p>
    <asp:RangeValidator ID="RangeValidator1" runat="server" Style="top: 194px; left: 365px; position: absolute; height: 22px; width: 105px"
        ErrorMessage="RangeValidator"
        ControlToValidate="TextBox4" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Style="top: 234px; left: 366px; position: absolute; height: 22px; width: 177px"
        ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox5"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <asp:Label ID="Label2" runat="server" Text="User ID:"></asp:Label>  
 <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>  
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"   
            ControlToValidate="TextBox1" ErrorMessage="User id required"></asp:RequiredFieldValidator>   
    
        <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="UserCustomValidate"  
            ControlToValidate="TextBox1"   
            ErrorMessage="User ID should have at least a capital, small and digit and should be greater than 5 and less  
than 26 letters"   
            SetFocusOnError="True"></asp:CustomValidator>  
    
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
