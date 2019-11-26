<?php

function getYears(){
    require('database.php');

    $sql = "SELECT DISTINCT year FROM student";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function getSemesters(){
    require('database.php');

    $sql = "SELECT DISTINCT semester FROM student";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function getSchools(){
    require('database.php');

    $sql = "SELECT * FROM school";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function getDepartments(){
    require('database.php');

    $sql = "SELECT * FROM department";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function getDepartmentsOfSchool($school_id){
    require('database.php');

    $sql = "SELECT * FROM department NATURAL JOIN school_dept WHERE school_id=".$school_id;
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}

function getMajorsOfDept($dept_id){
    require('database.php');

    $sql = "SELECT * FROM major NATURAL JOIN dept_major WHERE dept_id=".$dept_id;
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}

function getStudents($major,$semester,$year_from,$year_to){
    require('database.php');

    $sql = "SELECT * FROM student WHERE major_id='$major' AND semester='$semester' AND year>='$year_from' AND year<='$year_to'";
    
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}


function insert($major_id, $year, $semester, $student){
    require('database.php');

    $sql = "SELECT * FROM student WHERE major_id='$major_id' AND semester='$semester' AND year='$year'";
    
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    if($stmt->rowCount() > 0){
        $sql = "UPDATE student SET student_number = '$student' WHERE major_id = '$major_id' AND year = '$year' AND semester = '$semester'";
    }
    else{
        $sql = "INSERT INTO student (major_id, year, semester, student_number) VALUES ('$major_id', '$year', '$semester', '$student')";
    }

    
    $stmt = $conn->prepare($sql);
    
    return $stmt->execute();
}

?>