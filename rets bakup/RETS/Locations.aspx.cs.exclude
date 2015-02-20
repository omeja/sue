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
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class DemandDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String ID = txtid.Text;
        string CountryCode = cbocountry.DataValueField;
        string RegionCode = cboregion.Text;
     //   int DistrictId = cbodistrict;
        string subcounty = cbosubcounty.Text;
        string Parish = this.txtparish.Text;
        string Village = txtvillage.Text;
        string TradingCenter = txttc.Text;
        string site = txtsite.Text;






        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);

        SqlCommand command = new SqlCommand("spadd_location", con);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.Add("@ID", SqlDbType.Int).Value = RegionCode;
        command.Parameters.Add("@Country_Code", SqlDbType.VarChar).Value = CountryCode;
        command.Parameters.Add("@Region_Code", SqlDbType.VarChar).Value = RegionCode;
       // command.Parameters.Add("@District_Id", SqlDbType.Int).Value = DistrictId;
        command.Parameters.Add("@Subcounty_Id", SqlDbType.VarChar).Value = subcounty;
        command.Parameters.Add("@Parish", SqlDbType.VarChar).Value = Parish;
        command.Parameters.Add("@Village", SqlDbType.VarChar).Value = Village;
        command.Parameters.Add("@Trading_Centre", SqlDbType.VarChar).Value = TradingCenter;
        command.Parameters.Add("@Site", SqlDbType.VarChar).Value = site;
        con.Open(); 
        int rows = command.ExecuteNonQuery();
        con.Close();

       

        //if (rows == 1)
        //{

        //    MessageBox.Show("Data Saved Succesfully");
        //}
        //else
        //{
        //    MessageBox.Show("Data FAILED to Save!!");
        //} 
    }
}
