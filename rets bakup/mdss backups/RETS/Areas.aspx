<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Areas.aspx.cs" Inherits="Areas" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 89px; position: absolute;
        top: 128px" Text="Region:"></asp:Label>
    &nbsp;
    <asp:Label ID="Label3" runat="server" Style="z-index: 101; left: 46px; position: absolute;
        top: 65px" Text="Location Code:"></asp:Label>
    <asp:Label ID="Label4" runat="server" Style="z-index: 102; left: 99px; position: absolute;
        top: 358px" Text="Site:"></asp:Label>
    <asp:Label ID="Label5" runat="server" Style="z-index: 103; left: 86px; position: absolute;
        top: 316px" Text="Centre:"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 104; left: 88px; position: absolute;
        top: 278px" Text="Village:"></asp:Label>
    <asp:Label ID="Label7" runat="server" Style="z-index: 105; left: 93px; position: absolute;
        top: 245px" Text="Parish:"></asp:Label>
    <asp:Label ID="Label8" runat="server" Style="z-index: 106; left: 55px; position: absolute;
        top: 205px" Text="Sub-County:"></asp:Label>
    <asp:Label ID="Label9" runat="server" Style="z-index: 107; left: 84px; position: absolute;
        top: 96px" Text="Country:"></asp:Label>
    <asp:Label ID="Label10" runat="server" Style="z-index: 108; left: 85px; position: absolute;
        top: 167px" Text="District:"></asp:Label>
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
    <asp:TextBox ID="txtcode" runat="server" Style="z-index: 109; left: 174px; position: absolute;
        top: 63px"></asp:TextBox>
    <asp:DropDownList ID="cbocountry" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
        DataTextField="Country_Name" DataValueField="Country_Code" OnSelectedIndexChanged="cbocountry_SelectedIndexChanged"
        Style="z-index: 110; left: 173px; position: absolute; top: 96px" Width="156px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Country_Code], [Country_Name] FROM [Countries]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboregion" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
        DataTextField="Region_Name" DataValueField="Region_Code" OnSelectedIndexChanged="cboregion_SelectedIndexChanged"
        Style="z-index: 111; left: 173px; position: absolute; top: 131px" Width="157px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Region_Code], [Region_Name] FROM [Regions] WHERE ([Country_Code] = @Country_Code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbocountry" Name="Country_Code" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DropDownList ID="cbodistrict" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3"
        DataTextField="District_Name" DataValueField="District_Id" OnSelectedIndexChanged="cbodistrict_SelectedIndexChanged"
        Style="z-index: 112; left: 172px; position: absolute; top: 168px" Width="155px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [District_Name], [District_Id] FROM [Districts] WHERE ([Region_Code] = @Region_Code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cboregion" Name="Region_Code" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Style="z-index: 113;
        left: 196px; position: absolute; top: 438px" Text="Save" Width="84px" />
    &nbsp;
    <asp:TextBox ID="txtsubcounty" runat="server" Style="z-index: 114; left: 171px; position: absolute;
        top: 206px"></asp:TextBox>
    <asp:TextBox ID="txtparish" runat="server" Style="z-index: 115; left: 171px; position: absolute;
        top: 242px"></asp:TextBox>
    <asp:TextBox ID="txtvillage" runat="server" Style="z-index: 116; left: 170px; position: absolute;
        top: 279px"></asp:TextBox>
    <asp:TextBox ID="txtcentre" runat="server" Style="z-index: 117; left: 168px; position: absolute;
        top: 319px"></asp:TextBox>
    <asp:TextBox ID="txtsite" runat="server" Style="z-index: 118; left: 165px; position: absolute;
        top: 357px"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;
    <asp:TextBox ID="txtdistrict" runat="server" Style="z-index: 119; left: 363px; position: absolute;
        top: 170px"></asp:TextBox>
    <asp:TextBox ID="txtregion" runat="server" Style="z-index: 120; left: 361px; position: absolute;
        top: 134px"></asp:TextBox>
    <asp:TextBox ID="txtcountry" runat="server" OnTextChanged="TextBox3_TextChanged"
        Style="z-index: 121; left: 358px; position: absolute; top: 96px"></asp:TextBox>
    &nbsp;
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [District_Id] FROM [Districts] WHERE ([District_Name] = @District_Name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbodistrict" Name="District_Name" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Demands.aspx" Style="z-index: 122;
        left: 373px; position: absolute; top: 443px">Demand Details</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Region_Code] FROM [Regions] WHERE ([Region_Name] = @Region_Name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cboregion" Name="Region_Name" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Country_Code] FROM [Countries] WHERE ([Country_Name] = @Country_Name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbocountry" Name="Country_Name" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

