<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Egresados UFPS</title>
    <link rel="shortcut icon" href="https://img.icons8.com/ultraviolet/40/000000/old-woman.png" type="imagex-icon">
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <!--NUESTRO CSS-->
    <link rel="stylesheet" href="../css/style.css">
    <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>

    <!--ENCABEZADO-->
    <header id="cabeza-admin">
        <nav class="indigo darken-4" role="navigation">
            <div class="nav-wrapper">
                <a href="" class="brand-logo center truncate"><i class="material-icons">book</i>Egresados UFPS</a>
                <ul class="right hide-on-med-and-down">

                </ul>
                <a href="../index.jsp" class="sidenav-trigger right"><i
                        class="material-icons">supervised_user_circle</i></a>
                <a href="#" data-target="sidenav-1" class="left sidenav-trigger hide-on-medium-and-up"><i
                        class="material-icons">menu</i></a>
            </div>
        </nav>
    </header>
    <!--PANEL DE OPCIONES-->
    <ul id="sidenav-1" class="sidenav sidenav-fixed ">
        <li>
            <div class="user-view indigo darken-4">
                <div class="background">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/0/03/UFPS_Logo.png">
                </div>
                <a href="#user"><img class="circle" src="https://upload.wikimedia.org/wikipedia/commons/0/03/UFPS_Logo.png"></a>
                <a href="#name"><span class="white-text name">Super Administrador</span></a>
            </div>
        </li>
        <li><a class="subheader">Personas</a></li>
        <li><a class="waves-effect" href="../pages/signUp.jsp"><i class="material-icons">person_add</i>Registrar
                Egresado</a></li>
        <li><a class="waves-effect" href="../pages/listaegresados.jsp"><i class="material-icons">person_add</i>Listar Egresados</a>
        </li>
        <li>
            <div class="divider"></div>
        </li>
        <li><a class="subheader">Hotel</a></li>
        <li><a class="waves-effect" href="../pages/registrarhabitacion.jsp"><i class="material-icons">hotel</i>Añadir habitación</a></li>
        <li><a class="waves-effect" href="../pages/registrarhospedaje.jsp"><i class="material-icons">hotel</i>Añadir hospedaje</a></li>
        <li>
            <div class="divider"></div>
        </li>
        <li><a class="subheader">Otros</a></li>
        <li><a class="waves-effect" href="../pages/generarfactura.jsp"><i class="material-icons">receipt</i>Generar Factura</a></li>
        <li>
            <div class="divider"></div>
        </li>
        <br><br>
        <li><a class="waves-effect red-text" href="../index.jsp"><i
                    class="material-icons red-text">exit_to_app</i>Salir</a></li>
    </ul>

    <!--TABLAS Y LISTAS-->
    

    <!--PIE DE PAGINA-->
    <footer class="page-footer indigo darken-4" id="pie-admin">
        <div class="container">

        </div>
        <div class="footer-copyright">
            <div class="container">
                <a class="grey-text text-lighten-3 right" href="https://instagram.com/?hl=es-la">| Instagram ||</a>
                <a class="grey-text text-lighten-3 right" href="https://twitter.com">| Twitter |</a>
                <a class="grey-text text-lighten-3 right" href="https://www.tripadvisor.co/">| TripAdvisor |</a>
                <a class="grey-text text-lighten-3 right" href="https://www.youtube.com/feed/subscriptions">|| YouTube
                    |</a>
            </div>
        </div>
    </footer>


    <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <!--NUESTRO JS-->
    <script src="../js/init.js"></script>
</body>

</html>