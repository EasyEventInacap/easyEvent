<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Somos.aspx.cs" Inherits="easyEvent.Somos" %>
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
                width:30%;
            }
            @media screen and (max-width:700px){
                .medio{
                    width:100%;
                }
                .for{
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
                  
                  <br />
                <legend><p2>Quienes somos</p2></legend>
                  
                    <br /><br />
                  <div class="accordion" id="accordionExample">
                  <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Quienes somos...
                      </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                      <div class="accordion-body">
                        <strong>Somos un grupo de estudiantes.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Jotavision...
                      </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                      <div class="accordion-body">
                          <div class="text">
                              <strong>Somos...</strong> Una empresa integral con 23 años de experiencia en el ámbito de la producción técnica de eventos, creada en el año 1994, por el Comunicador Audiovisual Juan E. Cartes Mena.

                        Jotavisión cuenta con una amplia experiencia y capacidad para desarrollar cualquier tipo de proyecto con soluciones innovadoras, utilizando equipamiento de alto nivel, que cumple con los elevados estándares exigidos por las empresas que nos han seleccionado como sus proveedores.

                        Nuestra misión es apoyar, asesorar y desarrollar todo tipo de proyectos, de inicio a fin, con el propósito de satisfacer todos sus requerimientos, para ello contamos con un staff de profesionales calificados y dedicados específicamente a las distintas áreas de trabajo de nuestra empresa.

                        En la búsqueda de ser una empresa vanguardista, hemos viajado constantemente al extranjero. En el año 2005, realizamos una gira por diferentes lugares de Europa en busca de la más alta tecnología y fruto de esto fuimos pioneros en traer a Chile el escenario de origen Italiano Sixtema, de cuya empresa somos actualmente sus representantes para América Latina..
                          </div>
                          <br />
                          <div class="imagen">
                              <asp:Image ID="Image1" runat="server" Height="80%" ImageUrl="~/Imagen/Jotavision.jpg" Width="80%" />
                          </div>


                        
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Agradecimientos...
                      </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                      <div class="accordion-body">
                        <strong>Agradecemos a: </strong> A todos los profesores que durante todos estos años de estudios<code>.accordion-body</code>, though the transition does limit overflow.
                      </div>
                    </div>
                  </div>
                </div>
                  <br /><br />
                  </fieldset>
                </form>
                </div>
            </div>
          </div>
</asp:Content>
