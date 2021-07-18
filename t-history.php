<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="customerTable.css">
    <link rel="stylesheet" href="bank.css">
    <link rel="stylesheet" href="navbar.css">
    <title>Transaction History</title>

    </style>
  </head>
  <body class="customer-body"> 
  <?php
       include 'navbar.php';
    ?>
    
    <div class="container">
    <h1 style="text-align:center; color:black; padding-bottom:10px;">Transaction History</h1>
    <table>
  <thead style="background-color:black">
    <tr>
      <th style="text-align:center; color:white;" scope="col">Sender</th>
      <th style="text-align:center; color:white;" scope="col">Receiver</th>
      <th style="text-align:center; color:white;" scope="col">Amount</th>
      <th style="text-align:center; color:white;" scope="col">Date</th>
      
    </tr>
  </thead>
  <tbody style="background-color:white; opacity:0.8;">
  <?php

include 'database.php';

$sql = "select * from transaction";

$query = mysqli_query($conn, $sql);

while ($rows = mysqli_fetch_assoc($query)) {
?>
    <tr class="hover">
      <td class="text-center"><?php echo $rows['sender'];?></td>
      <td class="text-center"><?php echo $rows['receiver'];?></td>
      <td class="text-center"><?php echo $rows['balance'];?></td>
      <td class="text-center"><?php echo $rows['datetime'];?></td>
    </tr>
    <?php
     }
    ?>
  </tbody>
  </table>
 </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>