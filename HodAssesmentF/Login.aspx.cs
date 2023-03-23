using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HodAssesmentF
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Response.Redirect("Feedback.aspx");
            }

        }
   String constr = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString; 
        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                string user = Id1.Text.Trim();
                SqlCommand cmd = new SqlCommand("select count(*)from ReportingPerson where Empid = '" + Id1.Text + "' and Password = '" + Pd1.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds, "Users");
                cmd.ExecuteNonQuery();
                if (ds.Tables["Users"].Rows.Count == 0)
                {
                    Response.Write("UnSuccesfull Attempt");


                }
                else
                {
                    Session["user"] = user;
                    Response.Redirect("Feedback.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }
    }
}