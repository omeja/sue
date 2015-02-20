<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Region.aspx.cs" Inherits="Region" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:Label ID="Label13" runat="server" Style="z-index: 100; left: 196px; position: absolute;
        top: 209px" Text="Country:"></asp:Label>
    <asp:Label ID="Label12" runat="server" Style="z-index: 101; left: 160px; position: absolute;
        top: 162px" Text="Region Name:"></asp:Label>
    <asp:DropDownList ID="cboCountry" runat="server" Style="z-index: 102; left: 271px;
        position: absolute; top: 208px" Width="149px" DataSourceID="SqlDataSource1" DataTextField="Country_Name" DataValueField="Country_Code">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Countries]"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 103;
        left: 252px; position: absolute; top: 275px" Text="Save" />
    <asp:TextBox ID="txtRegionName" runat="server" Style="z-index: 104; left: 273px;
        position: absolute; top: 160px"></asp:TextBox>
    <asp:TextBox ID="txtRegionCode" runat="server" Style="z-index: 105; left: 275px;
        position: absolute; top: 121px"></asp:TextBox>
    <asp:Label ID="Label11" runat="server" Style="z-index: 107; left: 158px; position: absolute;
        top: 122px" Text="Region Code:"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

