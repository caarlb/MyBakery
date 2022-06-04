
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Backend.clsBread"%>
<%@page import="java.sql.ResultSet"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>SANCHEZ BAKERY</title>
    </head>

    <body>
        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Inicio</a>

                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item ">
                            <a class="nav-link active" aria-current="page" href="login.html">Iniciar Sesion</a>
                    </ul>

                </div>
            </div>
        </nav>
        <!-- /Header -->

        <!-- Main -->
        <p>Bienvenido a la pagina de compras numero de 1 de la television humoristica</p>

        <div class="container">
            <div class="row ">

                <%
                    clsBread objBread = new clsBread();
                    ResultSet res = objBread.fncQueryBread();
                     if (res != null){
                        while(res.next()){ 
                            if(res.getString("IS_ACTIVE").equals("1") && Integer.parseInt(res.getString("STOCK")) > 0 ){
                %>
                <div class="col-3 p-3">
                    <div class="card" style="width: 18rem;">
                        <img src="img/<%=res.getString("IMG_1")%>" class="card-img-top" alt="imagen de <%=res.getString("NAME")%>"
                             onmouseout="this.src = 'img/<%=res.getString("IMG_1")%>'" onmouseover="this.src = 'img/<%=res.getString("IMG_2")%>'" width="150">
                        <div class="card-body">
                            <h5 class="card-title"><%=res.getString("NAME")%></h5>
                            <p class="card-text"><%=res.getString("DESCRIPTION")%></p>
                            <p class="card-text">Q <%=res.getString("PRICE")%></p>
                            
                            <form id="sending<%=res.getString("COD_BREAD")%>" method="post" action="shop.jsp">
                                <input  type="hidden" name="cod_bread" value="<%=res.getString("COD_BREAD")%>" >
                                <a class="btn btn-primary" onclick="document.getElementById('sending<%=res.getString("COD_BREAD")%>').submit();">Comprar</a>
                            </form>
                        </div>
                    </div> 
                </div>  
                <%
                            }
                        }
                    }
      
                %>

            </div>

        </div>
        <!-- /Main -->

        <!-- Footer -->
        <footer class="bg-dark text-center text-lg-start">
            <!-- Copyright -->
            <div class="text-center p-3">
                <span style="color: white;"> Derechos reservados | 2022 | Carlos Alberto Sanchez Mendoza</span>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </body>

</html>