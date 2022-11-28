using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace easyEvent
{
    public partial class ModUser : System.Web.UI.Page
    {

        SqlConnection cnx, cnn;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (Session["usuario"].ToString() == "0")
            {
                Response.Redirect("Loggin.aspx");

            }

            mensaje.Text = "";
            mensaje2.Text = "";

        }
        protected void BTNactualizar(object sender, EventArgs e)
        {
            System.IO.Stream fs = FileUpload1.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string Logo = Convert.ToBase64String(bytes, 0, bytes.Length);
            //
            try
            {
                if (txtPass.Text == txtPass2.Text)
                {

                    //verificar archivo por formato y por tamaño
                    String ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                    ext = ext.ToLower();
                    int tam = FileUpload1.PostedFile.ContentLength;

                    if (tam <= 5048576)
                    {


                        if (txtNom.Text != "" && txtApe.Text != "" && txtEmail.Text != "" && txtEmp.Text != "" && txtPass.Text != "" && txtPass2.Text != "" && txtPaClave.Text != "")
                        {

                            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
                            cnx.Open();
                            SqlCommand cmd = new SqlCommand("ActualizarUser", cnx);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@id_user", Session["usuario"].ToString());
                            cmd.Parameters.AddWithValue("@nombre", txtNom.Text);
                            cmd.Parameters.AddWithValue("@apellido", txtApe.Text);
                            cmd.Parameters.AddWithValue("@empresa", txtEmp.Text);
                            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                            cmd.Parameters.AddWithValue("@password", txtPass.Text);
                            cmd.Parameters.AddWithValue("@passRescue", txtPaClave.Text);
                            cmd.Parameters.AddWithValue("@LogoEm", Logo);
                            mensaje.Text = "";
                            mensaje2.Text = "";

                            if (cmd.ExecuteNonQuery() > 0)
                            {
                                mensaje.Text = "<div class='alert alert-dismissible alert-success'><strong>Datos actualizados correctamente </strong>Se cerrara la sesion, espere un momento.</div>";

                                Session["usuario"] = "0";

                                Response.AddHeader("REFRESH", "3;URL=Loggin.aspx");
                            }
                            else
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error al ingresar los datos')", true);

                            }
                            cnx.Close();

                            cnx.Dispose();
                        }

                        else
                        {
                            mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong> llene todas las casillas.</div>";
                        }
                    }
                    else
                    {
                        mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong> el tamaño o el formato no son soportados.</div>";
                    }
                }
                else
                {
                    mensaje2.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong> las contraseñas no coinciden.</div>";
                }
            }
            catch (Exception error)
            {

                Response.Write("El error fue: " + error.Message); ;
            }


        }

        protected void BTNver(object sender, EventArgs e)
        {
            Mostrar();
        }

        protected void BTNCancelar(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        public void Mostrar()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("MostrarUser", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id_User", Session["usuario"].ToString());
            dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                txtNom.Text = dtr.GetString(1);
                txtApe.Text = dtr.GetString(2);
                txtEmp.Text = dtr.GetString(3);
                txtEmail.Text = dtr.GetString(4);
                txtPass.Text = dtr.GetString(5);
                txtPaClave.Text = dtr.GetString(6);
                Image.ImageUrl = "data:image/png;base64," + dtr.GetString(7).ToString(); ;
            }
            cnx.Close();

            cnx.Dispose();
        

        }

    }
}