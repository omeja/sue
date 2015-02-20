using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions;
using CrystalDecisions.CrystalReports;

public partial class RptDemandsbyDistrict : System.Web.UI.Page
{
    ReportDocument reportDocument = new ReportDocument();

    ParameterField paramField = new ParameterField();

    ParameterFields paramFields = new ParameterFields();

    ParameterDiscreteValue paramDiscreteValue = new ParameterDiscreteValue();
    protected void Page_Load(object sender, EventArgs e)
    {

        ////--Initializing CrystalReport
        //ReportDocument myReportDocument;
        //myReportDocument = new ReportDocument();
        //myReportDocument.Load(Server.MapPath("DemandsByDistrict.rpt"));
        
        //myReportDocument.SetDatabaseLogon("sa", "kenya1234*", @"OSBERT-PC", "MDSS");
        
        ////--Binding report with CrystalReportViewer       
        //CrystalReportViewer1.ReportSource = myReportDocument;
        ////added



        ////Set instances for input parameters
        //this.CrystalReportViewer1.ParameterFieldInfo.Clear();


        //ParameterFields paramFields = new ParameterFields();

        ////Set instances for input parameter QuotationID
        //ParameterField paramField = new ParameterField();
        //ParameterDiscreteValue paramDiscreteValue = new ParameterDiscreteValue();
        //paramField.Name = "@country_code";
        //paramDiscreteValue.Value = "UG";
        //paramField.CurrentValues.Add(paramDiscreteValue);

        ////Add the paramField to paramFields
        //paramFields.Add(paramField);

        ////Set instances for input parameters Name
        //ParameterField paramField2 = new ParameterField();
        //ParameterDiscreteValue paramDiscreteValue2 = new ParameterDiscreteValue();
        //paramField2.Name = "@region_code";
        //paramDiscreteValue2.Value = "UGC";
        //paramField2.CurrentValues.Add(paramDiscreteValue2);

        ////Add the paramField to paramFields
        //paramFields.Add(paramField2);

        ////Set instances for input parameters Name
        //ParameterField paramField3 = new ParameterField();
        //ParameterDiscreteValue paramDiscreteValue3 = new ParameterDiscreteValue();
        //paramField3.Name = "@District_id";
        //paramDiscreteValue3.Value = "8";
        //paramField3.CurrentValues.Add(paramDiscreteValue3);

        ////Add the paramField to paramFields
        //paramFields.Add(paramField3);

        //CrystalReportViewer1.ParameterFieldInfo = paramFields;
        //--Initializing CrystalReport
        ReportDocument myReportDocument;
        myReportDocument = new ReportDocument();
        myReportDocument.Load(Server.MapPath("DemandsByDistrict.rpt"));
        myReportDocument.SetDatabaseLogon("sa", "kenya1234*", @"localhost", "MDSS");
        //--Binding report with CrystalReportViewer       
        CrystalReportViewer1.ReportSource = myReportDocument;
        //added



        //Set instances for input parameters
        this.CrystalReportViewer1.ParameterFieldInfo.Clear();


        ParameterFields paramFields = new ParameterFields();

        //Set instances for input parameter QuotationID
        ParameterField paramField = new ParameterField();
        ParameterDiscreteValue paramDiscreteValue = new ParameterDiscreteValue();
        paramField.Name = "@country_code";
        paramDiscreteValue.Value = this.Dropdownlist1.Text;
        paramField.CurrentValues.Add(paramDiscreteValue);

        //Add the paramField to paramFields
        paramFields.Add(paramField);

        //Set instances for input parameters Name
        ParameterField paramField2 = new ParameterField();
        ParameterDiscreteValue paramDiscreteValue2 = new ParameterDiscreteValue();
        paramField2.Name = "@region_code";
        paramDiscreteValue2.Value = this.Dropdownlist2.Text;
        paramField2.CurrentValues.Add(paramDiscreteValue2);

        //Add the paramField to paramFields
        paramFields.Add(paramField2);

        //Set instances for input parameters Name
        ParameterField paramField3 = new ParameterField();
        ParameterDiscreteValue paramDiscreteValue3 = new ParameterDiscreteValue();
        paramField3.Name = "@District_id";
        paramDiscreteValue3.Value = this.Dropdownlist3.Text;
        paramField3.CurrentValues.Add(paramDiscreteValue3);

        //Add the paramField to paramFields
        paramFields.Add(paramField3);

        CrystalReportViewer1.ParameterFieldInfo = paramFields;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //--Initializing CrystalReport
        ReportDocument myReportDocument;
        myReportDocument = new ReportDocument();
        myReportDocument.Load(Server.MapPath("DemandsByDistrict.rpt"));
        myReportDocument.SetDatabaseLogon("sa", "kenya1234*", @"OSBERT-PC", "MDSS");
        //--Binding report with CrystalReportViewer       
        CrystalReportViewer1.ReportSource = myReportDocument;
        //added



        //Set instances for input parameters
        this.CrystalReportViewer1.ParameterFieldInfo.Clear();


        ParameterFields paramFields = new ParameterFields();

        //Set instances for input parameter QuotationID
        ParameterField paramField = new ParameterField();
        ParameterDiscreteValue paramDiscreteValue = new ParameterDiscreteValue();
        paramField.Name = "@country_code";
        paramDiscreteValue.Value = this.Dropdownlist1.Text;
        paramField.CurrentValues.Add(paramDiscreteValue);

        //Add the paramField to paramFields
        paramFields.Add(paramField);

        //Set instances for input parameters Name
        ParameterField paramField2 = new ParameterField();
        ParameterDiscreteValue paramDiscreteValue2 = new ParameterDiscreteValue();
        paramField2.Name = "@region_code";
        paramDiscreteValue2.Value = this.Dropdownlist2.Text;
        paramField2.CurrentValues.Add(paramDiscreteValue2);

        //Add the paramField to paramFields
        paramFields.Add(paramField2);

        //Set instances for input parameters Name
        ParameterField paramField3 = new ParameterField();
        ParameterDiscreteValue paramDiscreteValue3 = new ParameterDiscreteValue();
        paramField3.Name = "@District_id";
        paramDiscreteValue3.Value = this.Dropdownlist3.Text;
        paramField3.CurrentValues.Add(paramDiscreteValue3);

        //Add the paramField to paramFields
        paramFields.Add(paramField3);

        CrystalReportViewer1.ParameterFieldInfo = paramFields;
      
    }
    protected void Dropdownlist1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Dropdownlist2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Dropdownlist3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Dropdownlist3_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Dropdownlist2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Dropdownlist3_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }
}
