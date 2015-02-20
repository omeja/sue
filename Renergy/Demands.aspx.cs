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

public partial class Demands : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((this.txtareacode.Text).Equals(""))
        {
            string field1 = (string)(Session["ID"]);
            this.txtareacode.Text = field1;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // int num = random.Next();
        try
        {

            string ID2 = this.txtareacode.Text;
            string demandtype = this.cbodtype.Text;
            string demandid = this.cbodid.Text;
            string hours = this.txthours.Text;
            string load = this.txtload.Text;
            string demandcateg = this.cbocateg.Text;
            String demandunits = this.cbounits.Text;


            Session["ID2"] = ID2;



            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);

            SqlCommand command = new SqlCommand("spadd_demanddetails", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Locus_Id", SqlDbType.VarChar).Value = ID2;
            command.Parameters.Add("@Demand_Type", SqlDbType.Int).Value = demandtype;
            command.Parameters.Add("@Demand_Id", SqlDbType.Int).Value = demandid;
            command.Parameters.Add("@hours", SqlDbType.Int).Value = hours;
            command.Parameters.Add("@load", SqlDbType.Int).Value = load;
            command.Parameters.Add("@catid", SqlDbType.Int).Value = demandcateg;
            command.Parameters.Add("@unit_code", SqlDbType.VarChar).Value = demandunits;
            con.Open();
            int rows = command.ExecuteNonQuery();
            con.Close();

            // clear fields
            // this.txtcode.Text = "";
            //this.cbocountry.Text = "";
            this.txtload.Text = "";
            this.txthours.Text = "";


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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtareacode_TextChanged(object sender, EventArgs e)
    {

    }
}
;