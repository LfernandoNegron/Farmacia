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
                <div class="col-9">
                    <div class="mt-4">
                        <div class="card d-inline-block" style="width: 16rem;">
                            <img src="data:image/png;base64,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" class="card-img" alt="Pastillas next caja 10P" />
                            <div class="card-body">
                                <h5 class="card-title">Pastillas next</h5>
                                <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                                <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                                <asp:Button Text="Agregar" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Quitar" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                        <div class="card d-inline-block" style="width: 16rem;">
                            <img src="data:image/png;base64,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" class="card-img" alt="Pastillas next caja 10P" />
                            <div class="card-body">
                                <h5 class="card-title">Pastillas next</h5>
                                <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                                <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                                <asp:Button Text="Agregar" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Quitar" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                        <div class="card d-inline-block" style="width: 16rem;">
                            <img src="data:image/png;base64,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" class="card-img" alt="Pastillas next caja 10P" />
                            <div class="card-body">
                                <h5 class="card-title">Pastillas next</h5>
                                <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                                <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                                <asp:Button Text="Agregar" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Quitar" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                        <div class="card d-inline-block" style="width: 16rem;">
                            <img src="data:image/png;base64,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" class="card-img" alt="Pastillas next caja 10P" />
                            <div class="card-body">
                                <h5 class="card-title">Pastillas next</h5>
                                <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                                <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                                <asp:Button Text="Agregar" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Quitar" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                        <div class="card d-inline-block" style="width: 16rem;">
                            <img src="data:image/png;base64,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" class="card-img" alt="Pastillas next caja 10P" />
                            <div class="card-body">
                                <h5 class="card-title">Pastillas next</h5>
                                <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                                <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                                <asp:Button Text="Agregar" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Quitar" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                        <div class="card d-inline-block" style="width: 16rem;">
                            <img src="data:image/png;base64,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" class="card-img" alt="Pastillas next caja 10P" />
                            <div class="card-body">
                                <h5 class="card-title">Pastillas next</h5>
                                <p class="card-text">Pastillas para el dolor de cabeza, gripe y tos de 10 pastillas</p>
                                <p class="card-text"><small class="text-success">$30.00 por caja</small></p>
                                <asp:Button Text="Agregar" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Quitar" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3 mt-4">
                     <div class="card d-inline-block position-fixed" style="width: 16rem;">
                            <div class="card-body">
                                <h5 class="card-title">Carrito</h5>
                                <p class="mt-0">X Productos $160</p>
                                <p class="mt-0">Costo de envio $50</p>
                                <p class="mt-0">TOTAL: $210</p>
                                 <a class="navbar-brand" href="datosCompra.aspx">Comprar</a>
                            </div>
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
