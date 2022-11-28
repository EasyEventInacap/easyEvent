<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plantilla2.aspx.cs" Inherits="easyEvent.Plantilla2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
</head>
<body>
    <div class="contenedor"> 
        <br />
        <div class="medio">
            <asp:Label ID="mensaje" runat="server" Text=""></asp:Label> 
            <div class="for">
                <asp:Label ID="txtNombreEvento" runat="server" Font-Size="XX-Large" ForeColor="Red" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
        
        
    <form id="form1" runat="server">
        
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="713px">
                <br />
                <br />
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style26">&nbsp;
                        </td>
                        <td class="auto-style26">
                            <asp:ImageButton ID="imgLogo" runat="server" Height="128px" Width="271px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <table align="center" class="auto-style21">
                    <tr>
                        <td class="auto-style23" style="background-color: #C0C0C0">
                            <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Red" Text="Descripcion:"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="txtDescripcion" runat="server" Font-Size="Large" ForeColor="Black" Text="Label"></asp:Label>
                        </td>
                        <td rowspan="2">&nbsp;
                            <asp:Label ID="video" runat="server" Text="video"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22" style="background-color: #C0C0C0">&nbsp; </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
