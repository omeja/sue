<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Demands.aspx.cs" Inherits="Demands" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 164px; position: absolute;
        top: 52px" Text="Area Code:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label7" runat="server" Font-Names="Verdana" Font-Size="8pt" Style="z-index: 101;
        left: 172px; position: absolute; top: 78px" Text="Category:" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:TextBox ID="txtareacode" runat="server" Style="z-index: 102; left: 234px; position: absolute;
        top: 51px" OnTextChanged="txtareacode_TextChanged" Height="16px" Width="142px" Font-Names="Verdana" Font-Size="8pt"></asp:TextBox>
    <asp:DropDownList ID="cbodtype" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="Description" DataValueField="Type_ID" Style="left: 234px; position: absolute;
        top: 101px; z-index: 103;" AutoPostBack="True" Height="22px" Width="150px" Font-Names="Verdana" Font-Size="8pt" TabIndex="2">
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" Style="z-index: 104; left: 185px; position: absolute;
        top: 130px" Text="Details:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:DropDownList ID="cbodid" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
        DataTextField="Description" DataValueField="Demand_ID" Style="z-index: 105; left: 234px;
        position: absolute; top: 128px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="22px" Width="149px" Font-Names="Verdana" Font-Size="8pt" TabIndex="3">
    </asp:DropDownList>
    <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 106; left: 473px; position: absolute;
        top: 199px" NavigateUrl="~/sources.aspx" Font-Names="Verdana" Font-Size="8pt" TabIndex="7">Source Details</asp:HyperLink>
    <asp:Label ID="Label4" runat="server" Style="z-index: 107; left: 194px; position: absolute;
        top: 181px" Text="Load:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:TextBox ID="txtload" runat="server" Style="z-index: 108; left: 234px; position: absolute;
        top: 154px" Height="15px" Width="142px" Font-Names="Verdana" Font-Size="8pt" TabIndex="4"></asp:TextBox>
    <asp:TextBox ID="txthours" runat="server" Style="z-index: 109; left: 234px; position: absolute;
        top: 181px" Font-Names="Verdana" Font-Size="8pt" Width="141px" TabIndex="5"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Style="z-index: 110; left: 191px; position: absolute;
        top: 156px" Text="Hours:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label2" runat="server" Style="left: 195px; position: absolute; top: 102px; z-index: 111;"
        Text="Type:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Button ID="Button1" runat="server" Style="left: 420px; position: absolute;
        top: 196px; z-index: 112;" Text="Save" OnClick="Button1_Click" Font-Names="Verdana" Font-Size="8pt" TabIndex="6" />
    &nbsp;&nbsp;
    <asp:DropDownList ID="cbocateg" runat="server" DataSourceID="SqlDataSource3" DataTextField="Category_Desc"
        DataValueField="Category_Id" Style="z-index: 116; left: 234px; position: absolute;
        top: 77px" Width="149px" TabIndex="1">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Demand_Categories]"></asp:SqlDataSource>
    <br />
    <br />
    &nbsp;<br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="8pt" Style="z-index: 114;
        left: 192px; position: absolute; top: 207px" Text="Units:" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <br />
    <br />
    &nbsp;<br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Demand_Types]"></asp:SqlDataSource>
    <asp:DropDownList ID="cbounits" runat="server" DataSourceID="SqlDataSource4" DataTextField="Unit_Description"
        DataValueField="Unit_Code" Style="z-index: 115; left: 235px; position: absolute;
        top: 205px" Width="145px" TabIndex="5">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT * FROM [Units]"></asp:SqlDataSource>
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Demand_ID], [Description] FROM [Demands] WHERE ([Type_ID] = @Type_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbodtype" Name="Type_ID" PropertyName="SelectedValue"
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

