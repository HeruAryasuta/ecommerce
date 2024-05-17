<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order List</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php include 'sidebar.php'; ?>
    <div class="main-content">
        <div class="header">
            <h1>Order List</h1>
            <p>Home > Order List</p>
        </div>
        <div class="recent-orders-container">
    <h2>Recent Orders</h2>
    <table>
        <thead>
            <tr>
                <td><input type="checkbox" name="order" value="12345"></td>
                <th>Product</th>
                <th>Order ID</th>
                <th>Date</th>
                <th>Payment Method</th>
                <th>Customer Name</th>
                <th>Status</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>
            <!-- Data Order 1 -->
            <tr>
                <td><input type="checkbox" name="order" value="12345"></td>
                <td>Product A</td>
                <td>12345</td>
                <td>2024-05-18</td>
                <td>Paypal</td>
                <td>John Doe</td>
                <td>Shipped</td>
                <td>RP 100.000</td>
            </tr>
            <!-- Data Order 2 -->
            <tr>
                <td><input type="checkbox" name="order" value="12345"></td>
                <td>Product B</td>
                <td>12346</td>
                <td>2024-05-17</td>
                <td>Paypal</td>
                <td>Jane Smith</td>
                <td>Delivered</td>
                <td>RP 100.000</td>
            </tr>
            <!-- Data Order 3 -->
            <tr>
                <td><input type="checkbox" name="order" value="12345"></td>
                <td>Product C</td>
                <td>12347</td>
                <td>2024-05-16</td>
                <td>Paypal</td>
                <td>Mike Johnson</td>
                <td>Processing</td>
                <td>RP 100.000</td>
            </tr>
            <!-- Dan seterusnya -->
        </tbody>
    </table>
        </div>
        <div class="pagination">
                <button class="next-button">1 </button>
                <button class="next-button">2 </button>
                <button class="next-button">3 </button>
                <button class="next-button">NEXT ></button>
            </div>
    </div>
</body>
</html>
