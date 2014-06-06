using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string ide = "3"; string ide2 = "0";
                System.Data.SqlClient.SqlConnection conn;
                conn = new System.Data.SqlClient.SqlConnection();
                conn.ConnectionString = "Data Source=PAOLO-ACER\\SQLEXPRESS;Initial Catalog=ForoBD;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";

                SqlCommand sql = new SqlCommand("INSERT INTO usuario(id_grupo,cantidad_comentarios,nombre,contraseña,avatar_url,fecha_nacimiento,sexo,fecha_registro) VALUES('" + ide + "','" + ide2 + " ',@nombre,@contrasena,@avatar_url,@fecha_nacimiento,@sexo,@fecha_registro)", conn);
                sql.CommandType = CommandType.Text;
                sql.Parameters.AddWithValue("@nombre", username.Text);
                sql.Parameters.AddWithValue("@contrasena", pass.Text);
                sql.Parameters.AddWithValue("@avatar_url", avatar.Text);
                sql.Parameters.AddWithValue("@fecha_nacimiento", fechanac.Text);
                sql.Parameters.AddWithValue("@sexo", sexo.SelectedItem.Text);
                sql.Parameters.AddWithValue("@fecha_registro", System.DateTime.Now.ToShortDateString());


                conn.Open();
                sql.ExecuteNonQuery();


               
                Response.Redirect("login.aspx");
            }
            catch {
               
            
            }
        }



       
    }
}