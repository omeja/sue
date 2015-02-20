<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Locations.aspx.cs" Inherits="DemandDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp;
    
    <br />
    &nbsp; &nbsp; &nbsp;
    <div style="z-index: 101; left: 210px; width: 497px; position: absolute; top: 638px;
        height: 22px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
            SelectCommand="SELECT * FROM [Countries]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
            SelectCommand="SELECT * FROM [Demands]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
            SelectCommand="SELECT * FROM [Regions] WHERE ([Country_Code] = @Country_Code)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cbocountry" Name="Country_Code" PropertyName="SelectedValue"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
            SelectCommand="SELECT * FROM [Subcounties] WHERE ([District_Id] = @District_Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cbodistrict" Name="District_Id" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
            SelectCommand="SELECT * FROM [Districts] WHERE ([Region_Code] = @Region_Code)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cboregion" Name="Region_Code" PropertyName="SelectedValue"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    &nbsp; &nbsp; &nbsp;
    <div style="z-index: 102; left: 48px; width: 590px; position: absolute; top: 66px;
        height: 345px; border-right: green thin solid; border-top: green thin solid; border-left: green thin solid; border-bottom: green thin solid;">
    <asp:Label ID="Label1" runat="server" Style="left: 0px; position: absolute; top: 0px; z-index: 100;"
        Text="Country:"></asp:Label>
    <asp:DropDownList ID="cbocountry" runat="server" Style="left: 133px; position: absolute;
        top: 0px; z-index: 101;" Width="151px" DataSourceID="SqlDataSource1" DataTextField="Country_Name" DataValueField="Country_Code" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
        <br />
        <br />
        <br />
    <asp:Label ID="Label2" runat="server" Style="left: 6px; position: absolute; top: 36px; z-index: 102;"
        Text="Region:"></asp:Label>
    <asp:DropDownList ID="cboregion" runat="server" Style="left: 133px; position: absolute;
        top: 36px; z-index: 103;" DataSourceID="SqlDataSource2" DataTextField="Region_Name" DataValueField="Region_Code" Width="149px" AutoPostBack="True">
    </asp:DropDownList>
    <asp:DropDownList ID="cbodistrict" runat="server" Style="left: 134px; position: absolute;
        top: 79px; z-index: 104;" Width="148px" DataSourceID="SqlDataSource3" DataTextField="District_Name" DataValueField="District_Id" AutoPostBack="True">
    </asp:DropDownList>
    <asp:DropDownList ID="cbosubcounty" runat="server" Style="left: 136px; position: absolute;
        top: 121px; z-index: 105;" DataSourceID="SqlDataSource4" DataTextField="Subcounty_Name" DataValueField="Subcounty_Id" Width="146px">
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" Style="left: 9px; position: absolute; top: 122px; z-index: 106;"
        Text="SubCounty:"></asp:Label>
    <asp:TextBox ID="txtvillage" runat="server" Style="left: 138px; position: absolute;
        top: 193px; z-index: 107;"></asp:TextBox>
    <asp:TextBox ID="txttc" runat="server" Style="left: 139px; position: absolute;
        top: 224px; z-index: 108;"></asp:TextBox>
    <asp:TextBox ID="txtsite" runat="server" Style="left: 137px; position: absolute;
        top: 261px; z-index: 109;"></asp:TextBox>
        &nbsp;
    <asp:TextBox ID="txtparish" runat="server" Style="left: 138px; position: absolute;
        top: 161px; z-index: 111;"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Style="left: 19px; position: absolute; top: 195px; z-index: 112;"
        Text="Village:"></asp:Label>
    <asp:Label ID="Label8" runat="server" Style="left: 4px; position: absolute; top: 227px; z-index: 113;"
        Text="Trading Center:"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="left: 68px; position: absolute; top: 268px; z-index: 114;"
        Text="Site:"></asp:Label>
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Style="z-index: 116; left: 6px; position: absolute;
            top: 80px" Text="District:"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 117; left: 22px; position: absolute;
            top: 158px" Text="Parish:"></asp:Label>
        <asp:Label ID="Label9" runat="server" Style="z-index: 118; left: 307px; position: absolute;
            top: 7px" Text="ID:"></asp:Label>
        <asp:TextBox ID="txtid" runat="server" Style="z-index: 119; left: 333px; position: absolute;
            top: 7px"></asp:TextBox>
    </div>
    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    &nbsp; &nbsp; &nbsp;&nbsp;
    <br />
    <br />
    &nbsp; &nbsp; &nbsp;
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
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 100;
        left: 201px; position: absolute; top: 435px" Text="Save" Width="94px" />
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

