using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace easyEvent
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["usuario"] = 0;
            Session["IDUserRescue"] = 0; // este es para recuperar la contraseña del administrador si se le olvida
            Session["id_evento"] = 0;
            Session["Busca_evento"] = 0;

            Session["Plantilla"] = 0;

            // <add key="ChartImageHandler" value="storage=file;timeout=20;dir = c:\TempImageFiles\;" />
            //cadena de conexion para sql server.
            //Session["Cadena"] = "Data Source=LAPTOP-J0AGFN66;Initial Catalog=Event;Integrated Security=True";
            Session["Cadena"] = "Data Source=dbEvent.mssql.somee.com;Initial Catalog=dbEvent;user id=easyEvent_Inacap_SQLLogin_1;pwd=2u8efjbzlf";
        }

        
    }
}