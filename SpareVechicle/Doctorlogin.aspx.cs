using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
using System.Web.Security;

public partial class opendirve : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    string OBJ;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM Doctor WHERE DoctorUsername='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'");
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
            Session["DoctorUsername"] = TextBox1.Text;
            Response.Redirect("PatientReport.aspx");

        }
        else
        {
            lblerror.Visible = true;
            lblerror.Text = "Invalid Username and Password";

        }

    }
}