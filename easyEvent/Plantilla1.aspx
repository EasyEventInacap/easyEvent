<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plantilla1.aspx.cs" Inherits="easyEvent.Plantilla1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Evento</title>
    <link rel="stylesheet" href="css/_bootswatch.scss">
    <link rel="stylesheet" href="css2/_variables.scss">
    <link rel="stylesheet" href="css2/bootstrap.css">
    <link rel="stylesheet" href="css2/bootstrap.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <meta name="viewport" content="width=divice-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0"/>
    <style type="text/css">
            body{
                background-color: #E0E0E0;
            }
            .contendor{
        
                width: 100%;
                height: auto;
            }
            .medio {
            width: 60%;
            height: auto;
            margin: auto;
            border: 5px solid black;
            text-align: center;
            background-color:aliceblue;
          
            
            }
            .Mhead{
                width:100%;
                height:130px;
                
               
            }
            .MLogo{
                width:20%;
                height:130px;
               
                float:left;
                
            }
            .Titulo{
                width:80%;
                height:130px;
                
                float:left;
            }
            .Mmedio{
                width:100%;
                height:100px;
                
            }
            .Mdesc{
                
            }
            .video{
                width:100%;
                height:450px;
                
            }
          
             
            @media screen and (max-width:800px){
                .medio{
                    width:100%;
                }
                .MLogo{
                width:40%;
                
                }
                .Titulo{
                    width:60%;
                
                }
                .video{
               
                height:250px;
                
            }
                
            }
        </style>

    
</head>
<body>
     <div class="contenedor"> 
        <br />
        <div class="medio">
            
            <asp:Label ID="mensaje" runat="server" Text=""></asp:Label> 
            
            <form class="formulario">
              <fieldset>
                   
                  <div class="Mhead">
                      <div class="MLogo">
                         
                          <asp:Image ID="img" runat="server" Height="100%" Width="100%" />
                      </div>
                      <div class="Titulo">
                          <legend><p class="text-bg-primary">Bienvenido a :</p></legend>
                          <asp:Label ID="txtNombreEvento"  runat="server" Text="Label" Font-Size="25px" ></asp:Label>
                      </div>
                  </div>
                  <div class="Mmedio">
                      <div class="Mdesc">
                          <legend><p class="text-bg-primary">Descripcion :</p></legend>
                           <asp:Label ID="txtDescripcion" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                      </div>
                  </div>
                  <div class="video">
                       <asp:Label ID="video" runat="server" Text="video"></asp:Label>
                  </div>
                 
                  <br />
                  
               
                   
                       
              </fieldset>
            </form>
               
            </div>
         </div>

</body>
</html>
