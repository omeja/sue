<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Demands.aspx.cs" Inherits="Demands" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 121px; position: relative;
        top: 20px" Text="Area Code:"></asp:Label>
    <asp:TextBox ID="txtareacode" runat="server" Style="z-index: 101; left: 159px; position: relative;
        top: 23px" OnTextChanged="txtareacode_TextChanged"></asp:TextBox><br />
    <br />
    <asp:DropDownList ID="cbodtype" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="Description" DataValueField="Type_ID" Style="left: 232px; position: relative;
        top: 23px; z-index: 102;" AutoPostBack="True">
    </asp:DropDownList>&nbsp;<br />
    <br />
    <asp:Label ID="Label1" runat="server" Style="z-index: 103; left: 148px; position: relative;
        top: 34px" Text="Details:"></asp:Label><br />
    <br />
    <asp:DropDownList ID="cbodid" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
        DataTextField="Description" DataValueField="Demand_ID" Style="z-index: 104; left: 232px;
        position: relative; top: -6px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 108; left: 401px; position: absolute;
        top: 355px">Source Details</asp:HyperLink>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Style="left: 152px; position: relative; top: -134px; z-index: 106;"
        Text="Type:"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Demand_Types]"></asp:SqlDataSource>
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Style="left: 402px; position: relative;
        top: -159px; z-index: 107;" Text="Add" OnClick="Button1_Click" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Demand_ID], [Description] FROM [Demands] WHERE ([Type_ID] = @Type_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbodtype" Name="Type_ID" PropertyName="SelectedValue"
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

