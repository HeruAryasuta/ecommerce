<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php include 'sidebar.php'; ?>
    <div class="main-content">
        <div class="header">
            <h1>Dashboard</h1>
            <p>Home > Dashboard</p>
        </div>
        <div class="cards">
            <div class="card">
                <div class="card-content">
                    <div class="card-text">
                        <p>Total Pemesanan</p>
                        <div>
                            <img src="assets/ic_bag.svg" alt="Bag Icon" class="card-icon">
                            <span class="card-number">250</span>
                        </div>
                    </div>
                    <div class="card-stats">
                        <div class="card-percentage">
                            <img src="assets/ic_arrow_up.png" alt="Arrow Up Icon" class="arrow-icon">
                            <span class="percentage">34.7%</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- card ke 2 -->
            <div class="card">
                <div class="card-content">
                    <div class="card-text">
                        <p>Total Pemesanan</p>
                        <div>
                            <img src="assets/ic_bag.svg" alt="Bag Icon" class="card-icon">
                            <span class="card-number">250</span>
                        </div>
                    </div>
                    <div class="card-stats">
                        <div class="card-percentage">
                            <img src="assets/ic_arrow_up.png" alt="Arrow Up Icon" class="arrow-icon">
                            <span class="percentage">34.7%</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- card ke 2 -->
            <div class="card">
                <div class="card-content">
                    <div class="card-text">
                        <p>Total Pemesanan</p>
                        <div>
                            <img src="assets/ic_bag.svg" alt="Bag Icon" class="card-icon">
                            <span class="card-number">250</span>
                        </div>
                    </div>
                    <div class="card-stats">
                        <div class="card-percentage">
                            <img src="assets/ic_arrow_up.png" alt="Arrow Up Icon" class="arrow-icon">
                            <span class="percentage">34.7%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="recent-orders-container">
    <h2>Recent Orders</h2>
    <table>
        <thead>
            <tr>
                <th><input type="checkbox" name="order" value="12345"></th>
                <th>Product</th>
                <th>Order ID</th>
                <th>Date</th>
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
                <td>Mike Johnson</td>
                <td>Processing</td>
                <td>RP 100.000</td>
            </tr>
            <!-- Dan seterusnya -->
        </tbody>
    </table>
</div>
    </div>
</body>
</html>
