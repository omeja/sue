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
    

public partial class Region : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string RegionCode = this.txtRegionCode.Text;
        string RegionName = this.txtRegionName.Text;
        string CountryName = this.cboCountry.Text;
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);

        SqlCommand command = new SqlCommand("spadd_region", con);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.Add("@Region_Code", SqlDbType.VarChar).Value = RegionCode;
        command.Parameters.Add("@Region_Name", SqlDbType.VarChar).Value = RegionName;
        command.Parameters.Add("@Country_Code", SqlDbType.VarChar).Value = CountryName;
        con.Open();
        int rows = command.ExecuteNonQuery();
        con.Close();

        this.txtRegionCode.Text = "";
        this.txtRegionName.Text = "";
      // this.cboCountry.Text = "";

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
