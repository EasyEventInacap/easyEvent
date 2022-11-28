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
    public partial class CrearEvento : System.Web.UI.Page
    {
        SqlConnection cnx;
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
        public void Crear()
        {
            

            //imag a bs64
            System.IO.Stream fs = FileUploadLogo.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string logo = Convert.ToBase64String(bytes, 0, bytes.Length);
            //img2
            /*
            System.IO.Stream fs2 = FUImagen2.PostedFile.InputStream;
            System.IO.BinaryReader br2 = new System.IO.BinaryReader(fs2);
            Byte[] bytes2 = br2.ReadBytes((Int32)fs2.Length);
            string fondo = Convert.ToBase64String(bytes2, 0, bytes2.Length);
            */
            try
            {
                if (txtNom.Text != "" && txtdescr.Text != "" && TxtUrl.Text != "" && RBvideo.SelectedItem != null && FileUploadLogo != null)
                {
                    SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
                    cnx.Open();
                    SqlCommand cmd = new SqlCommand("CrearEvento", cnx);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@NombreEvento", txtNom.Text);
                    cmd.Parameters.AddWithValue("@DescEvento", txtdescr.Text);
                    cmd.Parameters.AddWithValue("@LinkEvento", TxtUrl.Text);
                    cmd.Parameters.AddWithValue("@LogoEvento", logo);
                    cmd.Parameters.AddWithValue("@IdUsuario", Session["usuario"].ToString());
                    cmd.Parameters.AddWithValue("@Plantilla", Session["plantilla"].ToString());
                    
                        String Valor = RBvideo.SelectedItem.Value;
                        
                    
                    cmd.Parameters.AddWithValue("@TipoLink", Valor);
                    if (CheckBox.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@LogVisualizadores", "1");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@LogVisualizadores", "0");
                    }




                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        mensaje.Text = "<div class='alert alert-dismissible alert-success'><strong> Evento Creado... </strong> Espere un momento. </div>";
                        Response.AddHeader("REFRESH", "2;URL=Home.aspx");
                    }
                    cnx.Close();
                    cmd.Dispose();
                }
                else
                {
                    mensaje.Text = "<div class='alert alert-dismissible alert-warning'><strong> Precaucion... </strong> llene todas las casillas </div>";
                }
            }
            catch (Exception error)
            {

                Response.Write("El error fue: " + error.Message); ;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Crear();
            
        }

        protected void BTNCancelar(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}