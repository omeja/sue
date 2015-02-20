<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Subcounties.aspx.cs" Inherits="Subcounties" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" Style="left: 365px; position: relative;
        top: 60px" Width="153px" DataSourceID="SqlDataSource1" DataTextField="Region_Name" DataValueField="Region_Code">
    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Regions] WHERE ([Country_Code] = @Country_Code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Country_Code" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label4" runat="server" Style="left: 277px; position: relative; top: 16px"
        Text="Country:"></asp:Label><br />
    <asp:DropDownList ID="DropDownList3" runat="server" Style="left: 365px; position: relative;
        top: 35px" Width="154px" DataSourceID="SqlDataSource1" DataTextField="Country_Name" DataValueField="Country_Code">
    </asp:DropDownList><br />
    <asp:TextBox ID="TextBox1" runat="server" Style="left: 367px; position: relative;
        top: 92px"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server" Style="left: 207px; position: relative;
        top: 53px" Width="155px" DataSourceID="SqlDataSource2" DataTextField="District_Name" DataValueField="District_Id">
    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Districts] WHERE ([Region_Code] = @Region_Code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="Region_Code" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Style="left: -31px; position: relative; top: 57px"
        Text="District:"></asp:Label>
    <asp:Label ID="Label2" runat="server" Style="left: -154px; position: relative; top: 89px"
        Text="SubCounty Name:"></asp:Label>
    <asp:Button ID="Button1" runat="server" Style="left: -110px; position: relative;
        top: 157px" Text="Save" /><br />
    <asp:Label ID="Label3" runat="server" Style="left: 286px; position: relative; top: -6px"
        Text="Region:"></asp:Label><br />
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

