<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>NexusShop - Modern Shopping Experience</title>

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Manrope:wght@700;800&display=swap" rel="stylesheet">

  <!-- Font Awesome -->
  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

  <style>

    /* =========================
       GLOBAL
    ========================== */

    :root {
      --bg: #f7f8fc;
      --surface: #ffffff;
      --surface-2: #f1f4f9;

      --text: #121826;
      --muted: #6b7280;

      --primary: #5b5cf0;
      --primary-dark: #4748d8;

      --accent: #ff7a59;

      --success: #16a34a;
      --warning: #f59e0b;
      --danger: #ef4444;

      --border: #e6e9ef;

      --shadow:
        0 12px 34px rgba(17,24,39,.08);

      --shadow-lg:
        0 24px 60px rgba(17,24,39,.13);

      --radius: 18px;

      --container: 1240px;
    }

    * {
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      margin: 0;
      font-family: Inter, system-ui, sans-serif;
      color: var(--text);
      background: var(--bg);
      line-height: 1.6;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button,
    input {
      font: inherit;
    }

    img {
      max-width: 100%;
      display: block;
    }

    .container {
      width: min(
        var(--container),
        calc(100% - 32px)
      );

      margin: auto;
    }

    .muted {
      color: var(--muted);
    }

    .section {
      padding: 72px 0;
    }


    /* =========================
       TOP BAR
    ========================== */

    .topbar {
      background: #111827;
      color: white;

      text-align: center;

      padding: 8px 16px;

      font-size: 13px;
    }


    /* =========================
       HEADER
    ========================== */

    header {
      position: sticky;
      top: 0;

      z-index: 50;

      background: rgba(255,255,255,.92);

      backdrop-filter: blur(14px);

      border-bottom:
        1px solid rgba(230,233,239,.9);
    }

    .header-inner {

      height: 76px;

      display: grid;

      grid-template-columns:
        auto 1fr auto;

      align-items: center;

      gap: 30px;
    }


    /* Logo */

    .brand {

      display: flex;

      align-items: center;

      gap: 10px;

      font-family: Manrope,sans-serif;

      font-size: 23px;

      font-weight: 800;

      white-space: nowrap;
    }

    .brand-mark {

      width: 38px;
      height: 38px;

      border-radius: 12px;

      display: grid;
      place-items: center;

      background:
        linear-gradient(
          135deg,
          var(--primary),
          #8b5cf6
        );

      color: white;

      box-shadow:
        0 8px 18px
        rgba(91,92,240,.28);
    }


    /* Navigation */

    .nav {

      display: flex;

      align-items: center;

      justify-content: center;

      gap: 26px;

      font-size: 14px;

      font-weight: 600;
    }

    .nav a {

      color: #374151;

      transition: .2s;
    }

    .nav a:hover {

      color: var(--primary);
    }


    /* Search */

    .search-wrap {

      position: relative;

      width: 285px;
    }

    .search-wrap input {

      width: 100%;

      border:
        1px solid var(--border);

      background: var(--surface-2);

      border-radius: 999px;

      padding:
        11px 44px
        11px 16px;

      outline: none;

      transition: .2s;
    }

    .search-wrap input:focus {

      background: white;

      border-color: var(--primary);

      box-shadow:
        0 0 0 4px
        rgba(91,92,240,.1);
    }

    .search-btn {

      position: absolute;

      right: 5px;
      top: 50%;

      transform: translateY(-50%);

      width: 36px;
      height: 36px;

      border: 0;

      border-radius: 50%;

      background: var(--primary);

      color: white;

      cursor: pointer;
    }


    /* Header buttons */

    .header-actions {

      display: flex;

      align-items: center;

      gap: 10px;
    }

    .icon-btn {

      width: 42px;
      height: 42px;

      border:
        1px solid var(--border);

      background: white;

      border-radius: 13px;

      display: grid;

      place-items: center;

      cursor: pointer;

      position: relative;

      transition: .2s;
    }

    .icon-btn:hover {

      border-color: var(--primary);

      color: var(--primary);

      transform: translateY(-1px);
    }

    .cart-count {

      position: absolute;

      right: -6px;
      top: -6px;

      width: 21px;
      height: 21px;

      border-radius: 50%;

      background: var(--accent);

      color: white;

      font-size: 11px;

      font-weight: 700;

      display: grid;

      place-items: center;

      border: 2px solid white;
    }


    /* Mobile menu */

    .mobile-toggle {
      display: none;
    }

    .mobile-panel {

      display: none;

      padding:
        14px 0
        20px;

      border-top:
        1px solid var(--border);
    }

    .mobile-panel a {

      display: block;

      padding: 10px 0;

      font-weight: 600;
    }


    /* =========================
       HERO
    ========================== */

    .hero {

      padding:
        48px 0
        30px;
    }

    .hero-card {

      min-height: 540px;

      border-radius: 30px;

      overflow: hidden;

      position: relative;

      display: flex;

      align-items: center;

      background:

        linear-gradient(
          90deg,
          rgba(17,24,39,.93) 0%,
          rgba(17,24,39,.72) 43%,
          rgba(17,24,39,.12) 76%
        ),

        url(
          'https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85'
        )
        center/cover no-repeat;

      box-shadow: var(--shadow-lg);
    }

    .hero-content {

      position: relative;

      z-index: 2;

      width:
        min(610px,100%);

      padding: 70px;

      color: white;
    }

    .eyebrow {

      display: inline-flex;

      align-items: center;

      gap: 8px;

      padding: 7px 12px;

      border-radius: 999px;

      background:
        rgba(255,255,255,.12);

      border:
        1px solid
        rgba(255,255,255,.18);

      font-size: 13px;

      font-weight: 700;

      margin-bottom: 18px;
    }

    .hero h1 {

      margin: 0 0 18px;

      font-family: Manrope,sans-serif;

      font-size: 58px;

      line-height: 1.05;

      letter-spacing: -1.5px;
    }

    .hero p {

      margin: 0 0 28px;

      color:
        rgba(255,255,255,.82);

      font-size: 17px;

      max-width: 560px;
    }

    .hero-actions {

      display: flex;

      gap: 12px;

      flex-wrap: wrap;
    }


    /* Buttons */

    .btn {

      border: 0;

      border-radius: 14px;

      padding:
        13px 20px;

      font-weight: 700;

      display: inline-flex;

      align-items: center;

      justify-content: center;

      gap: 9px;

      cursor: pointer;

      transition: .2s;
    }

    .btn-primary {

      background:
        var(--primary);

      color: white;

      box-shadow:
        0 10px 22px
        rgba(91,92,240,.28);
    }

    .btn-primary:hover {

      background:
        var(--primary-dark);

      transform:
        translateY(-2px);
    }

    .btn-light {

      background: white;

      color: var(--text);
    }


    /* Hero stats */

    .hero-stats {

      display: flex;

      gap: 28px;

      margin-top: 36px;

      color: white;

      flex-wrap: wrap;
    }

    .hero-stat strong {

      display: block;

      font-size: 20px;

      font-family: Manrope,sans-serif;
    }

    .hero-stat span {

      font-size: 13px;

      color:
        rgba(255,255,255,.7);
    }


    /* =========================
       BENEFITS
    ========================== */

    .benefits {

      display: grid;

      grid-template-columns:
        repeat(4,1fr);

      gap: 14px;

      margin-top: 20px;
    }

    .benefit {

      background: white;

      border:
        1px solid
        var(--border);

      border-radius: 18px;

      padding: 18px;

      display: flex;

      gap: 13px;

      align-items: center;
    }

    .benefit i {

      width: 42px;
      height: 42px;

      border-radius: 12px;

      display: grid;

      place-items: center;

      background: #eef0ff;

      color: var(--primary);
    }

    .benefit strong {

      display: block;

      font-size: 14px;
    }

    .benefit span {

      font-size: 12px;

      color: var(--muted);
    }


    /* =========================
       SECTION HEADER
    ========================== */

    .section-header {

      display: flex;

      align-items: end;

      justify-content: space-between;

      gap: 24px;

      margin-bottom: 28px;
    }

    .section-header h2 {

      font-family: Manrope,sans-serif;

      font-size: 32px;

      line-height: 1.15;

      margin: 0 0 8px;
    }

    .section-header p {

      margin: 0;

      color: var(--muted);
    }


    /* =========================
       CATEGORIES
    ========================== */

    .categories {

      display: grid;

      grid-template-columns:
        repeat(6,1fr);

      gap: 16px;
    }

    .cat-card {

      background: white;

      border:
        1px solid
        var(--border);

      border-radius: 20px;

      padding: 24px 16px;

      text-align: center;

      cursor: pointer;

      transition: .25s;
    }

    .cat-card:hover {

      transform:
        translateY(-6px);

      border-color:
        rgba(91,92,240,.35);

      box-shadow:
        var(--shadow);
    }

    .cat-icon {

      width: 58px;
      height: 58px;

      border-radius: 18px;

      display: grid;

      place-items: center;

      margin:
        0 auto 14px;

      background:
        linear-gradient(
          135deg,
          #eef0ff,
          #f8f4ff
        );

      color: var(--primary);

      font-size: 22px;
    }

    .cat-card h4 {

      margin:
        0 0 4px;

      font-size: 15px;
    }

    .cat-card span {

      font-size: 12px;

      color: var(--muted);
    }


    /* =========================
       FILTER BUTTONS
    ========================== */

    .toolbar {

      display: flex;

      gap: 10px;

      align-items: center;

      flex-wrap: wrap;
    }

    .pill {

      border:
        1px solid
        var(--border);

      background: white;

      padding:
        9px 13px;

      border-radius: 999px;

      font-size: 13px;

      cursor: pointer;
    }

    .pill.active {

      background: var(--text);

      color: white;

      border-color: var(--text);
    }


    /* =========================
       PRODUCTS
    ========================== */

    .products {

      display: grid;

      grid-template-columns:
        repeat(4,1fr);

      gap: 20px;
    }

    .product {

      background: white;

      border:
        1px solid
        var(--border);

      border-radius: 22px;

      overflow: hidden;

      position: relative;

      transition: .25s;
    }

    .product:hover {

      transform:
        translateY(-5px);

      box-shadow:
        var(--shadow);
    }

    .product-media {

      height: 245px;

      background: #f3f4f6;

      overflow: hidden;

      position: relative;
    }

    .product-media img {

      width: 100%;

      height: 100%;

      object-fit: cover;

      transition: .4s;
    }

    .product:hover
    .product-media img {

      transform:
        scale(1.04);
    }

    .badge {

      position: absolute;

      left: 14px;
      top: 14px;

      z-index: 2;

      padding:
        6px 9px;

      border-radius: 999px;

      font-size: 11px;

      font-weight: 800;

      color: white;

      background:
        var(--success);
    }

    .badge.sale {

      background:
        var(--danger);
    }

    .wishlist-floating {

      position: absolute;

      top: 14px;
      right: 14px;

      width: 38px;
      height: 38px;

      border: 0;

      border-radius: 50%;

      background:
        rgba(255,255,255,.95);

      cursor: pointer;

      z-index: 2;

      box-shadow:
        0 5px 15px
        rgba(0,0,0,.08);
    }

    .product-body {

      padding: 18px;
    }

    .product-category {

      color: var(--primary);

      text-transform: uppercase;

      font-weight: 800;

      font-size: 10px;

      letter-spacing: .08em;

      margin-bottom: 7px;
    }

    .product h3 {

      margin:
        0 0 10px;

      font-size: 16px;

      line-height: 1.35;
    }

    .rating {

      display: flex;

      align-items: center;

      gap: 6px;

      font-size: 12px;

      color: var(--warning);

      margin-bottom: 14px;
    }

    .rating span {

      color: var(--muted);
    }

    .price-row {

      display: flex;

      align-items: center;

      justify-content: space-between;

      gap: 10px;
    }

    .price strong {

      font-size: 20px;
    }

    .old-price {

      color: #9ca3af;

      text-decoration:
        line-through;

      font-size: 12px;

      margin-left: 6px;
    }

    .add-btn {

      border: 0;

      background:
        var(--text);

      color: white;

      border-radius: 12px;

      width: 42px;

      height: 42px;

      cursor: pointer;

      transition: .2s;
    }

    .add-btn:hover {

      background:
        var(--primary);
    }

    .empty-state {

      grid-column: 1/-1;

      padding: 50px;

      text-align: center;

      border:
        1px dashed
        var(--border);

      border-radius: 20px;

      color: var(--muted);

      background: white;
    }


    /* =========================
       DEAL
    ========================== */

    .deal {

      display: grid;

      grid-template-columns:
        1.1fr .9fr;

      background: #111827;

      color: white;

      border-radius: 28px;

      overflow: hidden;

      min-height: 420px;
    }

    .deal-media img {

      width: 100%;

      height: 100%;

      object-fit: cover;
    }

    .deal-content {

      padding: 46px;

      display: flex;

      flex-direction: column;

      justify-content: center;
    }

    .deal-content h2 {

      font-family: Manrope,sans-serif;

      font-size: 38px;

      margin:
        8px 0 12px;

      line-height: 1.1;
    }

    .deal-price {

      display: flex;

      align-items: center;

      gap: 12px;

      margin: 18px 0;
    }

    .deal-price strong {

      font-size: 34px;
    }

    .deal-price s {

      color: #9ca3af;
    }

    .timer {

      display: flex;

      gap: 10px;

      margin:
        18px 0 24px;

      flex-wrap: wrap;
    }

    .time-box {

      width: 72px;

      padding:
        11px 8px;

      text-align: center;

      border-radius: 13px;

      background:
        rgba(255,255,255,.09);

      border:
        1px solid
        rgba(255,255,255,.09);
    }

    .time-box strong {

      display: block;

      font-size: 20px;
    }

    .time-box span {

      font-size: 10px;

      color: #cbd5e1;
    }


    /* =========================
       REVIEWS
    ========================== */

    .reviews {

      display: grid;

      grid-template-columns:
        repeat(3,1fr);

      gap: 18px;
    }

    .review-card {

      background: white;

      border:
        1px solid
        var(--border);

      border-radius: 20px;

      padding: 24px;
    }

    .review-head {

      display: flex;

      align-items: center;

      gap: 12px;

      margin-top: 18px;
    }

    .avatar {

      width: 44px;
      height: 44px;

      border-radius: 50%;

      object-fit: cover;
    }


    /* =========================
       NEWSLETTER
    ========================== */

    .newsletter {

      background:
        linear-gradient(
          135deg,
          var(--primary),
          #8b5cf6
        );

      color: white;

      border-radius: 28px;

      padding: 50px;

      display: grid;

      grid-template-columns:
        1fr auto;

      gap: 30px;

      align-items: center;
    }

    .newsletter h2 {

      margin: 0 0 8px;

      font-family: Manrope,sans-serif;

      font-size: 34px;
    }

    .newsletter p {

      margin: 0;

      color:
        rgba(255,255,255,.8);
    }

    .newsletter form {

      background: white;

      border-radius: 16px;

      padding: 5px;

      display: flex;

      min-width: 410px;
    }

    .newsletter input {

      flex: 1;

      border: 0;

      outline: none;

      padding: 12px;

      min-width: 0;
    }

    .newsletter button {

      border: 0;

      background: var(--text);

      color: white;

      border-radius: 12px;

      padding:
        0 18px;

      font-weight: 700;

      cursor: pointer;
    }

    .newsletter-msg {

      grid-column: 1/-1;

      display: none;

      margin-top: -12px;

      font-size: 13px;
    }


    /* =========================
       FOOTER
    ========================== */

    footer {

      background: white;

      margin-top: 70px;

      border-top:
        1px solid
        var(--border);
    }

    .footer-grid {

      padding:
        54px 0 36px;

      display: grid;

      grid-template-columns:
        1.4fr repeat(3,1fr);

      gap: 40px;
    }

    .footer-title {

      font-weight: 800;

      margin-bottom: 12px;
    }

    .footer-links {

      display: grid;

      gap: 9px;

      color: var(--muted);

      font-size: 14px;
    }

    .footer-bottom {

      border-top:
        1px solid
        var(--border);

      padding:
        18px 0;

      display: flex;

      justify-content: space-between;

      gap: 16px;

      color: var(--muted);

      font-size: 13px;
    }


    /* =========================
       RESPONSIVE
    ========================== */

    @media(max-width:1100px) {

      .nav {
        display: none;
      }

      .header-inner {

        grid-template-columns:
          auto 1fr;
      }

      .header-actions {

        justify-self: end;
      }

      .mobile-toggle {

        display: grid;
      }

      .categories {

        grid-template-columns:
          repeat(3,1fr);
      }

      .products {

        grid-template-columns:
          repeat(3,1fr);
      }

      .benefits {

        grid-template-columns:
          repeat(2,1fr);
      }

      .reviews {

        grid-template-columns:
          repeat(2,1fr);
      }
    }


    @media(max-width:800px) {

      .search-wrap {
        display: none;
      }

      .hero-content {
        padding: 44px;
      }

      .hero h1 {
        font-size: 44px;
      }

      .products {
        grid-template-columns:
          repeat(2,1fr);
      }

      .deal {
        grid-template-columns: 1fr;
      }

      .deal-media {
        height: 280px;
      }

      .newsletter {

        grid-template-columns: 1fr;
      }

      .newsletter form {

        min-width: 0;

        width: 100%;
      }

      .footer-grid {

        grid-template-columns:
          repeat(2,1fr);
      }
    }


    @media(max-width:560px) {

      .container {

        width:
          min(
            100% - 22px,
            var(--container)
          );
      }

      .header-inner {

        gap: 10px;
      }

      .hero {

        padding-top: 18px;
      }

      .hero-card {

        min-height: 520px;

        border-radius: 22px;
      }

      .hero-content {

        padding:
          30px 24px;
      }

      .hero h1 {

        font-size: 36px;
      }

      .section {

        padding: 52px 0;
      }

      .section-header {

        display: block;
      }

      .section-header h2 {

        font-size: 27px;
      }

      .toolbar {

        margin-top: 16px;
      }

      .categories {

        grid-template-columns:
          repeat(2,1fr);
      }

      .products {

        grid-template-columns: 1fr;
      }

      .benefits {

        grid-template-columns: 1fr;
      }

      .reviews {

        grid-template-columns: 1fr;
      }

      .deal-content {

        padding:
          30px 24px;
      }

      .deal-content h2 {

        font-size: 30px;
      }

      .newsletter {

        padding:
          32px 22px;
      }

      .newsletter h2 {

        font-size: 28px;
      }

      .newsletter form {

        flex-direction: column;

        background: transparent;

        padding: 0;
      }

      .newsletter input,
      .newsletter button {

        border-radius: 12px;

        padding: 13px;
      }

      .footer-grid {

        grid-template-columns: 1fr;
      }

      .footer-bottom {

        flex-direction: column;
      }
    }

  </style>
</head>


<body>


<!-- =========================
     TOP BAR
========================== -->

<div class="topbar">

  Free shipping on orders above $100
  • 30-day easy returns

</div>


<!-- =========================
     HEADER
========================== -->

<header>

  <div class="container header-inner">


    <!-- Logo -->

    <a class="brand" href="#">

      <span class="brand-mark">

        <i class="fa-solid fa-bag-shopping"></i>

      </span>

      NexusShop

    </a>


    <!-- Desktop navigation -->

    <nav class="nav">

      <a href="#">
        Home
      </a>

      <a href="#categories">
        Categories
      </a>

      <a href="#products">
        Trending
      </a>

      <a href="#deals">
        Deals
      </a>

      <a href="#reviews">
        Reviews
      </a>

    </nav>


    <!-- Header actions -->

    <div class="header-actions">


      <!-- Search -->

      <div class="search-wrap">

        <input
          id="searchInput"
          type="search"
          placeholder="Search products..."
          aria-label="Search products"
        >

        <button
          class="search-btn"
          id="searchBtn"
          aria-label="Search"
        >

          <i class="fa-solid fa-magnifying-glass"></i>

        </button>

      </div>


      <!-- Wishlist -->

      <button
        class="icon-btn"
        aria-label="Wishlist"
      >

        <i class="fa-regular fa-heart"></i>

      </button>


      <!-- Cart -->

      <button
        class="icon-btn"
        id="cartBtn"
        aria-label="Shopping cart"
      >

        <i class="fa-solid fa-bag-shopping"></i>

        <span
          class="cart-count"
          id="cartCount"
        >
          0
        </span>

      </button>


      <!-- Mobile menu -->

      <button
        class="icon-btn mobile-toggle"
        id="mobileToggle"
        aria-label="Open menu"
      >

        <i class="fa-solid fa-bars"></i>

      </button>

    </div>

  </div>


  <!-- Mobile navigation -->

  <div
    class="mobile-panel"
    id="mobileMenu"
  >

    <div class="container">

      <a href="#">
        Home
      </a>

      <a href="#categories">
        Categories
      </a>

      <a href="#products">
        Trending
      </a>

      <a href="#deals">
        Deals
      </a>

      <a href="#reviews">
        Reviews
      </a>

    </div>

  </div>

</header>


<main>


<!-- =========================
     HERO
========================== -->

<section class="hero">

  <div class="container">

    <div class="hero-card">

      <div class="hero-content">


        <div class="eyebrow">

          <i class="fa-solid fa-sparkles"></i>

          New season collection

        </div>


        <h1>

          Everything you love,
          all in one place.

        </h1>


        <p>

          Discover trending products,
          exclusive offers and everyday
          essentials with a faster,
          cleaner and easier shopping
          experience.

        </p>


        <div class="hero-actions">

          <button
            class="btn btn-primary"
            id="shopNow"
          >

            Shop Now

            <i class="fa-solid fa-arrow-right"></i>

          </button>


          <button
            class="btn btn-light"
            id="exploreDeals"
          >

            View Offers

          </button>

        </div>


        <div class="hero-stats">

          <div class="hero-stat">

            <strong>
              10K+
            </strong>

            <span>
              Happy customers
            </span>

          </div>


          <div class="hero-stat">

            <strong>
              500+
            </strong>

            <span>
              Premium products
            </span>

          </div>


          <div class="hero-stat">

            <strong>
              4.9/5
            </strong>

            <span>
              Customer rating
            </span>

          </div>

        </div>

      </div>

    </div>


    <!-- Benefits -->

    <div class="benefits">


      <div class="benefit">

        <i class="fa-solid fa-truck-fast"></i>

        <div>

          <strong>
            Fast Delivery
          </strong>

          <span>
            Quick and reliable shipping
          </span>

        </div>

      </div>


      <div class="benefit">

        <i class="fa-solid fa-shield-halved"></i>

        <div>

          <strong>
            Secure Payment
          </strong>

          <span>
            Protected transactions
          </span>

        </div>

      </div>


      <div class="benefit">

        <i class="fa-solid fa-rotate-left"></i>

        <div>

          <strong>
            Easy Returns
          </strong>

          <span>
            30-day return policy
          </span>

        </div>

      </div>


      <div class="benefit">

        <i class="fa-solid fa-headset"></i>

        <div>

          <strong>
            24/7 Support
          </strong>

          <span>
            We're always here to help
          </span>

        </div>

      </div>

    </div>

  </div>

</section>


<!-- =========================
     CATEGORIES
========================== -->

<section
  class="section"
  id="categories"
>

  <div class="container">


    <div class="section-header">

      <div>

        <h2>
          Shop by category
        </h2>

        <p>
          Explore products based on
          what you are looking for.
        </p>

      </div>

    </div>


    <div
      class="categories"
      id="categoriesGrid"
    ></div>

  </div>

</section>


<!-- =========================
     PRODUCTS
========================== -->

<section
  class="section"
  id="products"
>

  <div class="container">


    <div class="section-header">

      <div>

        <h2>
          Trending products
        </h2>

        <p>
          Popular picks chosen by
          our customers.
        </p>

      </div>


      <div
        class="toolbar"
        id="productFilters"
      >

        <button
          class="pill active"
          data-filter="all"
        >
          All
        </button>

        <button
          class="pill"
          data-filter="phones"
        >
          Phones
        </button>

        <button
          class="pill"
          data-filter="laptops"
        >
          Laptops
        </button>

        <button
          class="pill"
          data-filter="gadgets"
        >
          Gadgets
        </button>

        <button
          class="pill"
          data-filter="accessories"
        >
          Accessories
        </button>

      </div>

    </div>


    <div
      class="products"
      id="productsGrid"
    ></div>

  </div>

</section>


<!-- =========================
     FLASH DEAL
========================== -->

<section
  class="section"
  id="deals"
>

  <div class="container">


    <div class="deal">


      <div class="deal-media">

        <img
          src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
          alt="MacBook Air deal"
        >

      </div>


      <div class="deal-content">


        <div class="eyebrow">

          <i class="fa-solid fa-bolt"></i>

          Limited time offer

        </div>


        <h2>
          MacBook Air M2
          Flash Sale
        </h2>


        <p
          style="color:#cbd5e1;margin:0"
        >

          Powerful performance,
          premium design and
          all-day battery life.

        </p>


        <div class="deal-price">

          <strong>
            $999
          </strong>

          <s>
            $1,199
          </s>

          <span
            style="
              background:#ef4444;
              padding:5px 9px;
              border-radius:999px;
              font-size:12px;
              font-weight:800;
            "
          >
            17% OFF
          </span>

        </div>


        <!-- Countdown -->

        <div class="timer">

          <div class="time-box">

            <strong id="dealDays">
              00
            </strong>

            <span>
              DAYS
            </span>

          </div>


          <div class="time-box">

            <strong id="dealHours">
              00
            </strong>

            <span>
              HOURS
            </span>

          </div>


          <div class="time-box">

            <strong id="dealMinutes">
              00
            </strong>

            <span>
              MINUTES
            </span>

          </div>


          <div class="time-box">

            <strong id="dealSeconds">
              00
            </strong>

            <span>
              SECONDS
            </span>

          </div>

        </div>


        <button
          class="btn btn-primary"
          id="buyDeal"
          style="align-self:flex-start"
        >

          Add Deal to Cart

        </button>

      </div>

    </div>

  </div>

</section>


<!-- =========================
     REVIEWS
========================== -->

<section
  class="section"
  id="reviews"
>

  <div class="container">


    <div class="section-header">

      <div>

        <h2>
          Loved by shoppers
        </h2>

        <p>
          What customers say about
          their shopping experience.
        </p>

      </div>

    </div>


    <div class="reviews">


      <article class="review-card">

        <div class="rating">

          ★★★★★

          <span>
            5.0
          </span>

        </div>

        <p>

          “The new layout makes
          shopping much easier.
          I found what I needed
          quickly and checkout
          felt very smooth.”

        </p>


        <div class="review-head">

          <img
            class="avatar"
            src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
            alt="Customer"
          >

          <div>

            <strong>
              Ava Martin
            </strong>

            <div
              class="muted"
              style="font-size:12px"
            >
              Verified buyer
            </div>

          </div>

        </div>

      </article>


      <article class="review-card">

        <div class="rating">

          ★★★★★

          <span>
            5.0
          </span>

        </div>

        <p>

          “Excellent product
          selection and a very
          clean interface.
          The category filters
          are especially useful.”

        </p>


        <div class="review-head">

          <img
            class="avatar"
            src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
            alt="Customer"
          >

          <div>

            <strong>
              Michael Lee
            </strong>

            <div
              class="muted"
              style="font-size:12px"
            >
              Frequent buyer
            </div>

          </div>

        </div>

      </article>


      <article class="review-card">

        <div class="rating">

          ★★★★★

          <span>
            4.9
          </span>

        </div>

        <p>

          “Fast, responsive and
          simple to use on mobile.
          The cart feedback feels
          much better than before.”

        </p>


        <div class="review-head">

          <img
            class="avatar"
            src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
            alt="Customer"
          >

          <div>

            <strong>
              Sophia Clark
            </strong>

            <div
              class="muted"
              style="font-size:12px"
            >
              Verified buyer
            </div>

          </div>

        </div>

      </article>

    </div>

  </div>

</section>


<!-- =========================
     NEWSLETTER
========================== -->

<section class="section">

  <div class="container">


    <div class="newsletter">


      <div>

        <h2>
          Get deals in your inbox
        </h2>

        <p>

          Be the first to know about
          offers, launches and
          exclusive discounts.

        </p>

      </div>


      <form id="newsletterForm">

        <input
          id="newsletterEmail"
          type="email"
          placeholder="Enter your email address"
          required
        >

        <button type="submit">

          Subscribe

        </button>

      </form>


      <div
        class="newsletter-msg"
        id="newsletterMsg"
      ></div>

    </div>

  </div>

</section>

</main>


<!-- =========================
     FOOTER
========================== -->

<footer>

  <div class="container footer-grid">


    <div>

      <a
        class="brand"
        href="#"
      >

        <span class="brand-mark">

          <i class="fa-solid fa-bag-shopping"></i>

        </span>

        NexusShop

      </a>


      <p
        class="muted"
        style="max-width:330px"
      >

        A modern e-commerce
        experience designed for
        speed, simplicity and
        easy shopping.

      </p>

    </div>


    <div>

      <div class="footer-title">
        Shop
      </div>

      <div class="footer-links">

        <a href="#products">
          Trending
        </a>

        <a href="#categories">
          Categories
        </a>

        <a href="#deals">
          Deals
        </a>

        <a href="#">
          New arrivals
        </a>

      </div>

    </div>


    <div>

      <div class="footer-title">
        Help
      </div>

      <div class="footer-links">

        <a href="#">
          Help center
        </a>

        <a href="#">
          Shipping
        </a>

        <a href="#">
          Returns
        </a>

        <a href="#">
          Contact us
        </a>

      </div>

    </div>


    <div>

      <div class="footer-title">
        Company
      </div>

      <div class="footer-links">

        <a href="#">
          About
        </a>

        <a href="#">
          Careers
        </a>

        <a href="#">
          Privacy
        </a>

        <a href="#">
          Terms
        </a>

      </div>

    </div>

  </div>


  <div class="container footer-bottom">

    <span>

      ©
      <span id="year"></span>
      NexusShop.
      All rights reserved.

    </span>

    <span>

      Built for a better
      shopping experience.

    </span>

  </div>

</footer>


<!-- =========================
     JAVASCRIPT
========================== -->

<script>


/* =========================
   DATA
========================== */

const CATEGORIES = [

  {
    id: "phones",
    name: "Smartphones",
    icon: "fa-mobile-screen-button"
  },

  {
    id: "laptops",
    name: "Laptops",
    icon: "fa-laptop"
  },

  {
    id: "clothing",
    name: "Clothing",
    icon: "fa-shirt"
  },

  {
    id: "gadgets",
    name: "Gadgets",
    icon: "fa-headphones"
  },

  {
    id: "footwear",
    name: "Footwear",
    icon: "fa-shoe-prints"
  },

  {
    id: "accessories",
    name: "Accessories",
    icon: "fa-clock"
  }

];


const PRODUCTS = [

  {
    id: 1,
    title: "iPhone 14 Pro Max",
    price: 1099,
    oldPrice: 1199,
    rating: 5,
    reviews: 128,
    badge: "New",
    img:
      "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
    category: "phones"
  },

  {
    id: 2,
    title: "MacBook Pro 14",
    price: 1999,
    rating: 4,
    reviews: 86,
    img:
      "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
    category: "laptops"
  },

  {
    id: 3,
    title: "Apple Watch Series 8",
    price: 349,
    oldPrice: 399,
    rating: 5,
    reviews: 214,
    badge: "-13%",
    img:
      "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85",
    category: "accessories"
  },

  {
    id: 4,
    title: "Nike Air Max 270",
    price: 150,
    rating: 4,
    reviews: 53,
    img:
      "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85",
    category: "footwear"
  },

  {
    id: 5,
    title: "Sony A7 IV Camera",
    price: 2499,
    rating: 5,
    reviews: 42,
    img:
      "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85",
    category: "gadgets"
  },

  {
    id: 6,
    title: "Premium Fragrance",
    price: 120,
    rating: 5,
    reviews: 189,
    img:
      "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85",
    category: "accessories"
  },

  {
    id: 7,
    title: "Travel Backpack",
    price: 79,
    oldPrice: 99,
    rating: 4,
    reviews: 67,
    badge: "-20%",
    img:
      "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85",
    category: "accessories"
  },

  {
    id: 8,
    title: "Sony WH-1000XM5",
    price: 399,
    rating: 5,
    reviews: 156,
    img:
      "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85",
    category: "gadgets"
  }

];


/* =========================
   DOM ELEMENTS
========================== */

const categoriesGrid =
  document.getElementById(
    "categoriesGrid"
  );

const productsGrid =
  document.getElementById(
    "productsGrid"
  );

const cartCountEl =
  document.getElementById(
    "cartCount"
  );

const searchInput =
  document.getElementById(
    "searchInput"
  );


let cartCount = 0;


/* =========================
   SECURITY
========================== */

function escapeHtml(text) {

  return String(text)
    .replace(/[&<>"']/g, s => ({

      "&": "&amp;",
      "<": "&lt;",
      ">": "&gt;",
      '"': "&quot;",
      "'": "&#39;"

    }[s]));

}


/* =========================
   RENDER CATEGORIES
========================== */

function renderCategories() {

  categoriesGrid.innerHTML = "";

  CATEGORIES.forEach(cat => {

    const card =
      document.createElement("div");

    card.className =
      "cat-card";

    card.innerHTML = `

      <div class="cat-icon">

        <i class="fa-solid ${cat.icon}"></i>

      </div>

      <h4>
        ${cat.name}
      </h4>

      <span>
        Explore products
      </span>

    `;


    card.addEventListener(
      "click",
      () => {

        filterProducts(cat.id);

        setActiveFilter(cat.id);

        document
          .getElementById("products")
          .scrollIntoView({
            behavior: "smooth"
          });

      }
    );


    categoriesGrid.appendChild(
      card
    );

  });

}


/* =========================
   RENDER PRODUCTS
========================== */

function renderProducts(list) {

  productsGrid.innerHTML = "";


  if (!list.length) {

    productsGrid.innerHTML = `

      <div class="empty-state">

        <i
          class="fa-solid fa-magnifying-glass"
          style="font-size:28px;margin-bottom:10px"
        ></i>

        <div>
          No products found.
          Try another search.
        </div>

      </div>

    `;

    return;
  }


  list.forEach(product => {

    const article =
      document.createElement("article");

    article.className =
      "product";


    const badgeClass =
      product.badge &&
      product.badge.startsWith("-")
        ? "badge sale"
        : "badge";


    article.innerHTML = `

      <div class="product-media">

        ${
          product.badge
            ? `
              <span class="${badgeClass}">
                ${product.badge}
              </span>
            `
            : ""
        }


        <button
          class="wishlist-floating"
          aria-label="Add to wishlist"
        >

          <i class="fa-regular fa-heart"></i>

        </button>


        <img
          src="${product.img}"
          alt="${escapeHtml(product.title)}"
        >

      </div>


      <div class="product-body">

        <div class="product-category">

          ${escapeHtml(product.category)}

        </div>


        <h3>

          ${escapeHtml(product.title)}

        </h3>


        <div class="rating">

          ${"★".repeat(
            Math.round(product.rating)
          )}

          <span>

            ${product.rating}.0
            (${product.reviews})

          </span>

        </div>


        <div class="price-row">

          <div class="price">

            <strong>

              $${product.price.toLocaleString()}

            </strong>


            ${
              product.oldPrice
                ? `
                  <span class="old-price">

                    $${product.oldPrice.toLocaleString()}

                  </span>
                `
                : ""
            }

          </div>


          <button
            class="add-btn"
            data-id="${product.id}"
            aria-label="Add to cart"
          >

            <i class="fa-solid fa-plus"></i>

          </button>

        </div>

      </div>

    `;


    productsGrid.appendChild(
      article
    );

  });


  /* Add to cart */

  productsGrid
    .querySelectorAll(".add-btn")
    .forEach(button => {

      button.addEventListener(
        "click",
        () => {

          addToCart(
            Number(button.dataset.id),
            button
          );

        }
      );

    });


  /* Wishlist */

  productsGrid
    .querySelectorAll(
      ".wishlist-floating"
    )
    .forEach(button => {

      button.addEventListener(
        "click",
        () => {

          const icon =
            button.querySelector("i");


          icon.classList.toggle(
            "fa-regular"
          );

          icon.classList.toggle(
            "fa-solid"
          );


          if (
            icon.classList.contains(
              "fa-solid"
            )
          ) {

            button.style.color =
              "#ef4444";

          }
          else {

            button.style.color = "";

          }

        }
      );

    });

}


/* =========================
   ADD TO CART
========================== */

function addToCart(
  productId,
  button
) {

  const product =
    PRODUCTS.find(
      p => p.id === productId
    );


  if (!product) return;


  cartCount++;

  cartCountEl.textContent =
    cartCount;


  const original =
    button.innerHTML;


  button.innerHTML =
    '<i class="fa-solid fa-check"></i>';


  button.style.background =
    "#16a34a";


  setTimeout(() => {

    button.innerHTML =
      original;

    button.style.background =
      "";

  }, 1000);

}


/* =========================
   FILTER PRODUCTS
========================== */

function filterProducts(query) {

  const q =
    String(query || "")
      .trim()
      .toLowerCase();


  if (
    !q ||
    q === "all"
  ) {

    renderProducts(
      PRODUCTS
    );

    return;
  }


  const filtered =
    PRODUCTS.filter(product =>

      product.title
        .toLowerCase()
        .includes(q)

      ||

      product.category
        .toLowerCase()
        .includes(q)

    );


  renderProducts(
    filtered
  );

}


/* =========================
   ACTIVE FILTER
========================== */

function setActiveFilter(
  filter
) {

  document
    .querySelectorAll(".pill")
    .forEach(button => {

      button.classList.toggle(
        "active",
        button.dataset.filter === filter
      );

    });

}


/* =========================
   SEARCH
========================== */

document
  .getElementById("searchBtn")
  .addEventListener(
    "click",
    () => {

      filterProducts(
        searchInput.value
      );

      setActiveFilter("");

    }
  );


searchInput
  .addEventListener(
    "keydown",
    event => {

      if (
        event.key === "Enter"
      ) {

        filterProducts(
          searchInput.value
        );

        setActiveFilter("");

      }

    }
  );


/* =========================
   CATEGORY FILTER BUTTONS
========================== */

document
  .querySelectorAll(".pill")
  .forEach(button => {

    button.addEventListener(
      "click",
      () => {

        const filter =
          button.dataset.filter;


        setActiveFilter(
          filter
        );


        filterProducts(
          filter
        );

      }
    );

  });


/* =========================
   MOBILE MENU
========================== */

document
  .getElementById("mobileToggle")
  .addEventListener(
    "click",
    () => {

      const menu =
        document.getElementById(
          "mobileMenu"
        );


      menu.style.display =
        menu.style.display === "block"
          ? "none"
          : "block";

    }
  );


document
  .querySelectorAll(
    "#mobileMenu a"
  )
  .forEach(link => {

    link.addEventListener(
      "click",
      () => {

        document
          .getElementById(
            "mobileMenu"
          )
          .style.display = "none";

      }
    );

  });


/* =========================
   HERO BUTTONS
========================== */

document
  .getElementById("shopNow")
  .addEventListener(
    "click",
    () => {

      document
        .getElementById("products")
        .scrollIntoView({
          behavior: "smooth"
        });

    }
  );


document
  .getElementById("exploreDeals")
  .addEventListener(
    "click",
    () => {

      document
        .getElementById("deals")
        .scrollIntoView({
          behavior: "smooth"
        });

    }
  );


/* =========================
   DEAL BUTTON
========================== */

document
  .getElementById("buyDeal")
  .addEventListener(
    "click",
    () => {

      cartCount++;

      cartCountEl.textContent =
        cartCount;


      const button =
        document.getElementById(
          "buyDeal"
        );


      const original =
        button.textContent;


      button.textContent =
        "Added ✓";


      setTimeout(
        () => {

          button.textContent =
            original;

        },
        1100
      );

    }
  );


/* =========================
   NEWSLETTER
========================== */

document
  .getElementById(
    "newsletterForm"
  )
  .addEventListener(
    "submit",
    event => {

      event.preventDefault();


      const email =
        document.getElementById(
          "newsletterEmail"
        );


      const message =
        document.getElementById(
          "newsletterMsg"
        );


      const value =
        email.value.trim();


      message.style.display =
        "block";


      if (
        !value ||
        !value.includes("@")
      ) {

        message.textContent =
          "Please enter a valid email address.";

        message.style.color =
          "#fee2e2";

        return;

      }


      message.textContent =
        "Thanks for subscribing! 🎉";

      message.style.color =
        "#dcfce7";


      email.value = "";


      setTimeout(
        () => {

          message.style.display =
            "none";

        },
        3000
      );

    }
  );


/* =========================
   DEAL COUNTDOWN
========================== */

(function setupDealTimer() {

  const target =
    new Date(
      Date.now() +
      (
        24 * 60 + 36
      ) *
      60 *
      1000
    );


  function tick() {

    const difference =
      Math.max(
        0,
        target - new Date()
      );


    const days =
      Math.floor(
        difference / 86400000
      );


    const hours =
      Math.floor(
        (
          difference %
          86400000
        ) / 3600000
      );


    const minutes =
      Math.floor(
        (
          difference %
          3600000
        ) / 60000
      );


    const seconds =
      Math.floor(
        (
          difference %
          60000
        ) / 1000
      );


    document
      .getElementById(
        "dealDays"
      )
      .textContent =
      String(days)
        .padStart(2,"0");


    document
      .getElementById(
        "dealHours"
      )
      .textContent =
      String(hours)
        .padStart(2,"0");


    document
      .getElementById(
        "dealMinutes"
      )
      .textContent =
      String(minutes)
        .padStart(2,"0");


    document
      .getElementById(
        "dealSeconds"
      )
      .textContent =
      String(seconds)
        .padStart(2,"0");

  }


  tick();

  setInterval(
    tick,
    1000
  );

})();


/* =========================
   INITIALIZATION
========================== */

renderCategories();

renderProducts(
  PRODUCTS
);

cartCountEl.textContent =
  cartCount;


document
  .getElementById("year")
  .textContent =
  new Date()
    .getFullYear();

</script>

</body>
</html>
