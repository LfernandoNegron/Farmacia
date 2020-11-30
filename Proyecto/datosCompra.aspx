<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datosCompra.aspx.cs" Inherits="Proyecto.datosCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
                <div class="container">
                    <a class="navbar-brand" href="Index.aspx">Farmacia</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarsExample07">
                        <ul class="navbar-nav mr-auto">
                            <!-- botones simples  -->
                            <li class="nav-item">
                                <a href="#" class="nav-link">Jarabes</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">Inyecciones</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">Pastillas</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">Promociones</a>
                            </li>
                        </ul>
                        &nbsp;
                    </div>
                </div>
            </nav>
            <section id="btnBuscar" class="bg-primary collapse">
                <div class="container p-2">
                    <div class="row">
                        <div class="col-lg-6">
                            <input type="text" class="form-control" name="filtro" value="" />
                        </div>
                        <div class="col-lg-6">
                            <asp:RadioButton GroupName="tipo" CssClass="btn btn-default" ID="todos" Checked="true" Text="Todos" runat="server" />
                            <asp:RadioButton GroupName="tipo" CssClass="btn btn-default" ID="pastilla" Text="Pastilla" runat="server" />
                            <asp:RadioButton GroupName="tipo" CssClass="btn btn-default" ID="inyeccion" Text="Inyeccion" runat="server" />
                            <asp:RadioButton GroupName="tipo" CssClass="btn btn-default" ID="jarabes" Text="Jarabes" runat="server" />
                        </div>
                    </div>
                </div>
            </section>
        </header>

        <main class="container mt-5">
            <div class="row">
                <div class="col-9">
                    <div class="mt-4">
                        <div>
                            <h5 class="font-weight-bold">INFORMACION PERSONAL</h5>
                            <input type="text" class="form-control mt-3 col-6" name="Nombre" value="Nombre" />
                            <input type="text" class="form-control mt-2 col-6" name="Apellidos" value="Apellidos" />
                            <input type="text" class="form-control mt-2 col-4" name="Telefono" value="Telefono" />

                            <h5 class="font-weight-bold mt-lg-5">DIRECCION</h5>
                            <input type="text" class="form-control mt-3" name="Estado" value="Estado" />
                            <input type="text" class="form-control mt-2" name="Municipio" value="Municipio" />
                            <input type="text" class="form-control mt-2" name="Colonia" value="Colonia" />
                            <input type="text" class="form-control mt-2" name="CalleP" value="Calle principal" />
                            <input type="text" class="form-control mt-2" name="Entrecalle" value="Entrecalle" />
                            <input type="text" class="form-control mt-2" name="Cp" value="CP" />
                            <asp:Button Text="Realizar compra" CssClass="btn btn-primary mt-2" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="col-3 mt-4">
                     <div class="card d-inline-block position-fixed" style="width: 16rem;">
                            <img src="https://static.vecteezy.com/system/resources/previews/000/623/220/non_2x/love-heart-logo-and-symbol-vector.jpg" class="card-img" alt="Pastillas next caja 10P" />
                     </div>
                </div>
              </div>                
        </main>

        <footer class="page-footer font-small bg-info mt-5">
            <div class="footer-copyright text-center py-3">© 2020 Copyright:
                <a href="#" class="text-white"> Farmacia.com</a>
            </div>
        </footer>
    </form>
</body>
</html>
