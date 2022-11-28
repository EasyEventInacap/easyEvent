<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="easyEvent.Home" %>
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
                    
                    <asp:Image ID="Image"  runat="server" Width="241px" Height="165px" />
                    
                        <br />
                    <br />
                    <strong>
                    <asp:Label ID="txt_Saludo" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                    <br />
                    </strong>
            <br />
            <div class="cont-list">
                <p class="text-bg-primary">Eventos Creados</p>
            <div class="lista">
                
                <asp:GridView ID="GVEventos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" width=100% height=100% OnSelectedIndexChanged="GView_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:ButtonField ButtonType="Button" Text="Abrir" ControlStyle-CssClass="btn btn-primary" CommandName="Select" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
                <br />
                </div>
            <br />
        </div>
    </div>
     <br />
    
</asp:Content>
