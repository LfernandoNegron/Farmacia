<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyecto.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" lang="es-mx" />
    <title>Farmacia</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <header>
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
                            <a href="Carrito.aspx" class="btn btn-secondary">
                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart3" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z" />
                                </svg>
                            </a>
                            <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-left dropdown-menu-lg-right">
                                <div class="dropdown-item">
                                    Pastillas <span class="text-success">$30.00</span> X <span class="text-black-50">4</span>
                                    <button class="btn btn-danger">X</button>
                                </div>
                            </div>
                        </div>
                        &nbsp;
                        <a class="btn btn-outline-dark" href="panelAdmin.aspx">Administrador</a>
                    </div>
                </div>
            </nav>
            <section id="btnBuscar" class="bg-primary collapse">
                <div class="container p-2">
                    <div class="row">
                        <div class="col-lg-6">
                            <input placeholder="Paracetamol" type="text" class="form-control" name="filtro" value="" />
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

        <%-- Div de jumbotron --%>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h2 class="display-4">Farmacia</h2>
                <p class="lead">
                    Catalogo y venta exclusiva de medicamentos no controlados, Si necesita usted medicamento controlado debe acudir con su receta a nuestra farmacia mas cercana
                </p>
            </div>
        </div>

        <%-- Carrusel de medicamento --%>
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <%-- Imagenes del carrusel --%>
                <div class="carousel-item active">
                    <img src="https://www.decilenext.com.ar/assets/img/banner3.png" class="d-block w-100" alt="Pastillas Next" />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Pastillas Next</h5>
                        <p>Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://broncolin.com.mx/wp-content/uploads/2020/03/banner-web-1-light-1.jpg" class="d-block w-100" alt="Jarabe Broncolin" />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Jarabe Broncolin</h5>
                        <p>Jarabe para la tos y resfriados recomendados para niños</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://images.ctfassets.net/th5532uiq8ey/7CDOUeWtXUgnWSGLrPnPaH/82afdb16286cd406bb0a2488a036065d/congestion-nasal-banner.jpg" class="d-block w-100" alt="Familia vic Vaporup" />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>La familia vaporup esta aqui</h5>
                        <p>Todos los medicamentos de la familia vic vaporup se encuentran en esta farmacia</p>
                    </div>
                </div>
            </div>
            <%-- Controles del carrusel --%>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <main class="container">
            <div class="row justify-content-around">
                <div class="col-auto d-inline-block">
                    <div class="card m-2" style="width: 16rem;">
                        <img src="https://images-na.ssl-images-amazon.com/images/I/71Tpm-6qKHL._AC_SL1500_.jpg" class="card-img" alt="Pastillas next caja 10P" />
                        <div class="card-body">
                            <h5 class="card-title">Pastillas next</h5>
                            <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                            <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                            <asp:Button Text="Agregar" CssClass="btn btn-primary btn-block" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="col-auto d-inline-block">
                    <div class="card m-2" style="width: 16rem;">
                        <img src="https://images-na.ssl-images-amazon.com/images/I/71Tpm-6qKHL._AC_SL1500_.jpg" class="card-img" alt="Pastillas next caja 10P" />
                        <div class="card-body">
                            <h5 class="card-title">Pastillas next</h5>
                            <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                            <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                            <asp:Button Text="Agregar" CssClass="btn btn-primary btn-block" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="col-auto d-inline-block">
                    <div class="card m-2" style="width: 16rem;">
                        <img src="https://images-na.ssl-images-amazon.com/images/I/71Tpm-6qKHL._AC_SL1500_.jpg" class="card-img" alt="Pastillas next caja 10P" />
                        <div class="card-body">
                            <h5 class="card-title">Pastillas next</h5>
                            <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                            <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                            <asp:Button Text="Agregar" CssClass="btn btn-primary btn-block" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="col-auto d-inline-block">
                    <div class="card m-2" style="width: 16rem;">
                        <img src="https://images-na.ssl-images-amazon.com/images/I/71Tpm-6qKHL._AC_SL1500_.jpg" class="card-img" alt="Pastillas next caja 10P" />
                        <div class="card-body">
                            <h5 class="card-title">Pastillas next</h5>
                            <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                            <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                            <asp:Button Text="Agregar" CssClass="btn btn-primary btn-block" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="col-auto d-inline-block">
                    <div class="card m-2" style="width: 16rem;">
                        <img src="https://images-na.ssl-images-amazon.com/images/I/71Tpm-6qKHL._AC_SL1500_.jpg" class="card-img" alt="Pastillas next caja 10P" />
                        <div class="card-body">
                            <h5 class="card-title">Pastillas next</h5>
                            <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                            <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                            <asp:Button Text="Agregar" CssClass="btn btn-primary btn-block" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="col-auto d-inline-block">
                    <div class="card m-2" style="width: 16rem;">
                        <img src="https://images-na.ssl-images-amazon.com/images/I/71Tpm-6qKHL._AC_SL1500_.jpg" class="card-img" alt="Pastillas next caja 10P" />
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

        <footer class="page-footer font-small">
            <div class="footer-copyright text-center py-3">
                © 2020 Copyright:
                <a href="#" class="text-white">Farmacia.com</a>
            </div>
        </footer>
    </form>
</body>
</html>
