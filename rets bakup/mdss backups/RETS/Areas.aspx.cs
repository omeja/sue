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

public partial class Areas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
      // this.txtcode.Text = num.ToString;
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
       // int num = random.Next();

        string ID = this.txtcode.Text;
        string CountryCode = this.txtcountry.Text;
        string RegionCode = this.txtregion.Text;
        string DistrictId = this.txtdistrict.Text;
        string subcounty = this.txtsubcounty.Text;
        string Parish = this.txtparish.Text;
        string Village = this.txtvillage.Text;
        string TradingCenter = this.txtcentre.Text;
        string site = this.txtsite.Text;


      Session["ID"] = ID;



        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);

        SqlCommand command = new SqlCommand("spadd_area", con);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.Add("@ID", SqlDbType.VarChar).Value = ID;
        command.Parameters.Add("@Country_Code", SqlDbType.VarChar).Value = CountryCode;
        command.Parameters.Add("@Region_Code", SqlDbType.VarChar).Value = RegionCode;
        command.Parameters.Add("@District_Id", SqlDbType.Int).Value = DistrictId;
        command.Parameters.Add("@Subcounty", SqlDbType.VarChar).Value = subcounty;
        command.Parameters.Add("@Parish", SqlDbType.VarChar).Value = Parish;
        command.Parameters.Add("@Village", SqlDbType.VarChar).Value = Village;
        command.Parameters.Add("@Trading_Centre", SqlDbType.VarChar).Value = TradingCenter;
        command.Parameters.Add("@Site", SqlDbType.VarChar).Value = site;
        con.Open();int rows = command.ExecuteNonQuery();
        con.Close();

        // clear fields
       // this.txtcode.Text = "";
        //this.cbocountry.Text = "";
        //this.cboregion.Text = "";
        //this.cbodistrict.Text = "";
        this.txtsubcounty.Text = "";
        this.txtparish.Text = "";
        this.txtvillage.Text = "";
        this.txtcentre.Text = "";
        this.txtsite.Text = "";


        //if (rows == 1)
        //{

        //    MessageBox.Show("Data Saved Succesfully");
        //}
        //else
        //{
        //    MessageBox.Show("Data FAILED to Save!!");
        //} 
    }
    protected void cbocountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcountry.Text = cbocountry.SelectedValue;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void cboregion_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtregion.Text = cboregion.SelectedValue;

    }
    protected void cbodistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtdistrict.Text = cbodistrict.SelectedValue;

    }
}
