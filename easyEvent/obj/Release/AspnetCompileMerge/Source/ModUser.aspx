<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ModUser.aspx.cs" Inherits="easyEvent.ModUser" %>
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
                
                width: 70%;
                height: auto;
                margin: auto;
                
            }
            formulario{
                align-content:center;
                width:30%;
            }
            .img{
                margin-left:25%;
                margin-right:25%;
                Width:50%; 
                Height:220px;
            }
            @media screen and (max-width:700px){
                .medio{
                    width:100%;
                }
                .img{
                margin-left:0%;
                margin-right:0%;
                Width:100%; 
                Height:220px;
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
                  <asp:Button ID="Button1" OnClick="BTNver" class="btn btn-primary" runat="server" Text="Ver"  />
                  <br />
                   <small id="emailHelp" class="form-text text-muted">Haga clcik en VER para visualizar los datos!!!...</small>
                  <br />
                <div class="form-group">
                  <label class="col-form-label mt-4" for="inputDefault">Nombre</label>
                    <asp:TextBox ID="txtNom" type="text" class="form-control" placeholder="Ingrese su Nombre" runat="server" ></asp:TextBox>
                  
                </div>
                  <div class="form-group">
                  <label class="col-form-label mt-4" for="inputDefault">Apellido</label>
                      <asp:TextBox ID="txtApe" type="text" class="form-control" placeholder="Ingrese su Apellido" runat="server" ></asp:TextBox>
               
                </div>
                  <div class="form-group">
                  <label class="col-form-label mt-4" for="inputDefault">Empresa</label>
                      <asp:TextBox ID="txtEmp" type="text" class="form-control" placeholder="Ingrese el nombre de su empresa" runat="server" ></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1" class="form-label mt-4">Email</label>
                    <asp:TextBox ID="txtEmail" type="Email" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese su Email" runat="server" ></asp:TextBox>
                 
                  <small id="emailHelp" class="form-text text-muted">Ingrese su correo corporativo.</small>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1" class="form-label mt-4">Contraseña</label>
                    <br />
                    <asp:Label ID="mensaje2" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtPass" type="password" class="form-control" placeholder="Ingrese su contraseña" runat="server" ></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtPass2" type="password" class="form-control" placeholder="Ingrese nuevamente su contraseña" runat="server" ></asp:TextBox>
                </div>
                <div class="form-group">
                  <label class="col-form-label mt-4" for="inputDefault">Palabra clave</label>
                     <asp:TextBox ID="txtPaClave" type="text" class="form-control" placeholder="Ingrese palabra clave" runat="server" ></asp:TextBox>
                  
                    <small  class="form-text text-muted">Se recomienda escoger solo una palabra de seguridad</small>
                    <small  class="form-text text-muted">la cual sera pedida en el caso de olvidar su contraseña.</small>
                </div>
                <div class="form-group">
                    
                    <br />
                  <label for="formFile" class="form-label mt-4">Imagen Corporativa</label>
                    <br />
                    <div class="img">
                    <asp:Image ID="Image"  runat="server" Width="100%" Height="100%"  />
                        </div>
                    <br /><br />
                    <small  class="form-text text-muted">no superar los 5 MB de peso en la imagen</small>
                    <br /><br />
                  <asp:FileUpload ID="FileUpload1" type="file" class="form-control" runat="server" accept="image/jpeg" onchange="return fileValidation()" />
                    <br />
                     

                    </div>
                  
                   <br />
                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" ValidationGroup="ActUser" data-bs-target="#myModalAU">
                    Actualizar</button>
                  &nbsp;
                  <asp:Button ID="BtnCanc" OnClick="BTNCancelar" class="btn btn-secondary" runat="server" Text="Volver"  />

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


                </fieldset>
                <br />
            </form>

                </div>

            </div>
            <br />
        
        </div>
    
</asp:Content>


