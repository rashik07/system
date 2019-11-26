<?php include 'core.php'; ?>

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

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.php">
        <div class="sidebar-brand-icon rotate-n-15">
        
         
        </div>
        <img src="logo.png" alt="Italian Trulli" style="width: 100px; height: 50px";>
        
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="dashboard.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">



      <!-- Nav Item - Charts -->
      <li class="nav-item active">
        <a class="nav-link" href="charts.html">
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


      <!-- Begin Page Content -->
      <div class="container-fluid">

        <form class=" mt-4">
          <div class="row">
            <div class="col-sm">
              <select id="year_from" name="year_from" class="custom-select">
                <option selected>Year From</option>
                <?php foreach (getYears() as $year) { ?>
                  <option value="<?php echo $year['year'] ?>"><?php echo $year['year'] ?></option>
                <?php } ?>
              </select>

            </div>


            <div class="col-sm">
              <select id="year_to" name="year_to" class="custom-select">
                <option selected>Year To</option>
                <?php foreach (getYears() as $year) { ?>
                  <option value="<?php echo $year['year'] ?>"><?php echo $year['year'] ?></option>
                <?php } ?>
              </select>
            </div>

            <div class="col-sm">
              <select id="semester" name="semester" class="custom-select">
                <option selected>Semester</option>
                <?php foreach (getSemesters() as $i) { ?>
                  <option value="<?php echo $i['semester'] ?>"><?php echo $i['semester'] ?></option>
                <?php } ?>
              </select>
            </div>

            <div class="col-sm">
              <select onchange="unlockDept(this.value)" name="school" id="school" class="custom-select">
                <option selected>School</option>
                <?php foreach (getSchools() as $school) { ?>
                  <option value="<?php echo $school['school_id'] ?>"><?php echo $school['school_name'] ?></option>
                <?php } ?>

              </select>

            </div>


            <div class="col-sm">
              <select onchange="unlockMajor(this.value)" name="department" id="department" class="custom-select">
                <option selected>Department</option>
              </select>
            </div>


            <div class="col-sm">
              <select name="major" id="major" class="custom-select">
                <option selected>Major</option>
              </select>
            </div>
            <div class="col-sm">
              <button onclick="graph()" type="button" class="btn btn-dark">Genatar Graph</button>
            </div>
          </div>

        </form>




        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Charts</h1>
        <h1>Major wise selected students @ IUB In 2018</h1>
        <div class="container">
          <canvas id="yearchart">

          </canvas>
          <button type="button" id="download-pdf">
            Download PDF
          </button>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.2.61/jspdf.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>
  <script src="js/demo/chart-bar-demo.js"></script>

</body>

</html>


<script type="text/javascript">
  function graph() {
    var major = document.getElementById("major").value;
    var semester = document.getElementById("semester").value;
    var year_from = document.getElementById("year_from").value;
    var year_to = document.getElementById("year_to").value;

    $.ajax({
      url: "getStudentNumber.php", //the page containing php script
      type: "POST", //request type,
      data: {
        major: major,
        semester: semester,
        year_from: year_from,
        year_to: year_to,
      },
      success: function(data) {
        data = JSON.parse(data);

        year = [];
        student = [];
        for (var i = 0; i < data.length; i++) {
          year.push(data[i].year);
          student.push(data[i].student_number);

        }

        console.log(year);
        console.log(student);

        var chartdata = {
          labels: year,
          datasets: [{
            label: 'Major wise',
            backgroundColor: [
              "#CEB887",
              "#A9A9F9",
              "#DC143C",
              "#F4A460",
              "#2E8B57",
              "#A9DAC6",
              "#CBCBCB",
              "#D88569",
              "#E4CDA2",
              "#89BC21",
              "#99AC55"
            ],
            borderColor: 'black',
            hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
            hoverBorderColor: 'rgba(200, 200, 200, 1)',
            data: student
          }]
        };

        var ctx = $("#yearchart");

        var barGraph = new Chart(ctx, {
          type: 'line',
          data: chartdata
        });
      },
      error: function(data) {
        console.log(data);
      }
    });
  }

  document.getElementById('download-pdf').addEventListener("click", downloadPDF);

  //donwload pdf from original canvas
  function downloadPDF() {
    var canvas = document.querySelector('#yearchart');
    //creates image
    var canvasImg = canvas.toDataURL("image/jpeg", 1.0);

    //creates PDF from img
    var doc = new jsPDF('landscape');
    doc.setFontSize(20);
    doc.text(15, 15, "Cool Chart");

    doc.addImage(canvasImg, 'JPEG', 10, 10, 280, 150);
    doc.save('canvas.pdf');
  }
</script>

<script>
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
</script>