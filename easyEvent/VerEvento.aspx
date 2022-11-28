<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerEvento.aspx.cs" Inherits="easyEvent.VerEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <meta name="viewport" content="width=divice-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0"/>

    
    <style type="text/css">
             body{
                display: grid;
            min-height: 100vh;
            grid-template-rows: auto 1fr auto;
                background-color: #E0E0E0;
            }
            .contenddor{
                margin-top:2px;
                width: 100%;
                height: auto;
                background-color: aliceblue;
            }
            .medio {
            width: 50%;
            height: auto;
            margin: auto;
            border: 1px solid black;
            text-align: center;
            background-color:white;
            border-radius: 4px;
	        padding: 15px;
	        position: absolute;
	        top: 50%;
	        left: 50%;
	        transform: translate(-50%, -50%);
            
            
            }
            .for{
                
                width: 40%;
                height: auto;
                margin: auto;
                
            }
            .formulario{
                
            }
          
            @media screen and (max-width:700px){
                .medio{
                    width:100%;
                }
                .for{
                
                width: 60%;
                
                }
            }
            
         </style>
</head>
<body>
    <div id="google_translate_element" class="google"></div>

    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({ pageLanguage: 'es', includedLanguages: 'ca,eu,gl,en,fr,it,pt,de', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, gaTrack: true }, 'google_translate_element');
        }
    </script>

    <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
     <div class="contenedor"> 
        
        <div class="medio">
             <asp:Label ID="mensaje" runat="server" Text=""></asp:Label> 
                
            <div class="for">
            <form class="formulario" runat="server">
                
            
            <br />
            
            <legend><p2 >Bienvenido</p2></legend>
            <p >Ingrese el numero de evento que se le proporciono</p>
            
                           
                <div class="form-floating">
                    <asp:TextBox ID="txt_Evento" type="Number" placeholder="numero de evento" class="form-control"   runat="server"  ></asp:TextBox>
                    <label for="txt_Evento">Numero de Evento</label>
                          <br />              
                  <asp:Button ID="BtnMod" OnClick="BTNIngresar" class="btn btn-primary" runat="server" Text="Ingresar"  />
                    &nbsp;<asp:Button ID="BtnCanc" OnClick="BTNCancelar" class="btn btn-secondary" runat="server" Text="Volver"  />
                 <br />

                   
                </div>
                </form>       </script>
                </div>
            </div>
       </div></html>

