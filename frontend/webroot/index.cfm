<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Nick Kwiatkowski">

    <title>Stock Tracker Demo</title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-1.13.7/b-2.4.2/cr-1.7.0/date-1.5.1/fc-4.3.0/fh-3.4.0/r-2.5.0/sc-2.3.0/sl-1.7.0/datatables.min.css" rel="stylesheet">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-1.13.7/b-2.4.2/cr-1.7.0/date-1.5.1/fc-4.3.0/fh-3.4.0/r-2.5.0/sc-2.3.0/sl-1.7.0/datatables.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-sparklines/2.1.2/jquery.sparkline.min.js"></script>

    <script src="js/demoApp.js"></script>

</head>
<body>

<main>

    <div class="container">

        <table class="table table-bordered" id="tblStocks">
            <thead>
            <tr>
                <th>Name</th>
                <th>Symbol</th>
                <th>Price</th>
                <th>Difference</th>
                <th>Last</th>
            </tr>
            </thead>
        </table>

    </div>
</main>

</body>
</html>
