<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="easyEvent.Prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta name="viewport" content="width=divice-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0"/>
    <style type="text/css">
        
            .contenddor{
        
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
                
                width: 90%;
                height: auto;
                margin: auto;
                border:1px solid black;
                
            }
            .formulario{
                align-content:center;
                width:30%;
            }
            .img{
                width:80%;
                margin-left:10%;
                margin-right:10%;

                height:auto;
            }
            .video{
                width:80%;
                margin-left:10%;
                margin-right:10%;

                height:auto;
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
        <div class="medio" >
            <asp:Label ID="mensaje" runat="server" Text=""></asp:Label> 
            <div class="for">
            <form id="formulario"  runat="server">
                <p>hola mundo</p>
                <div class="img">
                    <img src="https://static.retail.autofact.cl/blog/c_img_740x370.rpbbp8kyezf0rd.jpg" width="100%">
                </div>
                <br />
                <div class="video">
                    <div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden;"> <iframe style="width:100%;height:100%;position:absolute;left:0px;top:0px;overflow:hidden" frameborder="0" type="text/html" src="https://www.dailymotion.com/embed/video/x8fdvxl" width="100%" height="100%" allowfullscreen title="Dailymotion Video Player" > </iframe> </div>
                </div>

            </form>
                </div>
            </div>
        </div>
</body>
</html>
