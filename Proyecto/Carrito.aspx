<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Proyecto.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                <div class="col-9 bg-dark">
                    <div class="mt-4">
                        <div class="card d-inline-block" style="width: 16rem;">
                            <img src="img/el%20amor%20te%20ha%20cegado.jpg" class="card-img" alt="Pastillas next caja 10P" />
                            <div class="card-body">
                                <h5 class="card-title">Pastillas next</h5>
                                <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                                <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                                <asp:Button Text="Agregar" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Quitar" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                        <div class="card d-inline-block" style="width: 16rem;">
                            <img src="img/el%20amor%20te%20ha%20cegado.jpg" class="card-img" alt="Pastillas next caja 10P" />
                            <div class="card-body">
                                <h5 class="card-title">Pastillas next</h5>
                                <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                                <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                                <asp:Button Text="Agregar" CssClass="btn btn-primary btn-block" runat="server" />
                            </div>
                        </div>
                        <div class="card d-inline-block" style="width: 16rem;">
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

                <div class="col-3 bg-primary">
                </div>
            </div>
        </main>
    </form>
</body>
</html>
