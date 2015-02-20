<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Human Factor.aspx.cs" Inherits="Human_Factor" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="txtarts" runat="server" Style="z-index: 100; left: 275px; position: absolute;
        top: 180px" Font-Names="Verdana" Font-Size="8pt" TabIndex="4"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="txtup" runat="server" Style="z-index: 101; left: 275px; position: absolute;
        top: 73px" Font-Names="Verdana" Font-Size="8pt" TabIndex="1"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:TextBox ID="txtlocal" runat="server" Style="z-index: 102; left: 275px; position: absolute;
        top: 150px" Font-Names="Verdana" Font-Size="8pt" TabIndex="3"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtarea6" runat="server" Style="z-index: 103; left: 275px; position: absolute;
        top: 41px" Font-Names="Verdana" Font-Size="8pt"></asp:TextBox>
    &nbsp;
    <asp:TextBox ID="txtom" runat="server" Style="z-index: 104; left: 275px; position: absolute;
        top: 108px" Font-Names="Verdana" Font-Size="8pt" TabIndex="2"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 111;
        left: 412px; position: absolute; top: 227px" Text="Save" Font-Names="Verdana" Font-Size="8pt" />
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
    <asp:Label ID="Label2" runat="server" Style="z-index: 106; left: 188px; position: absolute;
        top: 185px" Text="Local Artisans:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 107; left: 159px; position: absolute;
        top: 149px" Text="Local Manufacturer:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label4" runat="server" Style="z-index: 108; left: 152px; position: absolute;
        top: 111px" Text="O&M Costs (Annual):" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label5" runat="server" Style="z-index: 109; left: 157px; position: absolute;
        top: 76px" Text="Upfront Costs (kW):" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 110; left: 240px; position: absolute;
        top: 42px" Text="Area:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
</asp:Content>

