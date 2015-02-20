<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Areas.aspx.cs" Inherits="Areas" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 179px; position: absolute;
        top: 92px" Text="Region:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    &nbsp;
    <asp:Label ID="Label3" runat="server" Style="z-index: 101; left: 141px; position: absolute;
        top: 42px" Text="Location Code:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label4" runat="server" Style="z-index: 102; left: 382px; position: absolute;
        top: 127px" Text="Site:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label5" runat="server" Style="z-index: 103; left: 368px; position: absolute;
        top: 98px" Text="Centre:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 104; left: 369px; position: absolute;
        top: 71px" Text="Village:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label7" runat="server" Style="z-index: 105; left: 369px; position: absolute;
        top: 44px" Text="Parish:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label8" runat="server" Style="z-index: 106; left: 155px; position: absolute;
        top: 156px" Text="Sub-County:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label9" runat="server" Style="z-index: 107; left: 173px; position: absolute;
        top: 65px" Text="Country:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label10" runat="server" Style="z-index: 108; left: 179px; position: absolute;
        top: 124px" Text="District:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
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
    <asp:TextBox ID="txtcode" runat="server" Style="z-index: 109; left: 227px; position: absolute;
        top: 40px" Font-Size="8pt" Height="13px" Font-Names="Verdana" Width="119px"></asp:TextBox>
    <asp:DropDownList ID="cbocountry" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
        DataTextField="Country_Name" DataValueField="Country_Code" OnSelectedIndexChanged="cbocountry_SelectedIndexChanged"
        Style="z-index: 110; left: 227px; position: absolute; top: 66px" Width="126px" AppendDataBoundItems="True" Font-Size="8pt" Height="19px" Font-Names="Verdana">
        <asp:ListItem>Select Country.........</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Country_Code], [Country_Name] FROM [Countries]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboregion" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
        DataTextField="Region_Name" DataValueField="Region_Code" OnSelectedIndexChanged="cboregion_SelectedIndexChanged"
        Style="z-index: 111; left: 227px; position: absolute; top: 96px" Width="126px" AppendDataBoundItems="True" Font-Size="8pt" Height="18px" Font-Names="Verdana">
        <asp:ListItem>Select Region............</asp:ListItem>
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
        Style="z-index: 112; left: 227px; position: absolute; top: 124px" Width="126px" Font-Size="8pt" Height="21px" Font-Names="Verdana">
        <asp:ListItem>Select District................</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [District_Name], [District_Id] FROM [Districts] WHERE ([Region_Code] = @Region_Code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cboregion" Name="Region_Code" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;
    <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Style="z-index: 113;
        left: 335px; position: absolute; top: 179px" Text="Save" Width="68px" Font-Size="Small" Height="21px" Font-Names="Verdana" />
    &nbsp; &nbsp;
    <asp:TextBox ID="txtsubcounty" runat="server" Style="z-index: 115; left: 227px; position: absolute;
        top: 156px" Font-Size="8pt" Height="13px" Font-Names="Verdana" Width="117px"></asp:TextBox>
    <asp:TextBox ID="txtparish" runat="server" Style="z-index: 116; left: 410px; position: absolute;
        top: 42px" Font-Names="Verdana" Font-Size="7pt" Height="15px" Width="142px"></asp:TextBox>
    <asp:TextBox ID="txtvillage" runat="server" Style="z-index: 117; left: 410px; position: absolute;
        top: 72px" Font-Names="Verdana" Font-Size="7pt" Height="13px" Width="142px"></asp:TextBox>
    <asp:TextBox ID="txtcentre" runat="server" Style="z-index: 118; left: 410px; position: absolute;
        top: 99px" Font-Names="Verdana" Font-Size="8pt" Height="13px" Width="142px"></asp:TextBox>
    <asp:TextBox ID="txtsite" runat="server" Style="z-index: 119; left: 410px; position: absolute;
        top: 126px" Font-Size="8pt" Height="15px" Width="142px" Font-Names="Verdana"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;
    <asp:TextBox ID="txtdistrict" runat="server" Style="z-index: 120; left: 654px; position: absolute;
        top: 108px" Visible="False"></asp:TextBox>
    <asp:TextBox ID="txtregion" runat="server" Style="z-index: 121; left: 650px; position: absolute;
        top: 77px" Visible="False"></asp:TextBox>
    <asp:TextBox ID="txtcountry" runat="server" OnTextChanged="TextBox3_TextChanged"
        Style="z-index: 122; left: 648px; position: absolute; top: 44px" Visible="False"></asp:TextBox>
    &nbsp;
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [District_Id] FROM [Districts] WHERE ([District_Name] = @District_Name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbodistrict" Name="District_Name" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Demands.aspx" Style="z-index: 123;
        left: 411px; position: absolute; top: 183px" Font-Size="Small" Font-Names="Verdana">Demand Details</asp:HyperLink>
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

