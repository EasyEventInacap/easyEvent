<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MenEvent.aspx.cs" Inherits="easyEvent.MenEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css1/bootstrap.min.css">
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
            width: 70%;
            height: auto;
            margin: auto;
            border: 1px solid black;
            text-align: center;
            background-color:aliceblue;
            
            }
             .for{
                
                width: 90%;
                height: auto;
                margin: auto;
                
            }
            .formulario{
                align-content:center;
                width:30%;
            }
            .Ver{
                background-color:white;
                width:100%;
                height: auto;
                border: 1px solid black;
            }
            @media screen and (max-width:700px){
                .medio{
                    width:100%;
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
                             <legend><p2>Evento</p2></legend>
                            <div class="Ver">
                                <p class="text-bg-primary">Visualizar Evento</p>
                                Nombre: 
                                <asp:Label ID="txtNombre" class="" runat="server" Text="texto"></asp:Label>
                              <br />
                              Decripcion: <asp:Label ID="txtDesc" class="" runat="server" Text="texto"></asp:Label>
                              <br />
                              Url: <asp:Label ID="txtUrl" class="" runat="server" Text="texto"></asp:Label>
                              <br /><br />
                            
                            
                                <asp:Button ID="BtnMod" OnClick="BTNactualizar" class="btn btn-primary" runat="server" Text="Pre Visualizar"  />
                                &nbsp;<asp:Button ID="BtnVisua" OnClick="BtnVisualizadores" class="btn btn-primary" runat="server" Text="lista de visualizadores"  />
                           
                                <br />
                           
                                <br />
                           
                            </div>
                            <br />
                            <div class="Ver">
                                <p class="text-bg-primary">Editar Evento</p>
                               
                            
                            
                                <asp:Button ID="BtnModificar"  class="btn btn-primary" runat="server" Text="Modificar" OnClick="BtnModificar_Click"  />
                        
                                <br />
                        
                                <br />
                        
                            </div>
                            <br />
                            <div class="Ver">
                                <p class=" text-bg-danger">Eliminar Evento</p>
                            
                                
                            
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" ValidationGroup="ActUser" data-bs-target="#myModalAU">
                    Eliminar</button>

                  <!-- The Modal -->
                    <div class="modal fade" id="myModalAU">
                      <div class="modal-dialog">
                        <div class="modal-content">

                          <!-- Modal Header -->
                          <div class="modal-header">
                            <h4 class="modal-title">Seguro!...</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                          </div>

                          <!-- Modal body -->
                          <div class="modal-body">
                            <p>Haz click en eliminar para borrar el evento...</p>
                          </div>

                          <!-- Modal footer -->
                          <div class="modal-footer">
                            
                              <asp:Button ID="BtnEliminar"  class="btn btn-danger" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click"  />
                            
                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cerrar</button>
                          </div>
      

                        </div>
                      </div>
                    </div>


                                <br />
                        
                                <br />
                        
                            </div>
                        </fieldset
                    </form>
                    
                </div>
            <br />
            <asp:Button ID="BtnCanc" OnClick="BTNCancelar" class="btn btn-secondary" runat="server" Text="Volver"  />
            <br />
            </div>
        <br />
       </div>

</asp:Content>
