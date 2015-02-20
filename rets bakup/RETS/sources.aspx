<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sources.aspx.cs" Inherits="sources" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;
    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 409px; position: absolute;
        top: 115px" Text="Seasons:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 101; left: 422px; position: absolute;
        top: 76px" Text="Depth:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label4" runat="server" Style="z-index: 102; left: 409px; position: absolute;
        top: 45px" Text="Velocity:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label5" runat="server" Style="z-index: 103; left: 130px; position: absolute;
        top: 242px" Text="Flowrate:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 104; left: 151px; position: absolute;
        top: 204px" Text="Head:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label7" runat="server" Style="z-index: 105; left: 146px; position: absolute;
        top: 167px" Text="Space:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label8" runat="server" Style="z-index: 106; left: 103px; position: absolute;
        top: 135px" Text="Fuel Quantity:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label9" runat="server" Style="z-index: 107; left: 70px; position: absolute;
        top: 103px" Text="Isolation/Quantity:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label10" runat="server" Style="z-index: 108; left: 119px; position: absolute;
        top: 74px" Text="Alternative:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label11" runat="server" Style="z-index: 109; left: 116px; position: absolute;
        top: 42px" Text="Area Code:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    &nbsp;<br />
    <br />
    <br />
    <asp:DropDownList ID="cboalternative" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
        DataTextField="Alternative_Name" DataValueField="Alternative_Id" Style="z-index: 110;
        left: 194px; position: absolute; top: 75px" Width="153px" AppendDataBoundItems="True" OnSelectedIndexChanged="cboalternative_SelectedIndexChanged" Font-Names="Verdana" Font-Size="8pt" TabIndex="1">
        <asp:ListItem>Select Item .......</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDSSConnectionString %>"
        SelectCommand="SELECT [Alternative_Id], [Alternative_Name] FROM [Alternatives]">
    </asp:SqlDataSource>
    &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtarea" runat="server" Style="z-index: 111; left: 194px; position: absolute;
        top: 42px" Font-Names="Verdana" Font-Size="8pt"></asp:TextBox>
    <asp:TextBox ID="txtqty" runat="server" Style="z-index: 112; left: 194px; position: absolute;
        top: 103px" Font-Names="Verdana" Font-Size="8pt" TabIndex="2"></asp:TextBox>
    <asp:TextBox ID="txtfuel" runat="server" Style="z-index: 113; left: 194px; position: absolute;
        top: 135px" Font-Names="Verdana" Font-Size="8pt" TabIndex="3"></asp:TextBox>
    <asp:TextBox ID="txtspace" runat="server" Style="z-index: 114; left: 194px; position: absolute;
        top: 166px" Font-Names="Verdana" Font-Size="8pt" TabIndex="4"></asp:TextBox>
    <asp:TextBox ID="txthead" runat="server" Style="z-index: 115; left: 194px; position: absolute;
        top: 204px" Font-Names="Verdana" Font-Size="8pt" TabIndex="5"></asp:TextBox>
    <asp:TextBox ID="txtflow" runat="server" Style="z-index: 116; left: 194px; position: absolute;
        top: 241px" Font-Names="Verdana" Font-Size="8pt" TabIndex="6"></asp:TextBox>
    <asp:TextBox ID="txtvelocity" runat="server" Style="z-index: 117; left: 467px; position: absolute;
        top: 44px" Font-Names="Verdana" Font-Size="8pt" TabIndex="7"></asp:TextBox>
    <asp:TextBox ID="txtdepth" runat="server" Style="z-index: 118; left: 467px; position: absolute;
        top: 76px" Font-Names="Verdana" Font-Size="8pt" TabIndex="8"></asp:TextBox>
    <asp:TextBox ID="txtseasons" runat="server" Style="z-index: 119; left: 467px; position: absolute;
        top: 112px" Font-Names="Verdana" Font-Size="8pt" TabIndex="8"></asp:TextBox>
    <asp:TextBox ID="txtfloods" runat="server" Style="z-index: 120; left: 467px; position: absolute;
        top: 144px" Font-Names="Verdana" Font-Size="8pt" TabIndex="9"></asp:TextBox>
    <asp:TextBox ID="txtaccess" runat="server" Style="z-index: 121; left: 467px; position: absolute;
        top: 177px" Font-Names="Verdana" Font-Size="8pt" TabIndex="10"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 122;
        left: 556px; position: absolute; top: 246px" Text="Save " Height="24px" Width="44px" />
    <asp:Button ID="Button2" runat="server" Height="24px" OnClick="Button2_Click" Style="z-index: 123;
        left: 557px; position: absolute; top: 247px" Text="Save" Width="50px" />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="z-index: 128;
        left: 557px; position: absolute; top: 247px" Text="Save" Width="48px" Font-Names="Verdana" Font-Size="8pt" Height="23px" TabIndex="11" />
    <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 125; left: 619px; position: absolute;
        top: 251px" NavigateUrl="~/Technologies.aspx" Font-Names="Verdana" Font-Size="8pt" TabIndex="12">Technologies </asp:HyperLink>
    <br />
    <asp:Label ID="Label12" runat="server" Style="z-index: 126; left: 415px; position: absolute;
        top: 179px" Text="Access:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <asp:Label ID="Label13" runat="server" Style="z-index: 127; left: 417px; position: absolute;
        top: 143px" Text="Floods:" Font-Names="Verdana" Font-Size="8pt" Font-Bold="False" ForeColor="#006600"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

