<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SelecPlantilla.aspx.cs" Inherits="easyEvent.SelecPlantilla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
      <link rel="stylesheet" href="css2/_bootswatch.scss">
    <link rel="stylesheet" href="css2/_variables.scss">
    <link rel="stylesheet" href="css2/bootstrap.css">
    <link rel="stylesheet" href="css2/bootstrap.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <meta name="viewport" content="width=divice-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0"/>
    <style type="text/css">
        
            contenddor{
        
                width: 100%;
                height: auto;
            }
            .medio {
            width: 60%;
            height: auto;
            margin: auto;
            border: 1px solid black;
            text-align: center;
            background-color:aliceblue;
            
            }
             .for{
                
                width: 70%;
                height: auto;
                margin: auto;
                
            }
            .formulario{
                align-content:center;
                width:40%;
            }
            .plant1{
                border: 1px solid black;
                border-radius: 50px;
                background-color: gainsboro;
            }
              @media screen and (max-width:700px){
                .medio{
                    width:100%;
                }
                .plant1{
                    width:100%;
                }
                .for {
                    width:90%;
                }
                
            }
            
            
           
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor"> 
        <br />
        <div class="medio">
            <asp:Label ID="mensaje" runat="server" Text=""></asp:Label> 
            <div class="for">
            <form class="formulario">
              <fieldset>
                  
                  <br />
                <legend><p2>Ingrese los siguientes datos</p2></legend>
                  
                    <br /><br />
                    
                   <div class="plant1">
                       <div class="card-title">
                           <p>Plantilla 1</p>
                       </div>
                       <div class="card-img">
                           <asp:Image ID="Image1" src="imagen/plantilla1.png" Width="100%" Height="100%" runat="server"  />
                       </div>
                       <br />
                       <div class="card-footer">
                            <asp:Button ID="BtnMod" OnClick="BTNplantilla1" class="btn btn-primary" runat="server" Text="Seleccionar"  />

                       </div>
                       <br />
                   </div>
                   <br /><br />
                    
                   <div class="plant1">
                       <div class="card-title">
                           <p>Plantilla 1</p>
                       </div>
                       <div class="card-img">
                           <asp:Image ID="Image2" src="imagen/plantilla2.png" Width="100%" Height="100%" runat="server"  />
                       </div>
                       <br />
                       <div class="card-footer">
                            <asp:Button ID="Button1" OnClick="BTNplantilla2" class="btn btn-primary" runat="server" Text="Seleccionar"  />

                       </div>
                       <br />
                   </div>
                       
                   
                    

                </fieldset>
                </form>
                </div>
            <br />
            </div>
         <br />
        </div>
</asp:Content>
