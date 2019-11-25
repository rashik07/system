<!DOCTYPE html>
<html>
<head>
<title> Login System </title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
	<div class="transbox">
	</div>

	
     <form action="login_action.php" method="post" class="padding">


     	
		<div class="form-group">
				
				<label for="email">Email address:</label>
				 <input type="text" class="form-control" name="user_name" id="email" placeholder="Email" required>
			 </div>
			
			<div class="form-group">

				
				<label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd" name="password" placeholder="Password" required>
			 </div>
			 <div class="form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>



  </div>
			
		    <tr>
			  <td>
				<input type="submit" name="submit" class="btn btn-dark" value="LOGIN"/>
				<button><a href="http://localhost/tutorial/">user</a></button>
			  </td>
			</tr>
		</table>
		
		</form>
		



		
		
</body>
</html>