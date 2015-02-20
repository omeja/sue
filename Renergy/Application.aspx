<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="Application" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br /><asp:DropDownList ID="cboclass" runat="server" DataSourceID="SqlDataSource2"
        DataTextField="Class_desc" DataValueField="Class_Id" Style="z-index: 112; left: 254px;
        position: absolute; top: 105px" Width="162px" AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Verdana" Font-Size="8pt" TabIndex="2">
        <asp:ListItem>Select....</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Application_Classifications]"></asp:SqlDataSource>
    <br />
    &nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Style="z-index: 101; left: 182px; position: absolute;
        top: 176px" Text="Description:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label4" runat="server" Style="z-index: 102; left: 184px; position: absolute;
        top: 137px" Text="Application:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label5" runat="server" Style="z-index: 103; left: 179px; position: absolute;
        top: 77px" Text="Productivity:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 104; left: 219px; position: absolute;
        top: 41px" Text="Area:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtdesc" runat="server" Height="69px" Style="z-index: 105; left: 254px;
        position: absolute; top: 172px" Width="292px" Font-Names="Verdana" Font-Size="8pt" TabIndex="4"></asp:TextBox>
    &nbsp;
    <asp:DropDownList ID="cboapp" runat="server" Style="z-index: 106; left: 254px;
        position: absolute; top: 135px" Width="162px" AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Verdana" Font-Size="8pt" TabIndex="3">
        <asp:ListItem>Select...</asp:ListItem>
        <asp:ListItem>Electricity</asp:ListItem>
        <asp:ListItem>Heating</asp:ListItem>
        <asp:ListItem>Shaft Power</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    <asp:DropDownList ID="cboprod" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="Description" DataValueField="ID" Style="z-index: 107; left: 254px;
        position: absolute; top: 76px" Width="162px" AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Verdana" Font-Size="8pt" TabIndex="1">
        <asp:ListItem>Select....</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [ID], [Description] FROM [Application_Categories]"></asp:SqlDataSource>
    <asp:TextBox ID="txtarea5" runat="server" Style="z-index: 108; left: 254px; position: absolute;
        top: 43px" Font-Names="Verdana" Font-Size="8pt"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Style="z-index: 109; left: 533px; position: absolute;
        top: 263px" Text="Save" OnClick="Button1_Click" Font-Names="Verdana" Font-Size="8pt" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 110; left: 581px; position: absolute;
        top: 265px" NavigateUrl="~/Human Factor.aspx" Font-Names="Verdana" Font-Size="8pt">Human Factor</asp:HyperLink>
    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="8pt" Style="z-index: 111;
        left: 172px; position: absolute; top: 107px" Text="Classification:" ForeColor="#006600"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

