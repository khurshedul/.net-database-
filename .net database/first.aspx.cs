using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class first : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand comm;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBC"].ConnectionString);
        }


        
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex++;
            string sql= "insert into student values('"+Name.Text+"','"+Email.Text+"','"+Pass.Text+"')";
            comm = new SqlCommand(sql,conn);
            conn.Open();
            comm.ExecuteNonQuery();
            sql = "select *  from student";
            comm = new SqlCommand(sql, conn);
            SqlDataReader da= comm.ExecuteReader();
            GridView1.DataSource=da;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex--;
        }
    }
}