<?php
  session_start();
    include '../includes/connection.php';
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
  <script src ="../js/jquery-3.3.1.min.js"></script>
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
                        <a href="../c/cpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> C</a>
                        <a href="../cplusplus/cpluspluspage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> C++</a>
                        <a href="../pascal/pascalpage.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Pascal</a>
                        <a href="css1page.php" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> CSS</a>

                      </div>
                  </div>
                  
                  <div class="col-md-9">
                      
                      <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">
                          <h3 class="panel-title">CSS SYNTAXES</h3>
                        </div><br>
                        <div class ="form-group">
                          <div class ="input-group">
                            <span class ="input-group-addon">SEARCH</span>
                            <input type = "text" name ="search_text" id="search_text" placeholder="Search by code name" class ="form-control"></input>
                          </div>
                        </div>
                        <div class="panel-body">
                            <table class="table table-striped table-hover">
                              <tbody id ="mysearch">
                                <tr>
                             
                                    <th>Code Name</th>
                                    <th></th>
                                    <th>Description</th>
                                </tr>

                                <?php
                                     if (isset($_GET['pageno'])) {
                                        $pageno = $_GET['pageno'];
                                    } else {
                                        $pageno = 1;
                                    }
                                    $no_of_records_per_page = 5;
                                    $offset = ($pageno-1) * $no_of_records_per_page;


                                    $total_pages_sql = "SELECT COUNT(*) FROM css1_tbl ORDER BY css1_name ASC";
                                    $result = mysqli_query($conn,$total_pages_sql);
                                    $total_rows = mysqli_fetch_array($result)[0];
                                    $total_pages = ceil($total_rows / $no_of_records_per_page);

                                   
                                    $sql = "SELECT * FROM css1_tbl ORDER BY css1_name ASC LIMIT $offset, $no_of_records_per_page";
                                    $qry = mysqli_query($conn,$sql);
                                    while($row = mysqli_fetch_array($qry)){
                                          $id = $row['css1_id'];
                                        print '
                                            <tr>
                                            
                                            <td><a  href="cssview.php?id='.$id.'"><button class="btn btn-sm btn-info" style ="color:black;">'.$row['css1_name'].'</button></a><td>
                                            <td> '.$row['css1_description'].'</td>
                                            </tr>
                                            ';
                                    }
                                ?>
                              </tbody>
                            </table> </div><center>
                            
                            <ul class="pagination">
                              <li><a href="?pageno=1">First</a></li>
                              <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">
                                  <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>">Prev</a>
                              </li>
                              <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">
                                  <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>">Next</a>
                              </li>
                              <li><a href="?pageno=<?php echo $total_pages; ?>">Last</a></li>
                          </ul></center>
                       
                      </div>
                  </div>
              </div>
          </div>
      </section>
</body>
</html>

<script>
    $(document).ready(function(){
  $("#search_text").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#mysearch tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
      
      
     <center> <footer id="footer" class="navbar-fixed-bottom navbar-inverse">
            <p style="color:white;">Copyright Code Syntax Catalog &COPY; 2018</p>
        </footer></center><center>