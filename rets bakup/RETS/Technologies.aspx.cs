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

public partial class Technologies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((this.txtareaid.Text).Equals(""))
        {
            string field3 = (string)(Session["ID3"]);
            this.txtareaid.Text = field3;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string ID4 = this.txtareaid.Text;
            string alternative = this.cboalt.Text;
            string technology = this.cbotech.Text;
            string availability = this.cboav.Text;
            string scale = this.cboscale.Text;
            string capital = this.txtcost.Text;
            string annual = this.txtOMcost.Text;
            string life = this.txtdesign.Text;
            string location = this.txtlocation.Text;

            Session["ID4"] = ID4;
            //
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            //
            SqlCommand command = new SqlCommand("spadd_Tech_Details", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID4;
            command.Parameters.Add("@Alternative_Id", SqlDbType.VarChar).Value = alternative;
            command.Parameters.Add("@Technology_Id", SqlDbType.Int).Value = technology;
            command.Parameters.Add("@Availability", SqlDbType.VarChar).Value = availability;
            command.Parameters.Add("@Scale", SqlDbType.VarChar).Value = scale;
            command.Parameters.Add("@Capital_Cost", SqlDbType.Int).Value = capital;
            command.Parameters.Add("@OMAnnual_Cost", SqlDbType.Int).Value = annual;
            command.Parameters.Add("@Design_Life", SqlDbType.Int).Value = life;
            command.Parameters.Add("@location", SqlDbType.VarChar).Value = location;
            con.Open();
            int rows = command.ExecuteNonQuery();
            con.Close();

            // clear fields
             this.txtcost.Text = "";
            this.txtOMcost.Text = "";
            this.txtlocation.Text = "";
            this.txtdesign.Text = "";
            
            //this.cbodistrict.Text = "";

            //if (rows == 1)
            //{

            //    MessageBox.Show("Data Saved Succesfully");
            //}
            //else
            //{
            //    MessageBox.Show("Data FAILED to Save!!");
            //} 

        }
        catch (Exception ex)
        {
            throw;
        }
    }
}
