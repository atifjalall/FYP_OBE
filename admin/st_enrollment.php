<?php include("db.php");
?>
<html lang="en">
 <head>
  <meta charset="utf-8">
  <title>Upload Excel file of student enrollment </title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="title" content="Hemant Vishwakarma">
  <meta name="description" content="Import Excel File To MySql Database Using php">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 </head>
 <body>    
    <br><br>
        <div class="container">
            <div class="row">
             <div class="col-md-12 text-center"></div><h1>Student Enrollment</h1>
    <br>
                <div class="col-md-3 hidden-phone"></div>
                <div class="col-md-6" id="form-login">
                    <form class="well" action="" method="post" name="upload_excel" enctype="multipart/form-data">
                        <fieldset>
                            <legend>Upload xls/xlsx/csv-Excel file</legend>
                            <div class="control-group">
                                <div class="control-label">
                                    <label>xls/xlsx/csv-Excel:</label>
                                </div>
                                <div class="controls form-group">
                                    
                                    <select class="input-large form-control" name="course_code">
                                        <option hidden>Select Course Code</option>
                                        <?php 
                                       $query="select *from course";
                                       $res=mysqli_query($connection,$query);
                                       while ($r=mysqli_fetch_assoc($res)) {
                                         
                                    ?>
                                    <option value="<?php echo($r['course_id']); ?>"><?php echo($r['course_code']); ?></option>
<?php
                                       }

                                         ?>
                                    </select>
                                    <br>
                                    <input type="text" name="sec_no" class="input-large form-control" placeholder="Enter Section" required>
                                    <br>
                                    <input type="file" name="image" id="file" class="input-large form-control" required>
                                </div>
                            </div>
                            
                            <div class="control-group">
                                <div class="controls">
                                <button type="submit" id="submit" name="Import" class="btn btn-success btn-flat btn-lg pull-right button-loading" data-loading-text="Loading...">Upload</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="col-md-3 hidden-phone"></div>
            </div>
            
        </div>
 </body>
</html>

<?php
if (isset($_POST['Import'])) {
    $course_code=$_POST['course_code'];
    $sec_no=$_POST['sec_no'];

$imageName = $_FILES['image']['name'];
       $tempLocation = $_FILES['image']['tmp_name'];
    move_uploaded_file($tempLocation, "images/$imageName");


$s_query="select *from st_en where assigned_course_id";
$s_res=mysqli_query($connection,$s_query);
if (mysqli_num_rows($s_res)>0) {
echo "<script type=\"text/javascript\">
alert(\"You have already enrolled students for the course.\");
</script>"; 
}
else
{
 $query3 = "INSERT INTO st_en(s_id, assigned_course_id,name) 
             VALUES ( '$sec_no','$course_code','$imageName')";
                $result3 = mysqli_query($connection, $query3);
              echo "<script type=\"text/javascript\">
              alert(\" File has been successfully Imported.\");
             window.location = \"st_enrollment.php\"
              </script>"; 
}

}
?>