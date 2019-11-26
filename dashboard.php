<?php include 'core.php';?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Charts</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <style type="text/css">
    .form-group {
      margin-bottom: 1rem;
      padding-left: 400px;
    }
  </style>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.html">
        <div class="sidebar-brand-icon rotate-n-15">


        </div>
        <img src="logo.png" alt="Italian Trulli" style="width: 100px; height: 50px" ;>

      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="dashboard.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>







      <!-- Divider -->
      <hr class="sidebar-divider">



      <!-- Nav Item - Charts -->
      <li class="nav-item ">
        <a class="nav-link" href="charts.php">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>

















      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="http://localhost/tutorial/">
          <i class="fas fa-fw fa-table"></i>
          <span>Logout</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">


      <div class="container">

          <fieldset>

            <!-- Form Name -->
            <legend>
              <center>
                <h2><b>Data Input Form</b></h2>
              </center>
            </legend><br>

            <!-- Text input-->

            <div class="form-group ">
              <label class="col-md-5 control-label"><b>Year :</b></label>
              <div class="col-md-5 inputGroupContainer">
                <div class="input-group">
                  <div class="col-sm">
                    <input type="text" name="year" id="datepicker" placeholder="Pick Year" autocomplete="off" />

                  </div>

                </div>
              </div>
            </div>

            <!-- Text input-->

            <div class="form-group ">
              <label class="col-md-5 control-label"><b>Semester :</b></label>
              <div class="col-md-5 inputGroupContainer">
                <div class="input-group">
                  <div class="col-sm">
                    <select name="semester" id="semester" class="custom-select">
                      <option selected>semester</option>
                      <option value="autumn">Autumn</option>
                      <option value="spring">Spring</option>
                      <option value="summer">Summer</option>
                    </select>

                  </div>

                </div>
              </div>
            </div>
            <!-- Text input-->

            <div class="form-group ">
              <label class="col-md-5 control-label"><b>School :</b></label>
              <div class="col-md-5 inputGroupContainer">
                <div class="input-group">
                  <div class="col-sm">
                    <select onchange="unlockDept(this.value)" name="school" id="school" class="custom-select">
                      <option selected>School</option>
                      <?php foreach (getSchools() as $school) { ?>
                        <option value="<?php echo $school['school_id'] ?>"><?php echo $school['school_name'] ?></option>
                      <?php } ?>

                    </select>

                  </div>

                </div>
              </div>
            </div>

            <!-- Text input-->

            <div class="form-group ">
              <label class="col-md-5 control-label"><b>Department :</b></label>
              <div class="col-md-5 inputGroupContainer">
                <div class="input-group">
                  <div class="col-sm">
                    <select onchange="unlockMajor(this.value)" name="department" id="department" class="custom-select">
                      <option selected>Department</option>
                    </select>

                  </div>

                </div>
              </div>
            </div>
            <div class="form-group ">
              <label class="col-md-5 control-label"><b>Major :</b></label>
              <div class="col-md-5 inputGroupContainer">
                <div class="input-group">
                  <div class="col-sm">
                    <select name="major" id="major" class="custom-select">
                      <option selected>Major</option>
                    </select>

                  </div>

                </div>
              </div>
            </div>

            <div class="form-group ">
              <label class="col-md-5 control-label"><b>Number of student :</b></label>
              <div class="col-md-5 inputGroupContainer">
                <div class="input-group">
                  <input id="student" name="student" placeholder="student Number" class="form-control" type="number" min="0">
                </div>
              </div>
            </div>

















            <!-- Select Basic -->

            <!-- Success message -->
            <div id="success" class="alert alert-success" role="alert">Success</div>
            <div id="fail" class="alert alert-danger" role="alert">Failed</div>

            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label"></label>
              <div class="col-md-4"><br>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a onclick="insert()" href="#" class="btn btn-info" role="button">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
              </div>
            </div>

          </fieldset>
      </div>
    </div>








  </div>
  </div>

  </div>
  <!-- /.container-fluid -->

  </div>
  <!-- End of Main Content -->



  </div>
  <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>
  <script src="js/demo/chart-bar-demo.js"></script>
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>


</body>

</html>

<script>
  $(document).ready(function() {
    $("#success").hide();
    $("#fail").hide();

    $("#datepicker").datepicker({
      format: "yyyy",
      viewMode: "years",
      minViewMode: "years"
    });
  });

  function insert() {
    var major = document.getElementById("major").value;
    var year = document.getElementById("datepicker").value;
    var semester = document.getElementById("semester").value;
    var student = document.getElementById("student").value;

    $.ajax({
      url: "insert.php", //the page containing php script
      type: "POST", //request type,
      data: {
        major: major,
        year: year,
        semester: semester,
        student: student,
      },
      success: function(result) {
        if(result ==1){
          console.log('success');
          success();

          document.getElementById("major").value = "";
          document.getElementById("datepicker").value = "";
          document.getElementById("semester").value = "";
          document.getElementById("student").value = "";
        }else{
          console.log('faled');
          fail();
        }
      }
    });

  }

  function unlockDept(school) {
    if (school != "") {
      $.ajax({
        url: "getDepartments.php", //the page containing php script
        type: "POST", //request type,
        data: {
          school_id: school,
        },
        success: function(result) {
          var dept = JSON.parse(result);

          var select = document.getElementById("department");

          dept.forEach(i => {
            var option = document.createElement("option");
            option.text = i.dept_name;
            option.value = i.dept_id;

            select.appendChild(option);
          });
        }
      });

    }
  }

  function unlockMajor(dept) {
    if (dept != "") {
      $.ajax({
        url: "getMajors.php", //the page containing php script
        type: "POST", //request type,
        data: {
          dept_id: dept,
        },
        success: function(result) {
          var dept = JSON.parse(result);

          var select = document.getElementById("major");

          dept.forEach(i => {
            var option = document.createElement("option");
            option.text = i.major_name;
            option.value = i.major_id;

            select.appendChild(option);
          });
        }
      });

    }
  }

  function success() {
    $("#success").fadeIn(1000);
    $("#success").fadeOut(2000);
  }

  function fail() {
    $("#fail").fadeIn(1000);
    $("#fail").fadeOut(2000);
  }
</script>