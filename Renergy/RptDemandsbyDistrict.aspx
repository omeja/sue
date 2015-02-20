<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RptDemandsbyDistrict.aspx.cs" Inherits="RptDemandsbyDistrict" Title="Untitled Page" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="z-index: 100; left: 0px; width: 703px; position: absolute; top: 102px;
        height: 456px">
    
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
        Style="z-index: 334; left: 0px; position: absolute; top: 0px" />
    </div>
    <br />
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 354px; position: absolute;
        top: 72px" Text="District:"></asp:Label>
    <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 184px; position: absolute;
        top: 71px" Text="Region:" Width="49px"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 7px; position: absolute;
        top: 71px" Text="Country:"></asp:Label>
    <asp:DropDownList ID="Dropdownlist1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
        DataTextField="Country_Name" DataValueField="Country_Code" Style="z-index: 103;
        left: 64px; position: absolute; top: 70px" Width="105px" AppendDataBoundItems="True">
        <asp:ListItem>select...</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Countries]"></asp:SqlDataSource>
    <asp:DropDownList ID="Dropdownlist2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
        DataTextField="Region_Name" DataValueField="Region_Code" Style="z-index: 104;
        left: 240px; position: absolute; top: 70px" Width="106px" AppendDataBoundItems="True">
        <asp:ListItem>select...</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Region_Code], [Region_Name] FROM [Regions] WHERE ([Country_Code] = @Country_Code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Country_Code" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DropDownList ID="Dropdownlist3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3"
        DataTextField="District_Name" DataValueField="District_Id" Style="z-index: 107;
        left: 407px; position: absolute; top: 71px" Width="108px" AppendDataBoundItems="True">
        <asp:ListItem>select...</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [District_Id], [District_Name] FROM [Districts] WHERE ([Region_Code] = @Region_Code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Region_Code" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    &nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 106;
        left: 541px; position: absolute; top: 69px" Text="Retrieve......" />
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
    <br />
    <br />
    <br />
</asp:Content>

