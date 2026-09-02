```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop — Modern E-Commerce</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">

  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    :root {
      --primary: #171a2b;
      --accent: #6c5ce7;
      --accent-light: #8b7cf6;
      --background: #f7f8fc;
      --surface: #ffffff;
      --light-purple: #f0efff;
      --text-muted: #74798b;
      --border: #e9eaf1;
      --danger: #ef476f;
      --shadow: 0 10px 30px rgba(23, 26, 43, .08);
      --radius: 18px;
      --container: 1240px;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: Inter, sans-serif;
      background: var(--background);
      color: var(--primary);
      line-height: 1.5;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button,
    input {
      font: inherit;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: auto;
      padding: 0 24px;
    }

    /* ================= HEADER ================= */

    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255,255,255,.9);
      backdrop-filter: blur(18px);
      border-bottom: 1px solid var(--border);
    }

    .header-inner {
      min-height: 70px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: "Plus Jakarta Sans";
      font-weight: 800;
      font-size: 21px;
    }

    .brand-icon {
      width: 35px;
      height: 35px;
      display: grid;
      place-items: center;
      border-radius: 10px;
      color: white;
      background: linear-gradient(
        135deg,
        var(--accent),
        var(--accent-light)
      );
    }

    .brand span {
      color: var(--accent);
    }

    nav ul {
      display: flex;
      list-style: none;
      gap: 5px;
    }

    nav a {
      display: flex;
      align-items: center;
      gap: 7px;
      padding: 9px 12px;
      border-radius: 10px;
      color: #55596a;
      font-size: 13px;
      font-weight: 600;
    }

    nav a:hover {
      color: var(--accent);
      background: var(--light-purple);
    }

    .header-right {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .search {
      display: flex;
      align-items: center;
      gap: 8px;
      background: #f3f4f8;
      border: 1px solid transparent;
      border-radius: 12px;
      padding: 10px 13px;
      width: 250px;
    }

    .search:focus-within {
      background: white;
      border-color: #d9d4ff;
      box-shadow: 0 0 0 4px rgba(108,92,231,.08);
    }

    .search input {
      width: 100%;
      border: 0;
      outline: 0;
      background: transparent;
      font-size: 13px;
    }

    .icon-btn {
      border: 0;
      background: transparent;
      cursor: pointer;
      color: #55596a;
      font-size: 17px;
    }

    .icon-btn:hover {
      color: var(--accent);
    }

    .cart {
      position: relative;
      padding: 8px;
    }

    .cart-count {
      position: absolute;
      top: -4px;
      right: -5px;
      width: 19px;
      height: 19px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      background: var(--accent);
      color: white;
      font-size: 10px;
      font-weight: 800;
    }

    .mobile-toggle {
      display: none;
      border: 0;
      background: transparent;
      font-size: 20px;
      cursor: pointer;
    }

    /* ================= HERO ================= */

    .hero {
      min-height: 500px;
      display: flex;
      align-items: center;
      color: white;

      background:
        linear-gradient(
          90deg,
          rgba(14,17,34,.93),
          rgba(14,17,34,.65),
          rgba(14,17,34,.25)
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
        center / cover;

      border-radius: 0 0 28px 28px;
    }

    .hero-content {
      max-width: 700px;
    }

    .hero h1 {
      font-family: "Plus Jakarta Sans";
      font-size: clamp(40px, 5vw, 64px);
      line-height: 1.05;
      letter-spacing: -.05em;
      margin-bottom: 20px;
    }

    .hero p {
      max-width: 650px;
      margin-bottom: 28px;
      color: rgba(255,255,255,.85);
    }

    .btn {
      border: 0;
      border-radius: 11px;
      padding: 12px 19px;
      cursor: pointer;
      font-weight: 700;
      font-size: 13px;
      transition: .2s;
    }

    .btn:hover {
      transform: translateY(-2px);
    }

    .btn-primary {
      color: white;
      background: linear-gradient(
        135deg,
        var(--accent),
        var(--accent-light)
      );
      box-shadow: 0 10px 25px rgba(108,92,231,.3);
    }

    .btn-secondary {
      color: white;
      background: rgba(255,255,255,.1);
      border: 1px solid rgba(255,255,255,.3);
      margin-left: 7px;
    }

    /* ================= SECTIONS ================= */

    .section {
      padding: 65px 0;
    }

    .section-header {
      margin-bottom: 25px;
    }

    .section-header h2 {
      font-family: "Plus Jakarta Sans";
      font-size: 28px;
      letter-spacing: -.04em;
    }

    .section-header p {
      color: var(--text-muted);
      font-size: 13px;
    }

    /* ================= CATEGORIES ================= */

    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }

    .category {
      background: white;
      border: 1px solid var(--border);
      border-radius: 16px;
      padding: 20px 10px;
      text-align: center;
      cursor: pointer;
      transition: .2s;
    }

    .category:hover {
      transform: translateY(-5px);
      box-shadow: var(--shadow);
      border-color: #d8d2ff;
    }

    .category-icon {
      width: 50px;
      height: 50px;
      margin: auto auto 10px;
      display: grid;
      place-items: center;
      border-radius: 14px;
      background: var(--light-purple);
      color: var(--accent);
      font-size: 21px;
    }

    .category h4 {
      font-size: 13px;
    }

    .category p {
      margin-top: 4px;
      color: var(--text-muted);
      font-size: 11px;
    }

    /* ================= PRODUCTS ================= */

    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 18px;
    }

    .product {
      position: relative;
      overflow: hidden;
      display: flex;
      flex-direction: column;
      background: white;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      transition: .2s;
    }

    .product:hover {
      transform: translateY(-5px);
      box-shadow: var(--shadow);
    }

    .product-image {
      width: 100%;
      height: 220px;
      object-fit: cover;
      background: #f0f1f6;
    }

    .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      padding: 5px 8px;
      border-radius: 7px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
    }

    .badge.sale {
      background: var(--danger);
    }

    .product-body {
      padding: 16px;
      flex: 1;
    }

    .product-title {
      font-size: 14px;
      font-weight: 700;
      margin-bottom: 5px;
    }

    .product-category {
      color: var(--text-muted);
      font-size: 12px;
      margin-bottom: 12px;
    }

    .product-bottom {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .price {
      font-weight: 800;
      font-size: 16px;
    }

    .old-price {
      color: #a0a3af;
      text-decoration: line-through;
      font-size: 12px;
      margin-left: 4px;
    }

    .rating {
      color: #f5b700;
      font-size: 12px;
    }

    .product-actions {
      display: flex;
      gap: 8px;
      padding: 0 16px 16px;
    }

    .add-btn {
      flex: 1;
      border: 0;
      border-radius: 10px;
      padding: 10px;
      background: var(--primary);
      color: white;
      cursor: pointer;
      font-size: 12px;
      font-weight: 700;
    }

    .add-btn:hover {
      background: var(--accent);
    }

    .wishlist {
      border: 1px solid var(--border);
      background: white;
      border-radius: 10px;
      padding: 10px 12px;
      cursor: pointer;
    }

    .wishlist:hover {
      color: var(--accent);
      border-color: #d8d2ff;
    }

    /* ================= DEAL ================= */

    .deal {
      display: flex;
      overflow: hidden;
      border-radius: 22px;
      background: #16182a;
      color: white;
      box-shadow: 0 20px 50px rgba(23,26,43,.15);
    }

    .deal-image {
      width: 50%;
      object-fit: cover;
    }

    .deal-content {
      padding: 42px;
      flex: 1;
    }

    .deal-content h3 {
      font-family: "Plus Jakarta Sans";
      font-size: 30px;
      margin-bottom: 8px;
    }

    .deal-content p {
      color: #b7bac8;
    }

    .timer {
      display: flex;
      gap: 9px;
      margin: 22px 0;
    }

    .time-box {
      min-width: 65px;
      padding: 10px;
      text-align: center;
      background: rgba(255,255,255,.09);
      border-radius: 10px;
    }

    .time-number {
      font-weight: 800;
      font-size: 20px;
    }

    .time-label {
      font-size: 10px;
      color: #b7bac8;
    }

    .deal-price {
      font-size: 26px;
      font-weight: 800;
    }

    /* ================= TESTIMONIALS ================= */

    .testimonials {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 18px;
    }

    .testimonial {
      background: white;
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 24px;
    }

    .stars {
      color: #f5b700;
      margin-bottom: 12px;
    }

    .customer {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 18px;
    }

    .customer img {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      object-fit: cover;
    }

    /* ================= NEWSLETTER ================= */

    .newsletter {
      padding: 48px 30px;
      text-align: center;
      border-radius: 22px;
      color: white;
      background: linear-gradient(135deg,#211d49,#4c3fb0);
    }

    .newsletter h3 {
      font-family: "Plus Jakarta Sans";
      font-size: 26px;
    }

    .newsletter p {
      margin: 8px 0 22px;
      opacity: .8;
    }

    .newsletter input {
      width: 320px;
      max-width: 100%;
      padding: 12px 15px;
      border: 0;
      outline: 0;
      border-radius: 10px;
    }

    /* ================= FOOTER ================= */

    footer {
      margin-top: 20px;
      padding: 45px 0;
      background: white;
      border-top: 1px solid var(--border);
      color: var(--text-muted);
      font-size: 13px;
    }

    .footer-grid {
      display: flex;
      justify-content: space-between;
      gap: 30px;
    }

    .footer-title {
      color: var(--primary);
      font-weight: 700;
      margin-bottom: 8px;
    }

    /* ================= MOBILE ================= */

    @media(max-width: 1100px) {
      .categories {
        grid-template-columns: repeat(3,1fr);
      }

      .products {
        grid-template-columns: repeat(3,1fr);
      }
    }

    @media(max-width: 900px) {
      nav {
        display: none;
      }

      .mobile-toggle {
        display: block;
      }

      .products {
        grid-template-columns: repeat(2,1fr);
      }

      .categories {
        grid-template-columns: repeat(2,1fr);
      }

      .search {
        width: 180px;
      }

      .deal-image {
        width: 42%;
      }
    }

    @media(max-width: 600px) {
      .container {
        padding: 0 16px;
      }

      .search {
        display: none;
      }

      .hero {
        min-height: 520px;
      }

      .hero h1 {
        font-size: 38px;
      }

      .products,
      .categories,
      .testimonials {
        grid-template-columns: 1fr;
      }

      .deal {
        flex-direction: column;
      }

      .deal-image {
        width: 100%;
        height: 220px;
      }

      .deal-content {
        padding: 25px;
      }

      .footer-grid {
        flex-direction: column;
      }
    }
  </style>
</head>

<body>

  <!-- ================= HEADER ================= -->

  <header>
    <div class="container header-inner">

      <div style="display:flex;align-items:center;gap:12px">

        <button class="mobile-toggle" id="mobileToggle">
          <i class="fas fa-bars"></i>
        </button>

        <a href="#" class="brand">
          <div class="brand-icon">N</div>
          Nexus<span>Shop</span>
        </a>

      </div>

      <nav>
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
        </ul>
      </nav>

      <div class="header-right">

        <div class="search">
          <i class="fas fa-search"></i>
          <input
            type="search"
            id="searchInput"
            placeholder="Search products..."
          >
        </div>

        <button class="icon-btn">
          <i class="far fa-user"></i>
        </button>

        <button class="icon-btn">
          <i class="far fa-heart"></i>
        </button>

        <a href="#" class="cart">
          <i class="fas fa-shopping-cart"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>

      </div>
    </div>
  </header>


  <!-- ================= HERO ================= -->

  <section class="hero">

    <div class="container">

      <div class="hero-content">

        <h1>
          Premium Picks.<br>
          Better Everyday.
        </h1>

        <p>
          Discover the latest fashion, technology and accessories
          curated specially for you.
        </p>

        <button class="btn btn-primary" id="shopNow">
          Shop Now
          <i class="fas fa-arrow-right"></i>
        </button>

        <button class="btn btn-secondary" id="exploreDeals">
          Explore Deals
        </button>

      </div>

    </div>

  </section>


  <main>

    <!-- ================= CATEGORIES ================= -->

    <section class="section container" id="categories">

      <div class="section-header">
        <h2>Shop by Category</h2>
        <p>Find exactly what you're looking for.</p>
      </div>

      <div class="categories" id="categoriesGrid"></div>

    </section>


    <!-- ================= PRODUCTS ================= -->

    <section class="section container" id="products">

      <div class="section-header">
        <h2>Trending Products</h2>
        <p>Popular products selected for you.</p>
      </div>

      <div class="products" id="productsGrid"></div>

    </section>


    <!-- ================= DEAL ================= -->

    <section class="section container" id="deals">

      <div class="section-header">
        <h2>Flash Sale</h2>
        <p>Limited-time offers. Don't miss out!</p>
      </div>

      <div class="deal">

        <img
          class="deal-image"
          src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80"
          alt="MacBook Air"
        >

        <div class="deal-content">

          <h3>MacBook Air M2</h3>

          <p>
            Thin, light and powerful with incredible M2 performance.
          </p>

          <div class="timer">

            <div class="time-box">
              <div class="time-number" id="days">00</div>
              <div class="time-label">DAYS</div>
            </div>

            <div class="time-box">
              <div class="time-number" id="hours">00</div>
              <div class="time-label">HOURS</div>
            </div>

            <div class="time-box">
              <div class="time-number" id="minutes">00</div>
              <div class="time-label">MINUTES</div>
            </div>

            <div class="time-box">
              <div class="time-number" id="seconds">00</div>
              <div class="time-label">SECONDS</div>
            </div>

          </div>

          <div class="deal-price">
            $999
            <span class="old-price">$1,199</span>
          </div>

          <p style="margin:12px 0 20px">
            Only <strong>12</strong> items left.
          </p>

          <button class="btn btn-primary" id="buyDeal">
            Buy Now
          </button>

        </div>

      </div>

    </section>


    <!-- ================= TESTIMONIALS ================= -->

    <section class="section container">

      <div class="section-header">
        <h2>What Our Customers Say</h2>
        <p>Real reviews from verified buyers.</p>
      </div>

      <div class="testimonials">

        <div class="testimonial">

          <div class="stars">★★★★★</div>

          <p>
            "Fast shipping and excellent customer support.
            The product exceeded my expectations!"
          </p>

          <div class="customer">

            <img
              src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"
              alt="Ava"
            >

            <div>
              <strong>Ava Martin</strong>
              <div style="font-size:12px;color:#74798b">
                Verified buyer
              </div>
            </div>

          </div>

        </div>


        <div class="testimonial">

          <div class="stars">★★★★☆</div>

          <p>
            "Great selection and the checkout was smooth.
            Will definitely shop again."
          </p>

          <div class="customer">

            <img
              src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80"
              alt="Michael"
            >

            <div>
              <strong>Michael Lee</strong>
              <div style="font-size:12px;color:#74798b">
                Frequent buyer
              </div>
            </div>

          </div>

        </div>

      </div>

    </section>


    <!-- ================= NEWSLETTER ================= -->

    <section class="section container">

      <div class="newsletter">

        <h3>Stay in the Loop</h3>

        <p>
          Subscribe to receive exclusive offers and new arrivals.
        </p>

        <form id="newsletterForm">

          <input
            type="email"
            id="email"
            placeholder="Enter your email"
            required
          >

          <button class="btn btn-primary">
            Subscribe
          </button>

        </form>

        <div id="newsletterMessage"></div>

      </div>

    </section>

  </main>


  <!-- ================= FOOTER ================= -->

  <footer id="about">

    <div class="container footer-grid">

      <div>

        <div class="footer-title" style="font-size:18px">
          NexusShop
        </div>

        <p>
          A modern e-commerce experience built with
          HTML, CSS and JavaScript.
        </p>

        <div style="display:flex;gap:15px;margin-top:15px">

          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>

        </div>

      </div>


      <div>

        <div class="footer-title">Company</div>

        <p>About</p>
        <p>Careers</p>
        <p>Press</p>

      </div>


      <div>

        <div class="footer-title">Support</div>

        <p>Help Center</p>
        <p>Shipping & Returns</p>
        <p>Contact</p>

      </div>

    </div>

    <div style="text-align:center;margin-top:30px">
      © <span id="year"></span> NexusShop. All rights reserved.
    </div>

  </footer>


  <!-- ================= JAVASCRIPT ================= -->

  <script>

    const categories = [
      ["phones", "Smartphones", "fa-mobile-alt"],
      ["laptops", "Laptops", "fa-laptop"],
      ["clothing", "Clothing", "fa-tshirt"],
      ["gadgets", "Gadgets", "fa-headphones"],
      ["footwear", "Footwear", "fa-shoe-prints"],
      ["accessories", "Accessories", "fa-watch"]
    ];


    const products = [

      {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        category: "phones",
        image:
          "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80"
      },

      {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        category: "laptops",
        image:
          "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80"
      },

      {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80"
      },

      {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        category: "footwear",
        image:
          "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80"
      },

      {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        category: "gadgets",
        image:
          "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80"
      },

      {
        id: 6,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80"
      },

      {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80"
      },

      {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        category: "gadgets",
        image:
          "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80"
      }

    ];


    /* ================= CATEGORY RENDER ================= */

    const categoryGrid =
      document.getElementById("categoriesGrid");

    categories.forEach(category => {

      const [id, name, icon] = category;

      const div = document.createElement("div");

      div.className = "category";

      div.innerHTML = `
        <div class="category-icon">
          <i class="fas ${icon}"></i>
        </div>

        <h4>${name}</h4>

        <p>Explore ${name}</p>
      `;

      div.onclick = () => {

        document.getElementById("searchInput").value = name;

        filterProducts(name);

        document.getElementById("products")
          .scrollIntoView({
            behavior: "smooth"
          });

      };

      categoryGrid.appendChild(div);

    });


    /* ================= PRODUCT RENDER ================= */

    const productGrid =
      document.getElementById("productsGrid");


    function renderProducts(list) {

      productGrid.innerHTML = "";

      if (!list.length) {

        productGrid.innerHTML = `
          <p style="grid-column:1/-1;text-align:center">
            No products found.
          </p>
        `;

        return;
      }


      list.forEach(product => {

        const card =
          document.createElement("article");

        card.className = "product";


        const stars =
          "★".repeat(product.rating);


        card.innerHTML = `

          ${
            product.badge
              ? `
                <div class="badge ${
                  product.badge.startsWith("-")
                    ? "sale"
                    : ""
                }">
                  ${product.badge}
                </div>
              `
              : ""
          }

          <img
            class="product-image"
            src="${product.image}"
            alt="${product.title}"
          >

          <div class="product-body">

            <div class="product-title">
              ${product.title}
            </div>

            <div class="product-category">
              ${product.category}
            </div>

            <div class="product-bottom">

              <div>

                <span class="price">
                  $${product.price.toLocaleString()}
                </span>

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

              <div class="rating">
                ${stars}
                <span style="color:#74798b">
                  (${product.reviews})
                </span>
              </div>

            </div>

          </div>

          <div class="product-actions">

            <button
              class="add-btn"
              onclick="addToCart(${product.id}, this)"
            >
              <i class="fas fa-cart-plus"></i>
              Add to Cart
            </button>

            <button
              class="wishlist"
              onclick="toggleWishlist(this)"
            >
              <i class="far fa-heart"></i>
            </button>

          </div>

        `;

        productGrid.appendChild(card);

      });

    }


    /* ================= SEARCH ================= */

    function filterProducts(query) {

      const text =
        query.trim().toLowerCase();

      if (!text) {

        renderProducts(products);

        return;
      }


      const result =
        products.filter(product =>

          product.title
            .toLowerCase()
            .includes(text)

          ||

          product.category
            .toLowerCase()
            .includes(text)

        );

      renderProducts(result);

    }


    document
      .getElementById("searchInput")
      .addEventListener("input", event => {

        filterProducts(event.target.value);

      });


    /* ================= CART ================= */

    let cartCount = 0;


    function addToCart(id, button) {

      cartCount++;

      document.getElementById("cartCount")
        .textContent = cartCount;


      const original = button.innerHTML;

      button.innerHTML = "✓ Added";

      button.disabled = true;


      setTimeout(() => {

        button.innerHTML = original;

        button.disabled = false;

      }, 1000);

    }


    /* ================= WISHLIST ================= */

    function toggleWishlist(button) {

      const icon =
        button.querySelector("i");


      icon.classList.toggle("far");

      icon.classList.toggle("fas");

      button.style.color =
        icon.classList.contains("fas")
          ? "#ef476f"
          : "";

    }


    /* ================= FLASH SALE TIMER ================= */

    const saleEnd =
      Date.now() + (24 * 60 * 60 * 1000);


    function updateTimer() {

      const remaining =
        Math.max(0, saleEnd - Date.now());


      const seconds =
        Math.floor(remaining / 1000);


      const days =
        Math.floor(seconds / 86400);

      const hours =
        Math.floor((seconds % 86400) / 3600);

      const minutes =
        Math.floor((seconds % 3600) / 60);

      const secs =
        seconds % 60;


      document.getElementById("days")
        .textContent =
        String(days).padStart(2,"0");

      document.getElementById("hours")
        .textContent =
        String(hours).padStart(2,"0");

      document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2,"0");

      document.getElementById("seconds")
        .textContent =
        String(secs).padStart(2,"0");

    }


    updateTimer();

    setInterval(updateTimer,1000);


    /* ================= BUTTONS ================= */

    document
      .getElementById("shopNow")
      .onclick = () => {

        document.getElementById("products")
          .scrollIntoView({
            behavior:"smooth"
          });

      };


    document
      .getElementById("exploreDeals")
      .onclick = () => {

        document.getElementById("deals")
          .scrollIntoView({
            behavior:"smooth"
          });

      };


    document
      .getElementById("buyDeal")
      .onclick = () => {

        cartCount++;

        document.getElementById("cartCount")
          .textContent = cartCount;

      };


    /* ================= NEWSLETTER ================= */

    document
      .getElementById("newsletterForm")
      .addEventListener("submit", event => {

        event.preventDefault();

        const message =
          document.getElementById(
            "newsletterMessage"
          );

        message.textContent =
          "Thanks! You are subscribed.";

        message.style.marginTop = "12px";

        document.getElementById("email")
          .value = "";

      });


    /* ================= MOBILE MENU ================= */

    document
      .getElementById("mobileToggle")
      .onclick = () => {

        const nav =
          document.querySelector("nav");

        nav.style.display =
          nav.style.display === "block"
            ? "none"
            : "block";

      };


    /* ================= INITIALIZE ================= */

    renderProducts(products);

    document.getElementById("year")
      .textContent = new Date().getFullYear();

  </script>

</body>
</html>
```
