<?php
  session_start();
    include '../includes/connection.php';

    if(isset($_GET['id'])){
        $cid = $_GET['id'];
    }

    $stmt11 = "SELECT * FROM ctbl WHERE c_id = '$cid'";
    $result11 = mysqli_query($conn, $stmt11);
    while($row10 = mysqli_fetch_array($result11)){
        $cname = $row10['c_name'];
        $ccontent = $row10['c_content'];
        $cdescription = $row10['c_description'];
        $compare = $row10['compare_name'];
      }
?>


<html lang ="en">
<head>
  <title>Web Productivity Tools</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css"/>
  <script src="../assets/bootstrap/js/jquery.js"></script>
  <script src="../assets/bootstrap/js/bootstrap.min.js"></script>

</head>
    <body style = "background-image: url(../img/3.jpg); background-repeat:no-repeat; background-size: 100%;">
     <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Code Syntax Catalog</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            
          <ul class="nav navbar-nav">
          </ul>
            
          <ul class="nav navbar-nav navbar-right">
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <section id="main">
          <div class="container">
              <div class="row">
                  <div class="col-md-3">
                      <div>
                        <a href="#" class="list-group-item active main-color-bg">
                          <h4>Programming Languages</h4>
                        </a>
                        <a href="../html/htmlpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> HTML</a>
                        <a href="../javascript/javascriptpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Javascript</a>
                        <a href="../php/phppage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> PHP</a>
                        <a href="../python/pythonpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Python</a>
                        <a href="../sql/sqlpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> SQL</a>
                         <a href="cpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> C</a>
                        <a href="../cplusplus/cpluspluspage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> C++</a>
                        <a href="../pascal/pascalpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Pascal</a>
                        <a href="../css1/css1page.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> CSS</a>

                      </div>
                  </div>
                  
                   <div class="col-md-9">
                      <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">
                        <?php
                          $code = "$cname";

                          echo '<h3 class="panel-title"> C Code Name</h3><pre>'.htmlspecialchars($code).'</pre>'; 
                        ?>
                        </div><br>
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title"> Description:<?php print $cdescription?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="well dash-box">
                                <?php

                              
                                          $code = "$ccontent";

                                        echo '<pre>' . htmlspecialchars($code) . '</pre>';
                                ?>
                  
                                </div>
                            </div>
                        </div>
                </div>
              </div>
              <center>
                 <?php echo' <a  href="compare.php?id='.$compare.'"><button class="btn btn-lg btn-info" style = color:black;>Compare</button>';
                         ?><br></center>
            </div>
          </div>
      </section>
   
</body>
</html>