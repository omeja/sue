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

public partial class Application : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((this.txtarea5.Text).Equals(""))
        {
            string field4 = (string)(Session["ID4"]);
            this.txtarea5.Text = field4;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
        
    {
        try
        {
            string ID5 = this.txtarea5.Text;
            string productivity = this.cboprod.Text;
            string application = this.cboapp.Text;
            string desc = this.txtdesc.Text;
            string clas = this.cboclass.Text;
            Session["ID5"] = ID5;

            //
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            //
            SqlCommand command = new SqlCommand("spadd_App_Details", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID5;
            command.Parameters.Add("@Productivity", SqlDbType.Int).Value = productivity;
            command.Parameters.Add("@Applications", SqlDbType.VarChar).Value = application;
            command.Parameters.Add("@Descriptions", SqlDbType.VarChar).Value = desc;
            command.Parameters.Add("@app_class_id", SqlDbType.Int).Value = clas;
            con.Open();
            int rows = command.ExecuteNonQuery();
            con.Close();

            // clear fields
             this.txtdesc.Text = "";
            //this.cbocountry.Text = "";
            //this.cboregion.Text = "";
            //this.cbodistrict.Text = "";

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
