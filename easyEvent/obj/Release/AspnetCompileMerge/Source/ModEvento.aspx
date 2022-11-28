<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ModEvento.aspx.cs" Inherits="easyEvent.ModEvento" %>
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
            width: 70%;
            height: auto;
            margin: auto;
            border: 1px solid black;
            text-align: center;
            background-color:aliceblue;
            
            }
             .for{
                
                width: 95%;
                height: auto;
                margin: auto;
                
            }
            .formulario{
                align-content:center;
                width:30%;

            }
            .con{
                 width:100%;
                height: 500px;
                
            }
            
            .ver{
                 width:45%;
                height: auto;
                 float: left;
                border: 1px solid black;
                background-color:white;
            }
            .dentro{
                width:90%;
                margin-left:5%;
                margin-right:5%;
                   
                
            }
            .ver1{
                 width:55%;
                height:77.2% ;
                 float: left;
                border: 1px solid black;
                background-color:white;
            }
            .ver2{
                ;
                 width:55%;
                height: auto;
                 float: left;
                border: 1px solid black;
                background-color:white;
            }
            
            
            @media screen and (max-width:850px){
                .medio{
                    width:100%;
                }
                .dato{
                    width:100%;
                }
                .ver{
                    width:100%;
                }
                .ver1{
                    width:100%;
                }.ver2{
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
                             <legend><p2>Modificar Evento</p2></legend>
                           <div class="con"> 
                            <div class="ver">
                                <p class="text-bg-primary">Datos del Evento</p>
                                <asp:Button  ID="Btn_Ver" class="btn btn-primary" runat="server" Text="Ver Datos" OnClick="BtnVer"  />
                                <div class="dentro">
                                
                                <div class=" form-group">
                                  <label class="col-form-label mt-4" for="inputDefault">Nombre del evento</label>
                                    <asp:TextBox ID="txtNom" type="text" class="form-control" placeholder="Ingrese el Nombre del evento" runat="server" ></asp:TextBox>
                                   </div>
                                <div class=" form-group">
                                  <label class="col-form-label mt-4" for="inputDefault">Descripcion</label>
                                    <asp:TextBox ID="txtdescr" type="text" class="form-control" placeholder="Ingrese la descripcion" runat="server" ></asp:TextBox>
                                   </div>
                                <div class="form-group">
                                  <label class="col-form-label mt-4" for="inputDefault">url</label>
                                    <asp:TextBox ID="TxtUrl" type="text" class="form-control" placeholder="Ingrese la URL" runat="server" ></asp:TextBox>
                                   </div>
                                     <div class="form-group">
                                        <asp:RadioButtonList ID="RBvideo" class="btn-group" runat="server">
                                            <asp:ListItem Text="Youtube" class="radio" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Vimeo" class="radio" Value="2"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                <div class="form-group">
                                    <label class="col-form-label mt-4" for="inputDefault">Logo</label>
                                    <asp:FileUpload ID="FileUploadLogo" type="file" class=" form-control" runat="server" accept="image/jpeg" onchange="return fileValidation()" />
                                </div>
                                    <div class="form-group">
                                    <label class="col-form-label mt-4" for="inputDefault">Imagen anterior</label>
                                    <asp:Image ID="Image"  runat="server" Width="241px" Height="165px" />
                                </div>
                                <br />
                               </div>
                            </div>
                            
                            <div class="ver1">
                                <p class="text-bg-primary">Imagen</p>
                                <asp:Image ID="Img" runat="server" Height="100%" Width="100%" />
                            </div>
                            <div class="ver2">
                                <p class="text-bg-primary">Opciones</p>
                                
                               <button type="button" class="btn btn-primary" data-bs-toggle="modal" ValidationGroup="ActUser" data-bs-target="#myModalAU">
                                    Actualizar</button>

                                &nbsp;
                                <asp:Button ID="BtnCancelar" class="btn btn-secondary" runat="server" Text="Cancelar" OnClick="BtnCancel" />

                                
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
                                            <p>Haz click en modificar para guardar los cambios...</p>
                                          </div>

                                          <!-- Modal footer -->
                                          <div class="modal-footer">
                                            <asp:Button ID="BtnMod" OnClick="BTNactualizar" class="btn btn-danger" runat="server" Text="Modificar"  />
                            
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cerrar</button>
                                          </div>
      

                                        </div>
                                      </div>
                                    </div>
                            </div>
                               </div>
                         </fieldset>
                        </form>
                    </div>
            </div>
        <br />
        </div>
</asp:Content>
