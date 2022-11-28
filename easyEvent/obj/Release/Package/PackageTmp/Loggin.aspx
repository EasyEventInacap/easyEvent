<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loggin.aspx.cs" Inherits="easyEvent.Loggin" %>

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
            .hl-recu{
                text-align: right;
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
    <div class="contenedor"> 
        
        <div class="medio">
             <asp:Label ID="mensaje" runat="server" Text=""></asp:Label> 
                
            <div class="for">
            <form class="formulario" runat="server">
                
            
            <br />
            
            <legend><p2 >Ingrese los siguientes datos</p2></legend>
            
            
                            
                <div class="form-floating">
                    <asp:TextBox ID="txt_Email" type="Email" placeholder="E-Mail" class="form-control"   runat="server"  ></asp:TextBox>
                    <label for="txt_Email">Email</label>
                </div>
                <br />
                <div class="form-floating">
                    <asp:TextBox ID="txt_Pass" type="Password" class="form-control"  placeholder="Password" pattern="[A-Za-z0-9_-]{1,15}" runat="server" ></asp:TextBox>
                    <label for="txt_Pass">Password</label>
                </div>
                <br />
                <div class="hl-recu">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ReContrasena.aspx">Recuperar Contraseña</asp:HyperLink>
                </div>
                <br />
                   
                  <asp:Button ID="BtnMod" OnClick="BTNIngresar" class="btn btn-primary" runat="server" Text="Ingresar"  />
                

                   <br /><br />
                <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl="~/Imagen/EasyEventLogo.png" Width="100%" />
                <br />

                   


                </form>
                </div>
            </div>
        
        </div>
</body>
     
</html>
