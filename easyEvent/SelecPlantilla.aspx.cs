using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace easyEvent
{
    public partial class SelecPlantilla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"].ToString() == "0")
            {
                Response.Redirect("Loggin.aspx");
            }
            else
            {

            }
        }
        protected void BTNplantilla1(object sender, EventArgs e)
        {
            Session["plantilla"] = 1;
            Response.Redirect("CrearEvento.aspx");
        }
        protected void BTNplantilla2(object sender, EventArgs e)
        {
            Session["plantilla"] = 2;
            Response.Redirect("CrearEvento.aspx");
        }

    }
}