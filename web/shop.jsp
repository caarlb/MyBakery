
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Backend.clsBread"%>
<%@page import="java.sql.ResultSet"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />



<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shop</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
    </head>

    <body>
        <%
            int codigo;
            codigo = Integer.parseInt(request.getParameter("cod_bread"));
            
            clsBread bread = new clsBread();
            ResultSet res = bread.fncQuerySpecificBread(codigo);
            if (res != null){
                while(res.next()){ 
                    bread.setCodBread(res.getString("COD_BREAD"));
                    bread.setName(res.getString("NAME"));
                    bread.setDescription(res.getString("DESCRIPTION"));                                        
                    bread.setPrice(Double.parseDouble(res.getString("PRICE")));                                        
                    bread.setImg1(res.getString("IMG_1"));
                    bread.setImg2(res.getString("IMG_2"));
                    bread.setStock(Integer.parseInt(res.getString("STOCK")));
                }
            }
        %>



        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.htlm">Inicio</a>

                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item ">
                            <a class="nav-link active" aria-current="page" href="login.html">Iniciar Sesion</a>
                    </ul>

                </div>
            </div>
        </nav>
        <!-- /Header -->



        <h1>Codigo de producto a comprar: <%=codigo%> </h1>


        <!-- Main -->
        <section id="main">
            <div class="container">
                <div class="row ">
                    <div class="col-2 p-4">
                        <!-- Espacio para no tocar con el borde superior -->
                    </div>
                </div>
                <div class="row ">
                    <div class="col-2 p-2">
                        <img src="img/3a.PNG" class="nav-link active"></img>
                    </div>
                    <div class="col-2 p-2">
                        <img src="img/2a.PNG" class="nav-link active"></img>
                    </div>
                    <div class="col p-2">
                        <div class="card">
                            <h3 class="card-header"><%=bread.getName()%></h3>
                            <div class="card-body">
                                <h5 class="card-title"><%=bread.getDescription()%></h5>
                                <p class="card-text">
                                    <input type="number" class="count" name="quantiy" min="1" value="1">
                                </p>
                                <a href="#" class="btn btn-primary">Comprar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Main -->

        <!-- Footer -->
        <footer class="bg-dark text-center text-lg-start fixed-bottom ">
            <!-- Copyright -->
            <div class="text-center p-2">
                <span style="color: white;"> Derechos reservados | 2022 | Carlos Alberto Sanchez Mendoza</span>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->

    </body>

</html>
