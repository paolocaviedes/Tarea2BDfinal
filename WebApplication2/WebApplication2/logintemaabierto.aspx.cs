﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class logintemaabierto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button30_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=PAOLO-ACER\\SQLEXPRESS;Initial Catalog=ForoBD;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";

            SqlCommand sql = new SqlCommand("SELECT id_usuario FROM usuario WHERE nombre = @nombre AND contraseña = @contrasena", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@nombre", userName3.Text);
            sql.Parameters.AddWithValue("@contrasena", password3.Text);
            conn.Open();
            int id_usuario = Convert.ToInt32(sql.ExecuteScalar());
            Session["id_usuario"] = id_usuario;

            Response.Redirect("Inicio.aspx");
        }

        protected void Registrarclick(object sender, EventArgs e)
        {

            Response.Redirect("Registro.aspx");
        }

        protected void Button31_Click(object sender, EventArgs e)
        {
            Session["id_categoria"] = id_categoria3.Text;
            Response.Redirect("logintema.aspx?id_categoria = " + id_categoria3.Text);
        }
       

        protected void Button33_Click(object sender, EventArgs e)
        {
            Session["id_theme"] = tema2.Text;
            Response.Redirect("logintemaabierto.aspx?id_theme = " + tema2.Text);
        }

        
    }
}