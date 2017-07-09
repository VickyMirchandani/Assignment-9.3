<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BooytstrapNavBar.aspx.cs" Inherits="BooytstrapNavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bootstrap Nav bar</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        #wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}
        #wrapper.toggled {
    padding-left: 250px;
}

        #sidebar-wrapper {
    z-index: 1000;
    position: fixed;
    left: 250px;
    width: 0;
    height: 100%;
    margin-left: -250px;
    overflow-y: auto;
    background: #000;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

        #wrapper.toggled #sidebar-wrapper {
    width: 250px;
}

        #page-content-wrapper {
    width: 100%;
    position: absolute;
    padding: 15px;
}
        #wrapper.toggled #page-content-wrapper {
    position: absolute;
    margin-right: -250px;
}
        .sidebar-nav {
    position: absolute;
    top: 0;
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="https://www.google.co.in">
                        Start Bootstrap
                    </a>
                    </li>
                <li>
                    <a href ="https://acadgild.com">Start Learning

                    </a>
                </li>
                </ul>
            </div>

         <div id="page-content-wrapper">
              <div class="container-fluid">
                  <div class="row">
                      <div class="col-lg-12">
                          <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
                          </div>
                      </div>
                  </div>
             </div>
         </div>

        <script type="text/javascript">
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
    </form>


</body>
</html>
