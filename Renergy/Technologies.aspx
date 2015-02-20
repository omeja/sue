<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Technologies.aspx.cs" Inherits="Technologies" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 231px; position: absolute;
        top: 46px" Text="Area:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:TextBox ID="txtareaid" runat="server" Style="z-index: 101; left: 266px; position: absolute;
        top: 44px" Font-Names="Verdana" Font-Size="8pt"></asp:TextBox>
    &nbsp;
    <asp:Label ID="Label3" runat="server" Height="19px" Style="z-index: 102; left: 134px;
        position: absolute; top: 224px" Text="Capital Cost( kW):" Width="129px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label4" runat="server" Height="19px" Style="z-index: 103; left: 227px;
        position: absolute; top: 198px" Text="Scale:" Width="34px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label5" runat="server" Height="19px" Style="z-index: 104; left: 196px;
        position: absolute; top: 141px" Text="Availability:" Width="34px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 105; left: 193px; position: absolute;
        top: 109px" Text="Technology:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label7" runat="server" Height="19px" Style="z-index: 106; left: 196px;
        position: absolute; top: 80px" Text="Alternative:" Width="34px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="cboalt" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
        DataSourceID="SqlDataSource1" DataTextField="Alternative_Name" DataValueField="Alternative_Id"
        Style="z-index: 107; left: 266px; position: absolute; top: 77px" Width="154px" Font-Names="Verdana" Font-Size="8pt" TabIndex="1">
        <asp:ListItem>Select Item.........</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Alternative_Name], [Alternative_Id] FROM [Alternatives]">
    </asp:SqlDataSource>
    &nbsp;
    <asp:Label ID="Label8" runat="server" Style="z-index: 108; left: 195px; position: absolute;
        top: 293px" Text="Design Life:" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="cbotech" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
        DataTextField="Technology_Name" DataValueField="Technology_ID" Style="z-index: 109;
        left: 266px; position: absolute; top: 111px" Width="153px" AppendDataBoundItems="True" Font-Names="Verdana" Font-Size="8pt" TabIndex="2">
        <asp:ListItem>Select.....</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="txtlocation" runat="server" Font-Names="Verdana" Font-Size="8pt"
        Style="z-index: 110; left: 266px; position: absolute; top: 169px" TabIndex="4"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="19px"
        Style="z-index: 120; left: 211px; position: absolute; top: 171px" Text="Location:"
        Width="34px" ForeColor="#006600"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Technology_Name], [Technology_ID] FROM [Technologies] WHERE ([Alternative_ID] = @Alternative_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cboalt" Name="Alternative_ID" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:TextBox ID="txtcost" runat="server" Style="z-index: 112; left: 266px; position: absolute;
        top: 222px" Width="134px" Font-Names="Verdana" Font-Size="8pt" TabIndex="6"></asp:TextBox>
    &nbsp;
    <asp:DropDownList ID="cboav" runat="server" AutoPostBack="True" Style="z-index: 113;
        left: 266px; position: absolute; top: 142px" Width="150px" AppendDataBoundItems="True" Font-Names="Verdana" Font-Size="8pt" TabIndex="3">
        <asp:ListItem>Select....</asp:ListItem>
        <asp:ListItem>Local</asp:ListItem>
        <asp:ListItem>International</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    <asp:DropDownList ID="cboscale" runat="server" Style="z-index: 114; left: 266px;
        position: absolute; top: 197px" Width="151px" Font-Names="Verdana" Font-Size="8pt" TabIndex="5">
        <asp:ListItem>Select.....</asp:ListItem>
        <asp:ListItem>Modular</asp:ListItem>
        <asp:ListItem>Non-Modular</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Style="z-index: 115; left: 409px; position: absolute;
        top: 338px" Text="Save" OnClick="Button1_Click" TabIndex="8" />
    <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 116; left: 460px; position: absolute;
        top: 341px" NavigateUrl="~/Application.aspx" TabIndex="9">Application</asp:HyperLink>
    <br />
    <asp:Label ID="Label2" runat="server" Style="z-index: 117; left: 98px; position: absolute;
        top: 259px" Text="O&M  Annual Cost(kW):" Width="165px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#006600"></asp:Label>
    <asp:TextBox ID="txtOMcost" runat="server" Style="z-index: 118; left: 266px; position: absolute;
        top: 256px" Font-Names="Verdana" Font-Size="8pt" TabIndex="7"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="txtdesign" runat="server" Style="z-index: 119; left: 266px; position: absolute;
        top: 290px" Font-Names="Verdana" Font-Size="8pt" TabIndex="7"></asp:TextBox>
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

