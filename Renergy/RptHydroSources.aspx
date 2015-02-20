<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RptHydroSources.aspx.cs" Inherits="RptHydroSources" Title="Untitled Page" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <cr:crystalreportviewer id="CrystalReportViewer1" runat="server" autodatabind="true"
        style="z-index: 117; left: 0px; position: absolute; top: 0px"></cr:crystalreportviewer>
</asp:Content>

