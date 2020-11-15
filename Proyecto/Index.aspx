<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyecto.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" lang="es-mx" />
    <title>Inicio</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
            <div class="container">
                <a class="navbar-brand" href="#">Farmacia</a>
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
                    <button type="button" class="btn btn-outline-dark" data-toggle="collapse" data-target="#btnBuscar">Buscar </button>
                    &nbsp;
                    <div class="btn-group">
                        <div class="btn-group dropleft" role="group">
                            <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="sr-only">Toggle Dropleft</span>
                            </button>
                            <div class="dropdown-menu">
                                <div class="dropdown-item" href="#">
                                    Pastillas $30.00 x 3
                                <button class="btn btn-danger">x</button>
                                </div>
                            </div>
                        </div>
                        <button type="button" class="btn btn-secondary">
                            Carrito
                        </button>
                    </div>

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

        <%-- Div de jumbotron --%>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h2 class="display-4">Farmacia</h2>
                <p class="lead">
                    Catalogo y venta exclusiva de medicamentos no controlados, Si necesita usted medicamento controlado debe acudir con su receta a nuestra farmacia mas cercana
                </p>
            </div>
        </div>
        
        <main class="container">
            <div class="row">
                <div class="col-auto">
                    <div class="card" style="width: 18rem;">
                        <img src="img/el%20amor%20te%20ha%20cegado.jpg" class="card-img" alt="Pastillas next caja 10P" />
                        <div class="card-body">
                            <h5 class="card-title">Pastillas next</h5>
                            <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                            <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                            <asp:Button Text="Agregar" CssClass="btn btn-primary btn-block" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </form>
</body>
</html>
