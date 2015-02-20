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

public partial class Human_Factor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((this.txtarea6.Text).Equals(""))
        {
            string field5 = (string)(Session["ID5"]);
            this.txtarea6.Text = field5;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string ID6 = this.txtarea6.Text;
            string upfront = this.txtup.Text;
            string omcosts = this.txtom.Text;
            string local = this.txtlocal.Text;
            String arts = this.txtarts.Text;

            //
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            //
            SqlCommand command = new SqlCommand("spadd_HFactor_Details", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID6;
            command.Parameters.Add("@Upfront_Costs", SqlDbType.Int).Value = upfront;
            command.Parameters.Add("@OM_Costs", SqlDbType.Int).Value = omcosts;
            command.Parameters.Add("@Local_Manufacturers", SqlDbType.Int).Value = local;
            command.Parameters.Add("@Local_Artisans", SqlDbType.Int).Value = arts;


            con.Open();
            int rows = command.ExecuteNonQuery();
            con.Close();

            // clear fields
            this.txtup.Text = "";
            this.txtom.Text = "";
            this.txtlocal.Text = "";
            this.txtarts.Text = "";

            //if (rows == 1)
            //{

            //    MessageBox.Show("Data Saved Succesfully");
            //}
            //else
            //{
            //    MessageBox.Show("Data FAILED to Save!!");
            //} 
            //
        }
        catch (Exception ex)
        {
            throw;
        }
    }
}
