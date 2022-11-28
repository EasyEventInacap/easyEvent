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
    public partial class ModEvento : System.Web.UI.Page
    {
        SqlConnection cnx, cnn;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"].ToString() == "0")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                int pl = Convert.ToInt32(Session["plantilla"].ToString());

                if (pl == 1)
                {
                    //img.ImageUrl = "../Img/KYOcode.png";
                    Img.ImageUrl = "../Imagen/confplantilla1.png";
                }
                if (pl == 2)
                {
                    //img.ImageUrl = "../Img/KYOcode.png";
                    Img.ImageUrl = "../Imagen/confplantilla2.png";
                }
            }
        }

        protected void BTNactualizar(object sender, EventArgs e)
        {
            Actualizar();
        }

        protected void BtnCancel(object sender, EventArgs e)
        {

        }

        protected void BtnVer(object sender, EventArgs e)
        {
            mostrar();
        }
        public void Actualizar()
        {
            System.IO.Stream fs = FileUploadLogo.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string Logo = Convert.ToBase64String(bytes, 0, bytes.Length);
            //
            try
            {
                //verificar archivo por formato y por tamaño
                String ext = System.IO.Path.GetExtension(FileUploadLogo.FileName);
                ext = ext.ToLower();
                int tam = FileUploadLogo.PostedFile.ContentLength;

                if (tam <= 5048576)
                {


                    if (txtNom.Text != "" && txtdescr.Text != "" && txtdescr.Text != "" && RBvideo.SelectedItem != null)
                    {

                        SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
                        cnx.Open();
                        SqlCommand cmd = new SqlCommand("ModificarEvento", cnx);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@IdEvento", Session["id_evento"].ToString());
                        cmd.Parameters.AddWithValue("@Titulo", txtNom.Text);
                        cmd.Parameters.AddWithValue("@Desc", txtdescr.Text);
                        cmd.Parameters.AddWithValue("@Link", TxtUrl.Text);

                        String Valor = RBvideo.SelectedItem.Value;

                        cmd.Parameters.AddWithValue("@TipoLink", Valor);
                        
                        cmd.Parameters.AddWithValue("@Logo", Logo);
                        mensaje.Text = "";


                        if (cmd.ExecuteNonQuery() > 0)
                        {
                            mensaje.Text = "<div class='alert alert-dismissible alert-success'><strong>Datos actualizados correctamente </strong>Volvera al Home, espere un momento.</div>";

                            Response.AddHeader("REFRESH", "3;URL=Home.aspx");
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
            catch (Exception error)
            {

                Response.Write("El error fue: " + error.Message); ;
            }
        }
        public void mostrar()
        {
            
                SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
                cnx.Open();
                SqlCommand cmd = new SqlCommand("MostrarEvento", cnx);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id_Evento", Session["id_evento"].ToString());
                dtr = cmd.ExecuteReader();
                if (dtr.Read())
                {
                    txtNom.Text = dtr.GetString(3);
                    txtdescr.Text = dtr.GetString(4);
                    TxtUrl.Text = dtr.GetString(5);
                    
                    Image.ImageUrl = "data:image/png;base64," + dtr.GetString(12).ToString(); ;
                }
                cnx.Close();

                cnx.Dispose();


            
        }
    }
}