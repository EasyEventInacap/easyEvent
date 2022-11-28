<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListaVisualizadores.aspx.cs" Inherits="easyEvent.ListaVisualizadores" %>
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
    background-color: aliceblue;
    text-align: center;
    }
    
    .imagen {
        width:100%
    
    
    
    }
    .cont-list{
        width:90%;
        height:auto;
        border:2px solid black;
        margin-left:5%;
        margin-right:5%;
        background-color:white;
    }
    .lista{
        width:95%;
        height:auto;
       margin-left:2.5%;
        margin-right:2.5%;
       border:1px solid black;
        
    }
    @media screen and (max-width:700px){
                .medio{
                    width:100%;
                }
                .cont-list{
                    width:95%;
                    margin-left:2.5%;
                    margin-right:2.5%;
                }
                .lista{
                    width:95%;
                    margin-left:2.5%;
                    margin-right:2.5%;
                }
            }
    
    
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="contenedor"> 
        <div class="medio">
           <br />
                    
                    <br />
                    <div class="cont-list">
                        <p class="text-bg-primary">Eventos Creados</p>
                    <div class="lista">
            
                        <asp:GridView ID="GVVisualizadores" runat="server" Width="100%" height=100%></asp:GridView>
                     </div>
                        <br />
                </div>
                <br />
                
                    
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Exportar" onclick="ExportarExel" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" class="btn btn-secondary" Text="Volver" onclick="BTNVolver" />
              <br />  <br />
            </div>
        <br />
        </div>
    
</asp:Content>
