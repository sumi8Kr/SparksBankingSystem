<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Info</title>
    <link rel="stylesheet" href="bank.css">
    <link rel="stylesheet" href="navbar.css">
    <link rel="stylesheet" href="customerTable.css">

</head>

<body class="customer-body">
    <?php
       include 'navbar.php';
    ?>

    <h2 style="text-align:center; font-size:30px; padding:11px 0px;">Customers List</h2>

    <div class="container">
    <?php
    include 'database.php';
    $sql = "SELECT * FROM users";
    $result = mysqli_query($conn, $sql);
    ?>
        <table>
          <thead style="background-color:black">
            <tr>
              <th id="col-name">S.No.</th>
              <th id="col-name">Name</th> 
              <th id="col-name">Email</th>
              <th id="col-name">Balance</th>
              <th id="col-name">Transfer</th>
            </tr>
          </thead>

          <tbody style="background-color:white; opacity:0.8;">
          <?php
                while ($rows = mysqli_fetch_assoc($result)) {
          ?>
          <tr class="hover">
            <td style="text-align:center;"><?php echo $rows['id'] ?></td>
            <td><?php echo $rows['name'] ?></td>
            <td><?php echo $rows['email'] ?></td>
            <td><?php echo $rows['balance'] ?></td>
            <td><a class=" button" href="transaction.php?id=<?php echo $rows['id']; ?>">Transfer</a></td>
          </tr>
          <?php
                }
          ?>
          </tbody>
        </table>
    </div>

</body>

</html>