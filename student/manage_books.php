<?php 
if ($_SESSION['username']) {
    ?>
			
			<form class="form-horizontal row-fluid" action="?page=books" method="post">
				<?php echo $_SESSION["username"]; ?>
                                        <div class="control-group">
                                            <label class="control-label" for="Search"><b>Search:</b></label>
                                            <div class="controls">
                                                <input type="text" id="title" name="title" placeholder="Enter Name/ID of Book" class="span8" required>
                                                <button type="submit" name="submit"class="btn">Search</button>
                                            </div>
                                        </div>
                                    </form>
                                    <br>
                                    <?php
                                    if(isset($_POST['submit']))
                                        {$s=$_POST['title'];
                                            $sql="select * from gabilms.books where book_id='$s' or title like '%$s%'";
                                        }
                                    else
                                        $sql="select * from gabilms.books order by Available DESC";

                                    $result=$conn->query($sql);
                                    $rowcount=mysqli_num_rows($result);

                                    if(!($rowcount))
                                        echo "<br><center><h2><b><i>No Results</i></b></h2></center>";
                                    else
                                    {

                                    
                                    ?>
                        <table class="table" id = "tables">
                                  <thead>
                                    <tr>
                                      <th>Book id</th>
                                      <th>Book name</th>
                                      <th>Availability</th>
                                      <th></th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <?php
                            
                            //$result=$conn->query($sql);
                            while($row=$result->fetch_assoc())
                            {
                                $bookid=$row['book_id'];
                                $name=$row['title'];
                                $avail=$row['available'];
                            ?>
                                    <tr>
                                      <td><?php echo $bookid ?></td>
                                      <td><?php echo $name ?></td>
                                      <td><b><?php 
                                           if($avail > 0)
                                              echo "<font color=\"green\">AVAILABLE</font>";
                                            else
                                            	echo "<font color=\"red\">NOT AVAILABLE</font>";

                                                 ?>
                                                 	
                                                 </b></td>
                                      <td><center>
										<form action='?page=bookdetails' method='POST' class='d-inline'>

											  <button type='submit' name='id' value="<?php echo $bookid; ?>" class=' btn btn btn-primary'  data-toggle='tooltip' data-original-title='Delete' onclick='return confirmIssue(" . $row["book_id"] . ")'> Details </button>
											 </form>
                                      	<?php
                                      	if($avail > 0)
                                      		echo "<form action='' method='POST' class='d-inline'>

											  <button type='submit' name='issue' value='".$row["book_id"]."' class=' btn btn btn-success'  data-toggle='tooltip' data-original-title='Delete' onclick='return confirmIssue(" . $row["book_id"] . ")'> Issue </button>
											 </form>";


											
                                        ?>
                                        </center></td>
                                    </tr>
                               <?php }} ?>
                               </tbody>
                                </table>
                            </div>
                    <!--/.span3-->
                    <!--/.span9-->
                
                    <!--/.span3-->
                    <!--/.span9-->
                </div>
                    <!--/.span9-->
                </div>


<?php
//require('dbconn.php');


if(isset($_POST['issue'])){
	
	$roll=$_SESSION['username'];
    $id=$_POST['issue'];
	// after doing all this section i will add the role number to where the role is
    $query ="INSERT  INTO gabilms.record (RollNo, book_id, Time) values ('$roll','$id', curtime())";
    $query_run = mysqli_query($conn, $query);
	if($query_run)
	{
	echo "<script type='text/javascript'>alert('Request Sent to Admin.')</script>";
	//header( "Refresh:0.01; url=manage_books.php", true, 303);
	}
	else
	{
		echo "<script type='text/javascript'>alert('Request Already Sent.')</script>";
		//header( "Refresh:0.01; url=manage_books.php", true, 303);
	
	}
}


?>

				<script>
        function confirmDelete(user_id) {
            return confirm("Are you sure you want to issue this book with ID " + book_id + "?");
        }

        function editRecord(user_id) {
            return confirm("Are you sure you want to edit user with ID " + user_id + "?");
        }
    </script>

<?php }
else {
    echo "<script type='text/javascript'>alert('Access Denied!!!')</script>";
} ?>