using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace HodAssesmentF
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session ["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                showdata();
            }
        }

        public void showdata()
        {
            String constr = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from ReportingPerson where Empid = '" + Session["user"] + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Label1.Text = ds.Tables[0].Rows[0]["Empid"].ToString();
        }

    }
}