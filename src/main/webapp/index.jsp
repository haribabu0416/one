```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop - Online Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Inter", sans-serif;
            background: #f5f6f8;
            color: #222;
        }

        /* ================= TOP BAR ================= */

        .top-bar {
            background: #131921;
            color: white;
            padding: 8px 6%;
            font-size: 13px;
            display: flex;
            justify-content: space-between;
        }

        /* ================= HEADER ================= */

        header {
            background: #232f3e;
            color: white;
            padding: 14px 6%;
            display: flex;
            align-items: center;
            gap: 25px;
        }

        .logo {
            font-size: 25px;
            font-weight: 800;
            white-space: nowrap;
        }

        .logo span {
            color: #ffb400;
        }

        .search {
            flex: 1;
            display: flex;
            height: 42px;
        }

        .search input {
            flex: 1;
            border: none;
            padding: 0 15px;
            font-size: 15px;
            outline: none;
        }

        .search button {
            width: 55px;
            border: none;
            background: #ffb400;
            cursor: pointer;
            font-size: 18px;
        }

        .header-actions {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .header-item {
            cursor: pointer;
            white-space: nowrap;
        }

        .header-item small {
            display: block;
            font-size: 11px;
        }

        .header-item strong {
            font-size: 14px;
        }

        /* ================= NAV ================= */

        nav {
            background: #37475a;
            padding: 11px 6%;
            display: flex;
            gap: 28px;
            color: white;
            font-size: 14px;
        }

        nav a {
            color: white;
            text-decoration: none;
            cursor: pointer;
        }

        nav a:hover {
            color: #ffb400;
        }

        /* ================= HERO ================= */

        .hero {
            margin: 20px auto;
            width: 88%;
            min-height: 280px;
            border-radius: 8px;
            padding: 55px;
            display: flex;
            align-items: center;

            background:
                linear-gradient(
                    90deg,
                    rgba(0,0,0,.75),
                    rgba(0,0,0,.15)
                ),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1400&q=80");

            background-size: cover;
            background-position: center;
            color: white;
        }

        .hero-content {
            max-width: 500px;
        }

        .hero h1 {
            font-size: 42px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 17px;
            margin-bottom: 25px;
        }

        .hero button {
            padding: 13px 25px;
            border: none;
            background: #ffb400;
            font-weight: 700;
            cursor: pointer;
            border-radius: 4px;
        }

        /* ================= CATEGORIES ================= */

        .section {
            width: 88%;
            margin: 30px auto;
        }

        .section-title {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 18px;
        }

        .section-title h2 {
            font-size: 24px;
        }

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category {
            background: white;
            padding: 25px 10px;
            text-align: center;
            border-radius: 6px;
            cursor: pointer;
            transition: .2s;
        }

        .category:hover {
            transform: translateY(-4px);
            box-shadow: 0 5px 15px rgba(0,0,0,.1);
        }

        .category-icon {
            font-size: 40px;
            margin-bottom: 12px;
        }

        .category p {
            font-weight: 600;
        }

        /* ================= MAIN STORE ================= */

        .store-layout {
            display: grid;
            grid-template-columns: 220px 1fr;
            gap: 25px;
        }

        /* ================= SIDEBAR ================= */

        .sidebar {
            background: white;
            padding: 20px;
            border-radius: 6px;
            height: fit-content;
        }

        .sidebar h3 {
            margin-bottom: 15px;
        }

        .filter-group {
            margin-bottom: 25px;
        }

        .filter-group h4 {
            margin-bottom: 12px;
        }

        .filter-group label {
            display: block;
            margin: 10px 0;
            font-size: 14px;
            cursor: pointer;
        }

        /* ================= PRODUCT AREA ================= */

        .product-toolbar {
            background: white;
            padding: 15px;
            margin-bottom: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-radius: 6px;
        }

        .product-toolbar select {
            padding: 8px 12px;
            border: 1px solid #ddd;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }

        /* ================= PRODUCT CARD ================= */

        .product {
            background: white;
            border-radius: 6px;
            overflow: hidden;
            position: relative;
            transition: .2s;
        }

        .product:hover {
            box-shadow: 0 7px 20px rgba(0,0,0,.12);
            transform: translateY(-3px);
        }

        .discount {
            position: absolute;
            top: 10px;
            left: 10px;
            background: #e53935;
            color: white;
            padding: 5px 8px;
            font-size: 11px;
            font-weight: 700;
            border-radius: 3px;
        }

        .wishlist {
            position: absolute;
            right: 12px;
            top: 10px;
            width: 32px;
            height: 32px;
            border-radius: 50%;
            border: none;
            background: white;
            cursor: pointer;
            font-size: 18px;
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-info {
            padding: 15px;
        }

        .product-category {
            color: #777;
            font-size: 11px;
            text-transform: uppercase;
        }

        .product-name {
            margin: 7px 0;
            font-size: 15px;
            font-weight: 600;
            min-height: 40px;
        }

        .rating {
            color: #ff9800;
            font-size: 13px;
        }

        .rating span {
            color: #777;
            margin-left: 5px;
        }

        .price {
            margin-top: 10px;
        }

        .current-price {
            font-size: 20px;
            font-weight: 800;
        }

        .old-price {
            color: #888;
            text-decoration: line-through;
            font-size: 13px;
            margin-left: 7px;
        }

        .add-cart {
            width: 100%;
            padding: 10px;
            margin-top: 12px;
            border: none;
            background: #ffd814;
            border-radius: 4px;
            font-weight: 600;
            cursor: pointer;
        }

        .add-cart:hover {
            background: #f7ca00;
        }

        /* ================= DEAL ================= */

        .deal {
            background: #fff;
            padding: 25px;
            border-radius: 7px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .deal h2 {
            color: #e53935;
            margin-bottom: 8px;
        }

        .timer {
            display: flex;
            gap: 10px;
        }

        .time-box {
            background: #222;
            color: white;
            padding: 12px 15px;
            border-radius: 5px;
            text-align: center;
            min-width: 55px;
        }

        .time-box strong {
            display: block;
            font-size: 20px;
        }

        .time-box small {
            font-size: 10px;
        }

        /* ================= BENEFITS ================= */

        .benefits {
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 15px;
        }

        .benefit {
            background: white;
            padding: 25px;
            text-align: center;
            border-radius: 6px;
        }

        .benefit-icon {
            font-size: 30px;
            margin-bottom: 10px;
        }

        .benefit h3 {
            font-size: 16px;
            margin-bottom: 5px;
        }

        .benefit p {
            color: #777;
            font-size: 13px;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #131a22;
            color: white;
            margin-top: 50px;
        }

        .footer-top {
            padding: 45px 6%;
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 30px;
        }

        .footer-column h3 {
            margin-bottom: 15px;
        }

        .footer-column a {
            display: block;
            color: #ccc;
            margin: 9px 0;
            font-size: 14px;
            text-decoration: none;
        }

        .footer-bottom {
            border-top: 1px solid #333;
            text-align: center;
            padding: 20px;
            color: #aaa;
            font-size: 13px;
        }

        /* ================= RESPONSIVE ================= */

        @media(max-width:1100px) {

            .products {
                grid-template-columns: repeat(3,1fr);
            }

            .categories {
                grid-template-columns: repeat(3,1fr);
            }

        }

        @media(max-width:800px) {

            header {
                flex-wrap: wrap;
            }

            .search {
                order: 3;
                flex-basis: 100%;
            }

            .header-actions {
                margin-left: auto;
            }

            .store-layout {
                grid-template-columns: 1fr;
            }

            .sidebar {
                display: none;
            }

            .products {
                grid-template-columns: repeat(2,1fr);
            }

            .benefits {
                grid-template-columns: repeat(2,1fr);
            }

            .footer-top {
                grid-template-columns: repeat(2,1fr);
            }

            .hero {
                padding: 30px;
            }

            .hero h1 {
                font-size: 32px;
            }

        }

        @media(max-width:500px) {

            .top-bar {
                display: none;
            }

            header {
                padding: 12px 4%;
            }

            nav {
                padding: 10px 4%;
                gap: 15px;
                overflow-x: auto;
            }

            .hero,
            .section {
                width: 94%;
            }

            .hero {
                min-height: 250px;
            }

            .categories {
                grid-template-columns: repeat(2,1fr);
            }

            .products {
                grid-template-columns: 1fr 1fr;
                gap: 8px;
            }

            .product-image {
                height: 150px;
            }

            .product-info {
                padding: 10px;
            }

            .current-price {
                font-size: 17px;
            }

            .benefits {
                grid-template-columns: 1fr;
            }

            .footer-top {
                grid-template-columns: 1fr;
            }

            .deal {
                flex-direction: column;
                gap: 20px;
                text-align: center;
            }

        }

    </style>
</head>

<body>

<!-- TOP BAR -->

<div class="top-bar">
    <span>🚚 Free delivery on orders above ₹1000</span>
    <span>Customer Support | Track Order</span>
</div>


<!-- HEADER -->

<header>

    <div class="logo">
        Nexus<span>Shop</span>
    </div>

    <div class="search">
        <input
            type="text"
            id="searchInput"
            placeholder="Search for products, brands and more..."
        >

        <button onclick="searchProducts()">🔍</button>
    </div>

    <div class="header-actions">

        <div class="header-item">
            <small>Hell, Sign in</small>
            <strong>Account</strong>
        </div>

        <div class="header-item">
            ❤️ Wishlist
        </div>

        <div class="header-item" onclick="showCart()">
            🛒 Cart
            <strong id="cartCount">0</strong>
        </div>

    </div>

</header>


<!-- NAVIGATION -->

<nav>

    <a>☰ All</a>
    <a href="#products">Today's Deals</a>
    <a href="#categories">Categories</a>
    <a>New Arrivals</a>
    <a>Best Sellers</a>
    <a>Electronics</a>
    <a>Fashion</a>
    <a>Home</a>

</nav>


<!-- HERO -->

<section class="hero">

    <div class="hero-content">

        <h1>Big Deals. Better Shopping.</h1>

        <p>
            Discover thousands of products at unbeatable prices.
            Shop the latest trends today.
        </p>

        <button onclick="scrollProducts()">
            Shop Now →
        </button>

    </div>

</section>


<!-- CATEGORIES -->

<section class="section" id="categories">

    <div class="section-title">
        <h2>Shop by Category</h2>
    </div>

    <div class="categories">

        <div class="category">
            <div class="category-icon">📱</div>
            <p>Electronics</p>
        </div>

        <div class="category">
            <div class="category-icon">👕</div>
            <p>Fashion</p>
        </div>

        <div class="category">
            <div class="category-icon">🏠</div>
            <p>Home</p>
        </div>

        <div class="category">
            <div class="category-icon">💻</div>
            <p>Computers</p>
        </div>

        <div class="category">
            <div class="category-icon">🎧</div>
            <p>Accessories</p>
        </div>

        <div class="category">
            <div class="category-icon">⌚</div>
            <p>Watches</p>
        </div>

    </div>

</section>


<!-- DEAL -->

<section class="section">

    <div class="deal">

        <div>
            <h2>🔥 Flash Sale</h2>
            <p>Limited-time offers. Grab them before they're gone!</p>
        </div>

        <div class="timer">

            <div class="time-box">
                <strong id="hours">05</strong>
                <small>HOURS</small>
            </div>

            <div class="time-box">
                <strong id="minutes">32</strong>
                <small>MIN</small>
            </div>

            <div class="time-box">
                <strong id="seconds">18</strong>
                <small>SEC</small>
            </div>

        </div>

    </div>

</section>


<!-- PRODUCTS -->

<section class="section" id="products">

    <div class="section-title">
        <h2>Popular Products</h2>
    </div>


    <div class="store-layout">


        <!-- SIDEBAR -->

        <aside class="sidebar">

            <h3>Filters</h3>

            <div class="filter-group">

                <h4>Category</h4>

                <label>
                    <input type="checkbox">
                    Electronics
                </label>

                <label>
                    <input type="checkbox">
                    Fashion
                </label>

                <label>
                    <input type="checkbox">
                    Home
                </label>

                <label>
                    <input type="checkbox">
                    Accessories
                </label>

            </div>


            <div class="filter-group">

                <h4>Price</h4>

                <label>
                    <input type="radio" name="price">
                    Under ₹1,000
                </label>

                <label>
                    <input type="radio" name="price">
                    ₹1,000 - ₹5,000
                </label>

                <label>
                    <input type="radio" name="price">
                    ₹5,000 - ₹20,000
                </label>

                <label>
                    <input type="radio" name="price">
                    Above ₹20,000
                </label>

            </div>


            <div class="filter-group">

                <h4>Customer Rating</h4>

                <label>
                    ⭐⭐⭐⭐⭐
                </label>

                <label>
                    ⭐⭐⭐⭐ & above
                </label>

            </div>

        </aside>


        <!-- PRODUCT CONTENT -->

        <div>

            <div class="product-toolbar">

                <span>
                    <strong>24</strong> products
                </span>

                <select id="sortProducts" onchange="sortProducts()">
                    <option value="default">Sort by: Featured</option>
                    <option value="low">Price: Low to High</option>
                    <option value="high">Price: High to Low</option>
                </select>

            </div>


            <div class="products" id="productContainer">

            </div>

        </div>

    </div>

</section>


<!-- BENEFITS -->

<section class="section">

    <div class="benefits">

        <div class="benefit">
            <div class="benefit-icon">🚚</div>
            <h3>Free Delivery</h3>
            <p>Free shipping on orders above ₹999</p>
        </div>

        <div class="benefit">
            <div class="benefit-icon">🔒</div>
            <h3>Secure Payments</h3>
            <p>100% secure payment processing</p>
        </div>

        <div class="benefit">
            <div class="benefit-icon">↩️</div>
            <h3>Easy Returns</h3>
            <p>7-day hassle-free returns</p>
        </div>

        <div class="benefit">
            <div class="benefit-icon">🎧</div>
            <h3>24/7 Support</h3>
            <p>We're here whenever you need us</p>
        </div>

    </div>

</section>


<!-- FOOTER -->

<footer>

    <div class="footer-top">

        <div class="footer-column">

            <h3>Get to Know Us</h3>

            <a>About NexusShop</a>
            <a>Careers</a>
            <a>Press Releases</a>
            <a>Our Stores</a>

        </div>


        <div class="footer-column">

            <h3>Customer Service</h3>

            <a>Contact Us</a>
            <a>Returns</a>
            <a>Shipping Information</a>
            <a>FAQ</a>

        </div>


        <div class="footer-column">

            <h3>Make Money With Us</h3>

            <a>Sell on NexusShop</a>
            <a>Become an Affiliate</a>
            <a>Advertise Your Products</a>

        </div>


        <div class="footer-column">

            <h3>Follow Us</h3>

            <a>Facebook</a>
            <a>Instagram</a>
            <a>Twitter</a>
            <a>LinkedIn</a>

        </div>

    </div>


    <div class="footer-bottom">

        © 2026 NexusShop. All Rights Reserved.

    </div>

</footer>


<script>

    /* ================= PRODUCTS ================= */

    const products = [

        {
            name: "Apple iPhone 15",
            category: "Electronics",
            price: 69999,
            oldPrice: 79999,
            rating: 4.8,
            image: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=600&q=80"
        },

        {
            name: "Wireless Headphones",
            category: "Accessories",
            price: 2499,
            oldPrice: 3999,
            rating: 4.5,
            image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80"
        },

        {
            name: "Smart Watch Series 9",
            category: "Watches",
            price: 8999,
            oldPrice: 12999,
            rating: 4.6,
            image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80"
        },

        {
            name: "Premium Laptop",
            category: "Computers",
            price: 64999,
            oldPrice: 74999,
            rating: 4.7,
            image: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=600&q=80"
        },

        {
            name: "Men's Casual Shirt",
            category: "Fashion",
            price: 999,
            oldPrice: 1599,
            rating: 4.3,
            image: "https://images.unsplash.com/photo-1603252110481-7ba873bf42ab?auto=format&fit=crop&w=600&q=80"
        },

        {
            name: "Running Shoes",
            category: "Fashion",
            price: 1999,
            oldPrice: 2999,
            rating: 4.5,
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80"
        },

        {
            name: "Modern Chair",
            category: "Home",
            price: 4499,
            oldPrice: 5999,
            rating: 4.4,
            image: "https://images.unsplash.com/photo-1503602642458-232111445657?auto=format&fit=crop&w=600&q=80"
        },

        {
            name: "Digital Camera",
            category: "Electronics",
            price: 35999,
            oldPrice: 42999,
            rating: 4.8,
            image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80"
        }

    ];


    /* ================= DISPLAY PRODUCTS ================= */

    function displayProducts(list) {

        const container =
            document.getElementById("productContainer");

        container.innerHTML = "";

        list.forEach((product, index) => {

            const discount =
                Math.round(
                    ((product.oldPrice - product.price) /
                    product.oldPrice) * 100
                );

            const card = document.createElement("div");

            card.className = "product";

            card.innerHTML = `

                <span class="discount">
                    ${discount}% OFF
                </span>

                <button
                    class="wishlist"
                    onclick="addWishlist(this)"
                >
                    ♡
                </button>

                <img
                    class="product-image"
                    src="${product.image}"
                    alt="${product.name}"
                >

                <div class="product-info">

                    <div class="product-category">
                        ${product.category}
                    </div>

                    <div class="product-name">
                        ${product.name}
                    </div>

                    <div class="rating">
                        ⭐ ${product.rating}
                        <span>(120)</span>
                    </div>

                    <div class="price">

                        <span class="current-price">
                            ₹${product.price.toLocaleString("en-IN")}
                        </span>

                        <span class="old-price">
                            ₹${product.oldPrice.toLocaleString("en-IN")}
                        </span>

                    </div>

                    <button
                        class="add-cart"
                        onclick="addToCart()"
                    >
                        Add to Cart
                    </button>

                </div>
            `;

            container.appendChild(card);

        });

    }


    displayProducts(products);


    /* ================= CART ================= */

    let cartCount = 0;

    function addToCart() {

        cartCount++;

        document.getElementById("cartCount")
            .textContent = cartCount;

        alert("Product added to cart!");

    }


    function showCart() {

        alert(
            "Your cart contains " +
            cartCount +
            " item(s)."
        );

    }


    /* ================= WISHLIST ================= */

    function addWishlist(button) {

        if (button.textContent === "♡") {

            button.textContent = "♥";

        } else {

            button.textContent = "♡";

        }

    }


    /* ================= SEARCH ================= */

    function searchProducts() {

        const search =
            document
                .getElementById("searchInput")
                .value
                .toLowerCase();

        const filtered =
            products.filter(product =>
                product.name
                    .toLowerCase()
                    .includes(search)
            );

        displayProducts(filtered);

    }


    document
        .getElementById("searchInput")
        .addEventListener(
            "keyup",
            function(event) {

                if (event.key === "Enter") {

                    searchProducts();

                }

            }
        );


    /* ================= SORT ================= */

    function sortProducts() {

        const value =
            document
                .getElementById("sortProducts")
                .value;

        let sorted = [...products];

        if (value === "low") {

            sorted.sort(
                (a,b) => a.price - b.price
            );

        }

        if (value === "high") {

            sorted.sort(
                (a,b) => b.price - a.price
            );

        }

        displayProducts(sorted);

    }


    /* ================= SCROLL ================= */

    function scrollProducts() {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    /* ================= COUNTDOWN ================= */

    let totalSeconds =
        (5 * 60 * 60) + (32 * 60) + 18;


    function updateTimer() {

        if (totalSeconds <= 0) {

            totalSeconds = 5 * 60 * 60;

        }

        totalSeconds--;

        const hours =
            Math.floor(totalSeconds / 3600);

        const minutes =
            Math.floor(
                (totalSeconds % 3600) / 60
            );

        const seconds =
            totalSeconds % 60;


        document.getElementById("hours")
            .textContent =
            String(hours).padStart(2,"0");

        document.getElementById("minutes")
            .textContent =
            String(minutes).padStart(2,"0");

        document.getElementById("seconds")
            .textContent =
            String(seconds).padStart(2,"0");

    }


    setInterval(updateTimer, 1000);

</script>

</body>
</html>
```
