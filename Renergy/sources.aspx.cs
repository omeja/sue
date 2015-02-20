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

public partial class sources : System.Web.UI.Page
   

{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if( (this.txtarea.Text ).Equals(""))
        { 
string field2 = (string)(Session["ID2"]);
this.txtarea.Text = field2;
        }


        
        Button3.Visible= false;
        Button1.Visible = true;
        Button2.Visible = false;


        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string ID3 = this.txtarea.Text;
            string alternative = this.cboalternative.Text;
            string qty = this.txtqty.Text;
            string fuel = this.txtfuel.Text;
            string space = this.txtspace.Text;
            string head = this.txthead.Text;
            string flowrate = this.txtflow.Text;
            string velocity = this.txtvelocity.Text;
            string depth = this.txtdepth.Text;
            string seasons = this.txtseasons.Text;
            string floods = this.txtfloods.Text;
            string access = this.txtaccess.Text;


            Session["ID3"] = ID3;



            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            // if alternative selected is solar
            // if (cboalternative.SelectedValue == "Solar")
            //{
            // hide fields

            //SqlCommand command = new SqlCommand("spadd_solar", con);
            //command.CommandType = CommandType.StoredProcedure;
            //command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID3;
            //command.Parameters.Add("@Alternative_Id", SqlDbType.VarChar).Value = alternative;
            //command.Parameters.Add("@Qty", SqlDbType.Int).Value = qty;

            //con.Open(); int rows = command.ExecuteNonQuery();
            //con.Close();

            //// clear fields
            //// this.txtcode.Text = "";
            ////this.cbocountry.Text = "";
            ////this.cboregion.Text = "";
            ////this.cbodistrict.Text = "";

            ////if (rows == 1)
            ////{

            ////    MessageBox.Show("Data Saved Succesfully");
            ////}
            ////else
            ////{
            ////    MessageBox.Show("Data FAILED to Save!!");
            ////} 
            ////
            //}
            // if alternative selected is hydro
            //else if (cboalternative.SelectedValue =="Hydro")
            //{

            //    SqlCommand command = new SqlCommand("spadd_hydro", con);
            //    command.CommandType = CommandType.StoredProcedure;
            //    command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID3;
            //    command.Parameters.Add("@Alternative_Id", SqlDbType.VarChar).Value = alternative;
            //    command.Parameters.Add("@head", SqlDbType.VarChar).Value = head;
            //    command.Parameters.Add("@flowrate", SqlDbType.VarChar).Value = flowrate;
            //    command.Parameters.Add("@velocity", SqlDbType.VarChar).Value = velocity;
            //    command.Parameters.Add("@depth", SqlDbType.VarChar).Value = depth;
            //    command.Parameters.Add("@seasons", SqlDbType.VarChar).Value = seasons;
            //    command.Parameters.Add("@floods", SqlDbType.VarChar).Value = floods;
            //    command.Parameters.Add("@access", SqlDbType.VarChar).Value = access;

            //    con.Open(); int rows = command.ExecuteNonQuery();
            //    con.Close();

            //    // clear fields
            //    // this.txtcode.Text = "";
            //    //this.cbocountry.Text = "";
            //    //this.cboregion.Text = "";
            //    //this.cbodistrict.Text = "";


            //    //if (rows == 1)
            //    //{

            //    //    MessageBox.Show("Data Saved Succesfully");
            //    //}
            //    //else
            //    //{
            //    //    MessageBox.Show("Data FAILED to Save!!");
            //    //} 
            //}

            // if alternative sselected is biogas or gasification
            //else if (cboalternative.SelectedValue == "Biogas")
            //{
            SqlCommand command = new SqlCommand("spadd_biogas", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID3;
            command.Parameters.Add("@Alternative_Id", SqlDbType.VarChar).Value = alternative;
            command.Parameters.Add("@fuel", SqlDbType.Int).Value = fuel;
            command.Parameters.Add("@space", SqlDbType.Int).Value = space;

            con.Open(); int rows = command.ExecuteNonQuery();
            con.Close();

            // clear fields
             this.txtfuel.Text = "";
            //this.cbocountry.Text = "";
            this.txtspace.Text = "";
            //this.cbodistrict.Text = "";


            //if (rows == 1)
            //{

            //    MessageBox.Show("Data Saved Succesfully");
            //}
            //else
            //{
            //    MessageBox.Show("Data FAILED to Save!!");
            //} 
            //}
            //else if (cboalternative.SelectedValue == "Gasification")
            //{
            //SqlCommand command = new SqlCommand("spadd_biogas", con);
            //command.CommandType = CommandType.StoredProcedure;
            //command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID3;
            //command.Parameters.Add("@Alternative_Id", SqlDbType.VarChar).Value = alternative;
            //command.Parameters.Add("@fuel", SqlDbType.Int).Value = fuel;
            //command.Parameters.Add("@space", SqlDbType.Int).Value = space;

            //con.Open(); int rows = command.ExecuteNonQuery();
            //con.Close();

            // clear fields
            // this.txtcode.Text = "";
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
            //}
        }
        catch
        {
            throw;
        }
    }
    protected void cboalternative_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cboalternative.SelectedIndex==4)
        {
            txtaccess.Enabled = false;
            txtfuel.Enabled = false;
            txtspace.Enabled = false;
            txthead.Enabled = false;
            txtflow.Enabled = false;
            txtvelocity.Enabled = false;
            txtdepth.Enabled = false;
            txtseasons.Enabled = false;
            txtfloods.Enabled = false;
            txtqty.Enabled = true;
         //   txtaccess.BackColor = ;
            Button3.Visible = true;
            Button1.Visible = false;
            Button2.Visible = false;


        }
        else if (cboalternative.SelectedIndex == 3)
        {
            txtfuel.Enabled = false;
            txtspace.Enabled = false;
            txtqty.Enabled = false;
            //enabled
            txtaccess.Enabled = true;
           // txtfuel.Enabled = false;
            //txtspace.Enabled = false;
            txthead.Enabled = true;
            txtflow.Enabled = true;
            txtvelocity.Enabled = true;
            txtdepth.Enabled = true;
            txtseasons.Enabled = true;
            txtfloods.Enabled = true;
            //txtqty.Enabled = true;
            Button3.Visible = false;
            Button1.Visible = false;
            Button2.Visible = true;
        }
        else if (cboalternative.SelectedIndex == 2)
        {
                        txtqty.Enabled = false;
                        txtaccess.Enabled = false;
                        txthead.Enabled = false;
                        txtflow.Enabled = false;
                        txtvelocity.Enabled = false;
                        txtdepth.Enabled = false;
                        txtseasons.Enabled = false;
                        txtfloods.Enabled = false;
            //enabled
                        txtfuel.Enabled = true;
                        txtspace.Enabled = true;
                        Button3.Visible = false;
                        Button1.Visible = true;
                        Button2.Visible = false;

        }
        else if (cboalternative.SelectedIndex == 1)
        {
            txtqty.Enabled = false;
            txtaccess.Enabled = false;
            txthead.Enabled = false;
            txtflow.Enabled = false;
            txtvelocity.Enabled = false;
            txtdepth.Enabled = false;
            txtseasons.Enabled = false;
            txtfloods.Enabled = false;
            //enabled
            txtfuel.Enabled = true;
            txtspace.Enabled = true;
            Button3.Visible = false;
            Button1.Visible = true;
            Button2.Visible = false;


        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string ID3 = this.txtarea.Text;
            string alternative = this.cboalternative.Text;
            string qty = this.txtqty.Text;
            string fuel = this.txtfuel.Text;
            string space = this.txtspace.Text;
            string head = this.txthead.Text;
            string flowrate = this.txtflow.Text;
            string velocity = this.txtvelocity.Text;
            string depth = this.txtdepth.Text;
            string seasons = this.txtseasons.Text;
            string floods = this.txtfloods.Text;
            string access = this.txtaccess.Text;
            Session["ID3"] = ID3;
            //
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            //
            SqlCommand command = new SqlCommand("spadd_hydro", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID3;
            command.Parameters.Add("@Alternative_Id", SqlDbType.VarChar).Value = alternative;
            command.Parameters.Add("@head", SqlDbType.VarChar).Value = head;
            command.Parameters.Add("@flowrate", SqlDbType.VarChar).Value = flowrate;
            command.Parameters.Add("@velocity", SqlDbType.VarChar).Value = velocity;
            command.Parameters.Add("@depth", SqlDbType.VarChar).Value = depth;
            command.Parameters.Add("@seasons", SqlDbType.VarChar).Value = seasons;
            command.Parameters.Add("@floods", SqlDbType.VarChar).Value = floods;
            command.Parameters.Add("@access", SqlDbType.VarChar).Value = access;

            con.Open(); int rows = command.ExecuteNonQuery();
            con.Close();

            // clear fields
            this.txthead.Text = "";
            this.txtflow.Text = "";
            this.txtvelocity.Text = "";
            this.txtdepth.Text = "";
            this.txtseasons.Text = "";
            this.txtfloods.Text = "";
            this.txtaccess.Text = "";


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
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            string ID3 = this.txtarea.Text;
            string alternative = this.cboalternative.Text;
            string qty = this.txtqty.Text;
            string fuel = this.txtfuel.Text;
            string space = this.txtspace.Text;
            string head = this.txthead.Text;
            string flowrate = this.txtflow.Text;
            string velocity = this.txtvelocity.Text;
            string depth = this.txtdepth.Text;
            string seasons = this.txtseasons.Text;
            string floods = this.txtfloods.Text;
            string access = this.txtaccess.Text;
            Session["ID3"] = ID3;
            //
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            //
            SqlCommand command = new SqlCommand("spadd_solar", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@Area_Id", SqlDbType.VarChar).Value = ID3;
            command.Parameters.Add("@Alternative_Id", SqlDbType.VarChar).Value = alternative;
            command.Parameters.Add("@Qty", SqlDbType.Int).Value = qty;

            con.Open(); int rows = command.ExecuteNonQuery();
            con.Close();

            // clear fields
             this.txtqty.Text = "";
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
