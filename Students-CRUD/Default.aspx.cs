using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Students_CRUD
{
    public partial class _Default : Page 
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                LoadRecord();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-B5IK3L8;Initial Catalog=ProgrammingDB;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("insert into Studentinfo_Tab values ('"+ int.Parse(TextBox1.Text) +"', '"+ TextBox2.Text +"','"+ DropDownList1.SelectedValue +"','"+ double.Parse(TextBox4.Text) +"','"+ TextBox3.Text +"')", con);
            comm.ExecuteNonQuery();
            con.Close();
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Studentinfo_Tab", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update Studentinfo_Tab set StudentName = '" + TextBox2.Text + "', Address = '" + DropDownList1.SelectedValue + "', Age = '" + double.Parse(TextBox4.Text) + "', Contact = '" + TextBox3.Text + "' where StudentID = '" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            LoadRecord();
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete Studentinfo_Tab where StudentID = '" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Studentinfo_Tab where StudentID = '" + int.Parse(TextBox1.Text)  + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            LoadRecord();
        }
    }
}