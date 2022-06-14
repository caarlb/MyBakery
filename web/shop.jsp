
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

        <!-- JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
        <!-- /JS -->



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
                        <img src="img/<%=bread.getImg1()%>" class="nav-link active"></img>
                    </div>
                    <div class="col-2 p-2">
                        <img src="img/<%=bread.getImg2()%>" class="nav-link active"></img>
                    </div>

                    <div class="row ">
                        <div class="col p-2">
                            <div class="card">
                                <h3 class="card-header"><%=bread.getName()%></h3>
                                <div class="card-body">
                                    <h5 class="card-title"><%=bread.getDescription()%></h5>
                                    <p class="card-text">
                                        <input type="number" class="count" name="quantiy" min="1" value="1">
                                    </p>
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#shoppingModal">
                                COMPRAR
                            </button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- /Main -->

        <!-- Modal -->
        <div class="modal fade" id="shoppingModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Modal -->

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
