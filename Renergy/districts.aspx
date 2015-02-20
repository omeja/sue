<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="districts.aspx.cs" Inherits="districts" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
        Style="left: 281px; position: relative; top: 57px" Width="196px" DataSourceID="SqlDataSource1" DataTextField="Country_Name" DataValueField="Country_Code">
    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Countries]"></asp:SqlDataSource>
    <asp:Label ID="Label3" runat="server" Style="left: 194px; position: relative; top: 7px"
        Text="Country:" Width="49px"></asp:Label><br />
    <asp:TextBox ID="TextBox1" runat="server" Style="left: 280px; position: relative;
        top: 83px"></asp:TextBox><br />
    <asp:Label ID="Label1" runat="server" Style="left: 146px; position: relative; top: 60px"
        Text="District Name:" Width="94px"></asp:Label><br />
    <asp:Label ID="Label2" runat="server" Style="left: 188px; position: relative; top: -4px"
        Text="Region:" Width="49px"></asp:Label><br />
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
        Style="left: 280px; position: relative; top: -20px" Width="196px" DataSourceID="SqlDataSource2" DataTextField="Region_Name" DataValueField="Region_Code">
    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Regions] WHERE ([Country_Code] = @Country_Code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Country_Code" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Style="left: 212px; position: relative; top: 41px"
        Text="Save" /><br />
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

