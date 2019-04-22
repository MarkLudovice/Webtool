<?php
  session_start();
    include '../includes/connection.php';

    if(isset($_GET['id'])){
        $pythonid = $_GET['id'];
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
                        <a href="phppage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> PHP</a>
                         <a href="../python/pythonpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Python</a>
                          <a href="../sql/sqlpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> SQL</a>
                        <a href="../c/cpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> C</a>
                        <a href="../cplusplus/cpluspluspage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> C++</a>
                        <a href="../pascal/pascalpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Pascal</a>
                        <a href="../css1/css1page.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> CSS</a>

                      </div>
                  </div>
                  <div class="col-md-9">
                        <div class="panel panel-default">
                         <div class="panel-heading main-color-bg"> 
                          <?php
                          $stmt17 = "SELECT * FROM phptbl WHERE compare_name = '$pythonid'";
                          $result17 = mysqli_query($conn, $stmt17);
                          if(!mysqli_num_rows($result17)==0){
                          while($row15= mysqli_fetch_array($result17)){
                              $phpname = $row15['php_name'];
                              $phpcontent = $row15['php_content'];
                              $phpdescription = $row15['php_description'];
                            }
                          $code = "$phpname";

                          echo '<h3 class="panel-title"> PHP Code Name</h3><pre>'.htmlspecialchars($code).'</pre>'; 
                        
                        echo'</div><br>
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title">Description:<?php print $phpdescription?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="well dash-box">';
                              
                                          $code = "$phpcontent";

                                        echo '<pre>' . htmlspecialchars($code) . '</pre>';
                                
                              }   
                            else{
                              echo'<h3 class="panel-title">PHP Code Name:</h3>
                                    <h3 class="panel-title">No result</h3>';
                            }
                                ?>
                  
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>

              <div class="container"> 
                <div class="row">
                  <div class="col-md-3">
                  </div>
                      <div class="col-md-9">
                        <div class="panel panel-default">
                         <div class="panel-heading main-color-bg"> 
                          <?php
                          $stmt12 = "SELECT * FROM pascaltbl WHERE compare_name = '$pythonid'";
                          $result12 = mysqli_query($conn, $stmt12);
                          if(!mysqli_num_rows($result12)==0){
                          while($row11= mysqli_fetch_array($result12)){
                              $pascalname = $row11['pascal_name'];
                              $pascalcontent = $row11['pascal_content'];
                              $pascaldescription = $row11['pascal_description'];
                            }
                          $code = "$pascalname";

                          echo '<h3 class="panel-title"> Pascal Code Name</h3><pre>'.htmlspecialchars($code).'</pre>'; 
                        
                        echo'</div><br>
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title">Description:<?php print $pascaldescription?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="well dash-box">';
                              
                                          $code = "$pascalcontent";

                                        echo '<pre>' . htmlspecialchars($code) . '</pre>';
                                
                              }   
                            else{
                              echo'<h3 class="panel-title">Pascal Code Name:</h3>
                                    <h3 class="panel-title">No result</h3>';
                            }
                                ?>
                  
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>


              <div class="container"> 
                <div class="row">
                  <div class="col-md-3">
                  </div>
                      <div class="col-md-9">
                        <div class="panel panel-default">
                         <div class="panel-heading main-color-bg"> 
                          <?php
                          $stmt13 = "SELECT * FROM javascriptbl WHERE compare_name = '$pythonid'";
                          $result13 = mysqli_query($conn, $stmt13);
                          if(!mysqli_num_rows($result13)==0){
                          while($row12= mysqli_fetch_array($result13)){
                              $javascriptname = $row12['javascript_name'];
                              $javascriptcontent = $row12['javascript_content'];
                              $javascriptdescription = $row12['javascript_description'];
                            }
                          $code = "$javascriptname";

                          echo '<h3 class="panel-title"> Javascript Code Name</h3><pre>'.htmlspecialchars($code).'</pre>'; 
                        
                        echo'</div><br>
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title">Description:<?php print $javascriptdescription?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="well dash-box">';
                              
                                          $code = "$javascriptcontent";

                                        echo '<pre>' . htmlspecialchars($code) . '</pre>';
                                
                              }   
                            else{
                              echo'<h3 class="panel-title">Javascript Code Name:</h3>
                                    <h3 class="panel-title">No result</h3>';
                            }
                                ?>
                  
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>


              <div class="container"> 
                <div class="row">
                  <div class="col-md-3">
                  </div>
                      <div class="col-md-9">
                        <div class="panel panel-default">
                         <div class="panel-heading main-color-bg"> 
                          <?php
                          $stmt14 = "SELECT * FROM sql_tbl WHERE compare_name = '$pythonid'";
                          $result14 = mysqli_query($conn, $stmt14);
                          if(!mysqli_num_rows($result14)==0){
                          while($row12= mysqli_fetch_array($result14)){
                              $sqlname = $row12['sql_name'];
                              $sqlcontent = $row12['sql_content'];
                              $sqldescription = $row12['sql_description'];
                            }
                          $code = "$sqlname";

                          echo '<h3 class="panel-title"> SQL Code Name</h3><pre>'.htmlspecialchars($code).'</pre>'; 
                        
                        echo'</div><br>
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title">Description:<?php print $sqldescription?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="well dash-box">';
                              
                                          $code = "$sqlcontent";

                                        echo '<pre>' . htmlspecialchars($code) . '</pre>';
                                
                              }   
                            else{
                              echo'<h3 class="panel-title">SQL Code Name:</h3>
                                    <h3 class="panel-title">No result</h3>';
                            }
                                ?>
                  
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>

              <div class="container"> 
                <div class="row">
                  <div class="col-md-3">
                  </div>
                    
                   <div class="col-md-9">
                      <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">

                          <?php
                          $stmt11 = "SELECT * FROM pythontbl WHERE compare_name = '$pythonid'";
                          $result11 = mysqli_query($conn, $stmt11);
                          if(!mysqli_num_rows($result11)==0){
                          while($row10 = mysqli_fetch_array($result11)){
                              $pythonname = $row10['python_name'];
                              $pythoncontent = $row10['python_content'];
                              $pythondescription = $row10['python_description'];
                            }
                          $code = "$pythonname";

                          echo '<h3 class="panel-title"> Python Code Name</h3><pre>'.htmlspecialchars($code).'</pre>'; 
                        
                        echo'</div><br>
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title">Description:<?php print $pythondescription?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="well dash-box">';
                              
                                          $code = "$pythoncontent";

                                        echo '<pre>' . htmlspecialchars($code) . '</pre>';
                                
                              }   
                            else{
                              echo'<h3 class="panel-title">Python Code Name:</h3>
                                    <h3 class="panel-title">No result</h3>';
                            }
                                ?>
                          </div>
                        </div>
                      </div>
                     
                    </div>
                  </div>

              <div class="container"> 
                <div class="row">
                  <div class="col-md-3">
                  </div>
                      <div class="col-md-9">
                        <div class="panel panel-default">
                         <div class="panel-heading main-color-bg"> 
                          <?php
                          $stmt16 = "SELECT * FROM cplustbl WHERE compare_name = '$pythonid'";
                          $result16 = mysqli_query($conn, $stmt16);
                          if(!mysqli_num_rows($result16)==0){
                          while($row14= mysqli_fetch_array($result16)){
                              $cplusname = $row14['cplus_name'];
                              $cpluscontent = $row14['cplus_content'];
                              $cplusdescription = $row14['cplus_description'];
                            }
                          $code = "$cplusname";

                          echo '<h3 class="panel-title"> C++ Code Name</h3><pre>'.htmlspecialchars($code).'</pre>'; 
                        
                        echo'</div><br>
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title">Description:<?php print $cplusdescription?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="well dash-box">';
                              
                                          $code = "$cpluscontent";

                                        echo '<pre>' . htmlspecialchars($code) . '</pre>';
                                
                              }   
                            else{
                              echo'<h3 class="panel-title">C++ Code Name</h3>
                                    <h3 class="panel-title">No result</h3>';
                            }
                                ?>
                  
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>

            <div class="container"> 
                <div class="row">
                  <div class="col-md-3">
                  </div>
                       <div class="col-md-9">
                        <div class="panel panel-default">
                         <div class="panel-heading main-color-bg"> 
                          <?php
                          $stmt15 = "SELECT * FROM ctbl WHERE compare_name = '$pythonid'";
                          $result15 = mysqli_query($conn, $stmt15);
                          if(!mysqli_num_rows($result15)==0){
                          while($row13= mysqli_fetch_array($result15)){
                              $cname = $row13['c_name'];
                              $ccontent = $row13['c_content'];
                              $cdescription = $row13['c_description'];
                            }
                          $code = "$cname";

                          echo '<h3 class="panel-title"> C Code Name</h3><pre>'.htmlspecialchars($code).'</pre>'; 
                        
                        echo'</div><br>
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title">Description:<?php print $cdescription?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="well dash-box">';
                              
                                          $code = "$ccontent";

                                        echo '<pre>' . htmlspecialchars($code) . '</pre>';
                                
                              }   
                            else{
                              echo'<h3 class="panel-title">C Code Name:</h3>
                                    <h3 class="panel-title">No result</h3>';
                            }
                                ?>
                  
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>
      </section>
      
     <center> <footer id="footer" class="navbar-fixed-bottom navbar-inverse">
            <p style="color:white;">Copyright Code Syntax Catalog &COPY; 2018</p>
        </footer></center>
        </body>
    </html>
