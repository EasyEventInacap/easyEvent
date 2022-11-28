<%@ Page Title="Estadisticas" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Estadisticas.aspx.cs" Inherits="easyEvent.Estadisticas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="css/_bootswatch.scss">
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
            .graf {

                width: 100%;
                height: auto;
                border:1px solid black;
                background-color:white;
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
           
            @media screen and (max-width:800px){
                .medio{
                    width:100%;
                }
                .for{
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
                <legend><p2>Estadisticas</p2></legend>
                  <div class="graf">
                      <br />
                      <p>En el siguiente Grafico, podemos observar la cantidad de visualizadores que se han registrado por evento.</p>
                  <asp:Chart ID="Grafico1" runat="server" >
                    <Series>
                        <asp:Series Name="Series1" ChartType="Bar"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                     
                 </div>
                  <br />
                  <div class="lista">
            
                        <asp:GridView ID="GVVisualizadores" runat="server" Width="100%" height=100% CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                     </div>
                  <br />
              </fieldset>
                </form>
                </div>
            </div>
        <br />
        </div>
</asp:Content>
