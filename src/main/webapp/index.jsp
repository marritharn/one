<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Myfasion Trends — Modern E-Commerce Dashboard</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
  --bg:#f5f7fb;--panel:#fff;--panel-2:#f9fafb;--text:#172033;--muted:#667085;
  --line:#e6eaf0;--brand:#635bff;--brand-2:#5148e5;--brand-soft:#eeedff;
  --green:#12b76a;--orange:#f79009;--red:#f04438;--sidebar:#101828;
  --shadow:0 8px 28px rgba(16,24,40,.06);--radius:18px;--sidebar-w:250px;
}
[data-theme="dark"]{
  --bg:#0b1220;--panel:#111a2b;--panel-2:#162136;--text:#f5f7fa;--muted:#98a2b3;
  --line:#26334a;--brand:#8178ff;--brand-2:#7168f2;--brand-soft:#27244d;
  --sidebar:#080d17;--shadow:0 12px 30px rgba(0,0,0,.22);
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:Inter,system-ui,sans-serif;background:var(--bg);color:var(--text);line-height:1.5}
button,input,select{font:inherit}
button{border:0;cursor:pointer;color:inherit}
a{text-decoration:none;color:inherit}
img{display:block;max-width:100%}
.app{min-height:100vh}
.sidebar{
  position:fixed;left:0;top:0;bottom:0;width:var(--sidebar-w);background:var(--sidebar);
  color:#d0d5dd;padding:22px 16px;z-index:100;display:flex;flex-direction:column;
}
.logo{display:flex;align-items:center;gap:11px;padding:8px 10px 26px;color:#fff;font-weight:800;font-size:21px}
.logo i{width:38px;height:38px;border-radius:11px;background:var(--brand);display:grid;place-items:center}
.logo span span{color:#a8a4ff}
.nav-title{font-size:10px;text-transform:uppercase;letter-spacing:1.2px;color:#667085;padding:12px 12px 7px}
.nav{display:flex;flex-direction:column;gap:4px}
.nav button{
  width:100%;display:flex;align-items:center;gap:12px;padding:11px 12px;border-radius:10px;
  background:transparent;color:#98a2b3;text-align:left;font-weight:500
}
.nav button:hover,.nav button.active{background:#1d2939;color:#fff}
.nav button.active i{color:#a8a4ff}
.nav i{width:20px;text-align:center}
.sidebar-bottom{margin-top:auto;border-top:1px solid #1d2939;padding-top:14px}
.main{margin-left:var(--sidebar-w);min-height:100vh}
.topbar{
  height:76px;background:var(--panel);border-bottom:1px solid var(--line);padding:0 30px;
  display:flex;align-items:center;gap:18px;position:sticky;top:0;z-index:50
}
.mobile-menu{display:none;background:var(--panel);width:42px;height:42px;border:1px solid var(--line);border-radius:10px}
.search{flex:1;max-width:650px;position:relative}
.search i{position:absolute;left:15px;top:50%;transform:translateY(-50%);color:var(--muted)}
.search input{
  width:100%;height:44px;border:1px solid var(--line);background:var(--panel-2);border-radius:12px;
  padding:0 16px 0 43px;outline:none;color:var(--text)
}
.search input:focus{border-color:var(--brand);box-shadow:0 0 0 3px rgba(99,91,255,.12)}
.top-actions{margin-left:auto;display:flex;align-items:center;gap:9px}
.top-btn{
  width:42px;height:42px;border:1px solid var(--line);background:var(--panel);border-radius:11px;
  display:grid;place-items:center;position:relative
}
.top-btn:hover{background:var(--brand-soft);color:var(--brand)}
.counter{
  position:absolute;right:-4px;top:-5px;min-width:19px;height:19px;border-radius:99px;
  background:var(--red);color:#fff;font-size:10px;font-weight:800;display:grid;place-items:center;padding:0 5px
}
.profile{display:flex;align-items:center;gap:9px;margin-left:4px}
.avatar{width:38px;height:38px;border-radius:50%;background:var(--brand-soft);color:var(--brand);display:grid;place-items:center;font-weight:800}
.profile-text{line-height:1.2}.profile-text b{font-size:13px}.profile-text span{font-size:11px;color:var(--muted)}
.content{padding:28px 30px;max-width:1500px;margin:auto}
.breadcrumb{font-size:12px;color:var(--muted);margin-bottom:18px}
.hero{
  min-height:270px;border-radius:24px;overflow:hidden;position:relative;padding:38px 42px;
  background:linear-gradient(105deg,#191d38 0%,#30358a 55%,#635bff 100%);color:#fff;
  display:flex;align-items:center;box-shadow:var(--shadow)
}
.hero:after{content:"";position:absolute;right:-80px;top:-120px;width:420px;height:420px;border-radius:50%;
  border:70px solid rgba(255,255,255,.08)}
.hero-content{position:relative;z-index:2;max-width:650px}
.hero .eyebrow{display:inline-flex;gap:7px;align-items:center;background:rgba(255,255,255,.12);
  border:1px solid rgba(255,255,255,.18);padding:6px 11px;border-radius:99px;font-size:11px;font-weight:700;margin-bottom:14px}
.hero h1{font-size:36px;line-height:1.12;margin-bottom:11px;letter-spacing:-1px}
.hero p{color:#dfe2ff;font-size:14px;max-width:570px;margin-bottom:22px}
.hero-actions{display:flex;gap:9px;flex-wrap:wrap}
.btn{height:42px;padding:0 17px;border-radius:10px;display:inline-flex;align-items:center;justify-content:center;gap:8px;font-weight:700;font-size:13px}
.btn-white{background:#fff;color:#24295a}.btn-white:hover{transform:translateY(-1px)}
.btn-ghost{background:rgba(255,255,255,.1);color:#fff;border:1px solid rgba(255,255,255,.2)}
.section{margin-top:30px}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:15px;margin-bottom:15px}
.section-head h2{font-size:20px;letter-spacing:-.3px}.section-head p{font-size:12px;color:var(--muted);margin-top:3px}
.link-btn{background:none;color:var(--brand);font-size:12px;font-weight:700}
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}
.category{
  background:var(--panel);border:1px solid var(--line);border-radius:14px;padding:17px 10px;text-align:center;
  transition:.2s;cursor:pointer
}
.category:hover,.category.active{border-color:var(--brand);background:var(--brand-soft);transform:translateY(-2px)}
.cat-icon{width:43px;height:43px;border-radius:12px;margin:auto auto 9px;background:var(--brand-soft);
  color:var(--brand);display:grid;place-items:center;font-size:17px}
.category b{font-size:12px;display:block}.category span{font-size:10px;color:var(--muted)}
.toolbar{
  background:var(--panel);border:1px solid var(--line);border-radius:14px;padding:11px;
  display:flex;gap:9px;align-items:center;justify-content:space-between;margin-bottom:14px
}
.filters{display:flex;gap:8px;flex-wrap:wrap}
.filter{
  height:36px;border:1px solid var(--line);background:var(--panel-2);border-radius:9px;padding:0 11px;
  color:var(--text);font-size:12px;outline:none
}
.filter:focus{border-color:var(--brand)}
.view-toggle{display:flex;border:1px solid var(--line);border-radius:9px;overflow:hidden}
.view-toggle button{width:34px;height:34px;background:var(--panel);color:var(--muted)}
.view-toggle button.active{background:var(--brand-soft);color:var(--brand)}
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:14px}
.product{
  background:var(--panel);border:1px solid var(--line);border-radius:16px;overflow:hidden;
  transition:.2s;min-width:0
}
.product:hover{transform:translateY(-3px);box-shadow:var(--shadow)}
.product-img{height:190px;background:var(--panel-2);position:relative;overflow:hidden}
.product-img img{width:100%;height:100%;object-fit:cover;transition:.3s}
.product:hover .product-img img{transform:scale(1.035)}
.badge{position:absolute;top:9px;left:9px;background:var(--brand);color:#fff;font-size:9px;font-weight:800;padding:5px 8px;border-radius:99px}
.badge.sale{background:var(--orange);color:#172033}
.wish{
  position:absolute;right:9px;top:9px;width:32px;height:32px;border-radius:9px;background:rgba(255,255,255,.93);
  color:#667085;display:grid;place-items:center
}
.wish.liked{color:var(--red)}
.product-body{padding:12px 13px}
.product-category{font-size:9px;color:var(--muted);text-transform:uppercase;letter-spacing:.7px;font-weight:700}
.product-title{font-size:13px;font-weight:700;margin:5px 0;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.rating{font-size:10px;color:#f79009}.rating span{color:var(--muted);margin-left:4px}
.price-row{display:flex;align-items:center;gap:7px;margin-top:8px}
.price{font-size:16px;font-weight:800}.old{font-size:10px;color:var(--muted);text-decoration:line-through}
.product-footer{display:flex;gap:7px;padding:0 13px 13px}
.add{
  flex:1;height:35px;border-radius:9px;background:var(--brand);color:#fff;font-size:11px;font-weight:800
}
.add:hover{background:var(--brand-2)}.add.added{background:var(--green)}
.quick{
  width:35px;height:35px;border:1px solid var(--line);border-radius:9px;background:var(--panel);color:var(--muted)
}
.stats{display:grid;grid-template-columns:repeat(3,1fr);gap:12px}
.stat{background:var(--panel);border:1px solid var(--line);border-radius:14px;padding:16px}
.stat-top{display:flex;justify-content:space-between;color:var(--muted);font-size:11px}
.stat strong{display:block;font-size:23px;margin:5px 0}.stat small{color:var(--green);font-size:10px}
.deal{
  margin-top:30px;background:var(--panel);border:1px solid var(--line);border-radius:18px;display:grid;
  grid-template-columns:1.1fr 1fr;overflow:hidden
}
.deal-img{min-height:260px}.deal-img img{width:100%;height:100%;object-fit:cover}
.deal-info{padding:30px;display:flex;flex-direction:column;justify-content:center}
.deal-info .tag{color:var(--orange);font-size:10px;font-weight:800;text-transform:uppercase}
.deal-info h3{font-size:24px;margin:7px 0}.deal-info p{font-size:12px;color:var(--muted);max-width:470px}
.deal-price{font-size:25px;font-weight:800;margin:14px 0}.deal-price del{font-size:13px;color:var(--muted);font-weight:400;margin-left:6px}
.timer{display:flex;gap:7px;margin:5px 0 18px}.time{background:var(--sidebar);color:#fff;border-radius:9px;padding:8px 11px;text-align:center;min-width:53px}
.time b{display:block;font-size:17px}.time span{font-size:8px;color:#98a2b3;text-transform:uppercase}
.drawer{
  position:fixed;right:-420px;top:0;bottom:0;width:390px;background:var(--panel);z-index:200;
  box-shadow:-15px 0 45px rgba(0,0,0,.15);transition:.25s;display:flex;flex-direction:column
}
.drawer.open{right:0}.drawer-head{padding:20px;border-bottom:1px solid var(--line);display:flex;justify-content:space-between;align-items:center}
.drawer-head h3{font-size:17px}.close{width:35px;height:35px;border-radius:9px;background:var(--panel-2)}
.drawer-body{padding:18px;overflow:auto;flex:1}.drawer-empty{text-align:center;padding:60px 15px;color:var(--muted)}
.drawer-item{display:flex;gap:11px;padding:11px 0;border-bottom:1px solid var(--line)}
.drawer-item img{width:60px;height:60px;border-radius:10px;object-fit:cover;background:var(--panel-2)}
.drawer-item h4{font-size:12px}.drawer-item p{font-size:11px;color:var(--muted);margin-top:3px}
.drawer-foot{padding:18px;border-top:1px solid var(--line)}
.total{display:flex;justify-content:space-between;font-weight:800;margin-bottom:12px}
.overlay{position:fixed;inset:0;background:rgba(0,0,0,.45);z-index:150;display:none}
.overlay.show{display:block}
.toast{position:fixed;right:22px;bottom:22px;background:#101828;color:#fff;padding:11px 15px;border-radius:10px;font-size:12px;
  box-shadow:var(--shadow);transform:translateY(80px);opacity:0;transition:.25s;z-index:300}
.toast.show{transform:none;opacity:1}
.footer{margin-top:38px;border-top:1px solid var(--line);padding:25px 0;color:var(--muted);font-size:11px;text-align:center}
.no-results{grid-column:1/-1;text-align:center;padding:45px;color:var(--muted);background:var(--panel);border:1px solid var(--line);border-radius:15px}
@media(max-width:1150px){
  .categories{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(3,1fr)}
}
@media(max-width:900px){
  :root{--sidebar-w:0px}.sidebar{transform:translateX(-100%);transition:.25s;width:250px}.sidebar.open{transform:none}
  .main{margin-left:0}.mobile-menu{display:grid;place-items:center}.profile-text{display:none}.content{padding:22px 18px}
  .topbar{padding:0 18px}.hero{padding:30px;min-height:250px}.hero h1{font-size:30px}.deal{grid-template-columns:1fr}
}
@media(max-width:650px){
  .topbar{height:auto;min-height:70px;flex-wrap:wrap;padding:12px}.search{order:3;flex-basis:100%;max-width:none}
  .content{padding:15px 12px}.categories{grid-template-columns:repeat(3,1fr);gap:8px}.category{padding:12px 6px}.cat-icon{width:36px;height:36px}
  .products{grid-template-columns:repeat(2,1fr);gap:9px}.product-img{height:145px}.product-body{padding:10px}.product-footer{padding:0 10px 10px}
  .stats{grid-template-columns:1fr}.toolbar{align-items:stretch;flex-direction:column}.filters{width:100%}.filter{flex:1;min-width:100px}
  .view-toggle{align-self:flex-end}.hero{padding:25px 20px}.hero h1{font-size:25px}.hero p{font-size:12px}.hero-actions .btn{flex:1}
  .deal-info{padding:22px}.drawer{width:100%;right:-100%}
}
@media(max-width:420px){.products{grid-template-columns:1fr 1fr}.product-img{height:125px}.product-title{font-size:12px}.price{font-size:14px}.hero-actions{flex-direction:column}.hero-actions .btn{width:100%}}
</style>
</head>

<body>
<div class="app">

<aside class="sidebar" id="sidebar">
  <div class="logo"><i class="fa-solid fa-bag-shopping"></i><span>Nexus<span>Shop</span></span></div>
  <div class="nav-title">Main menu</div>
  <nav class="nav">
    <button class="active" data-scroll="home"><i class="fa-solid fa-grid-2"></i> Dashboard</button>
    <button data-scroll="products"><i class="fa-solid fa-box"></i> Products</button>
    <button data-scroll="categories"><i class="fa-solid fa-layer-group"></i> Categories</button>
    <button data-scroll="deals"><i class="fa-solid fa-bolt"></i> Deals</button>
    <button id="sideWishlist"><i class="fa-regular fa-heart"></i> Wishlist <span class="counter" id="wishSide" style="position:static;margin-left:auto">0</span></button>
    <button id="sideCart"><i class="fa-solid fa-cart-shopping"></i> My Cart <span class="counter" id="cartSide" style="position:static;margin-left:auto">0</span></button>
  </nav>
  <div class="nav-title">Account</div>
  <nav class="nav">
    <button onclick="showToast('Profile section opened')"><i class="fa-regular fa-user"></i> My Profile</button>
    <button onclick="showToast('Settings opened')"><i class="fa-solid fa-gear"></i> Settings</button>
  </nav>
  <div class="sidebar-bottom">
    <button class="nav" style="width:100%;border:0;background:transparent" onclick="showToast('Thanks for using NexusShop')">
      <span style="display:flex;align-items:center;gap:12px;padding:11px 12px;color:#98a2b3"><i class="fa-solid fa-circle-question"></i> Help & Support</span>
    </button>
  </div>
</aside>

<div class="main">
<header class="topbar">
  <button class="mobile-menu" id="menuBtn"><i class="fa-solid fa-bars"></i></button>
  <div class="search">
    <i class="fa-solid fa-magnifying-glass"></i>
    <input id="searchInput" type="search" placeholder="Search products, categories..." autocomplete="off">
  </div>
  <div class="top-actions">
    <button class="top-btn" id="themeBtn" title="Toggle theme"><i class="fa-solid fa-moon"></i></button>
    <button class="top-btn" id="wishBtn" title="Wishlist"><i class="fa-regular fa-heart"></i><span class="counter" id="wishCount">0</span></button>
    <button class="top-btn" id="cartBtn" title="Cart"><i class="fa-solid fa-cart-shopping"></i><span class="counter" id="cartCount">0</span></button>
    <div class="profile">
      <div class="avatar">NS</div>
      <div class="profile-text"><b>Shopper</b><span>Premium member</span></div>
    </div>
  </div>
</header>

<main class="content" id="home">
  <div class="breadcrumb"><i class="fa-solid fa-house"></i> &nbsp;/&nbsp; Dashboard</div>

  <section class="hero">
    <div class="hero-content">
      <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> NEW SEASON 2026</span>
      <h1>Shop smarter. Find what you love faster.</h1>
      <p>Explore trending products, exclusive deals and customer favorites from one simple shopping dashboard.</p>
      <div class="hero-actions">
        <button class="btn btn-white" onclick="scrollToSection('products')"><i class="fa-solid fa-bag-shopping"></i> Shop Now</button>
        <button class="btn btn-ghost" onclick="scrollToSection('deals')"><i class="fa-solid fa-bolt"></i> View Deals</button>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="stats">
      <div class="stat"><div class="stat-top"><span>Products</span><i class="fa-solid fa-box"></i></div><strong>8</strong><small>Curated picks</small></div>
      <div class="stat"><div class="stat-top"><span>Wishlist</span><i class="fa-regular fa-heart"></i></div><strong id="statWish">0</strong><small>Saved items</small></div>
      <div class="stat"><div class="stat-top"><span>Cart items</span><i class="fa-solid fa-cart-shopping"></i></div><strong id="statCart">0</strong><small>Ready to checkout</small></div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="section-head">
      <div><h2>Browse categories</h2><p>Jump directly to the products you want</p></div>
      <button class="link-btn" onclick="clearFilters()">View all</button>
    </div>
    <div class="categories" id="categoryGrid"></div>
  </section>

  <section class="section" id="products">
    <div class="section-head">
      <div><h2>Popular products</h2><p id="resultText">Showing all products</p></div>
      <button class="link-btn" onclick="clearFilters()">Clear filters</button>
    </div>
    <div class="toolbar">
      <div class="filters">
        <select class="filter" id="categoryFilter"><option value="all">All categories</option></select>
        <select class="filter" id="priceFilter">
          <option value="all">Any price</option><option value="0-200">Under $200</option><option value="200-1000">$200–$1,000</option><option value="1000+">$1,000+</option>
        </select>
        <select class="filter" id="ratingFilter">
          <option value="all">Any rating</option><option value="5">5 stars</option><option value="4">4+ stars</option>
        </select>
        <select class="filter" id="sortFilter">
          <option value="featured">Sort: Featured</option><option value="low">Price: Low to high</option><option value="high">Price: High to low</option><option value="rating">Top rated</option><option value="name">Name A–Z</option>
        </select>
      </div>
      <div class="view-toggle"><button class="active" id="gridView"><i class="fa-solid fa-grip"></i></button><button id="compactView"><i class="fa-solid fa-list"></i></button></div>
    </div>
    <div class="products" id="productGrid"></div>
  </section>

  <section class="deal" id="deals">
    <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85" alt="MacBook Air M2"></div>
    <div class="deal-info">
      <span class="tag"><i class="fa-solid fa-bolt"></i> Limited time offer</span>
      <h3>MacBook Air M2</h3>
      <p>Thin, light and powerful. Get the popular M2 laptop at a special price while stock lasts.</p>
      <div class="deal-price">$999 <del>$1,199</del></div>
      <div class="timer">
        <div class="time"><b id="days">00</b><span>Days</span></div><div class="time"><b id="hours">00</b><span>Hours</span></div>
        <div class="time"><b id="mins">00</b><span>Mins</span></div><div class="time"><b id="secs">00</b><span>Secs</span></div>
      </div>
      <button class="btn" style="background:var(--brand);color:#fff;width:max-content" id="dealBtn"><i class="fa-solid fa-cart-plus"></i> Add deal to cart</button>
    </div>
  </section>

  <footer class="footer">© <span id="year"></span> NexusShop · Modern e-commerce dashboard</footer>
</main>
</div>
</div>

<div class="overlay" id="overlay"></div>
<aside class="drawer" id="drawer">
  <div class="drawer-head"><h3 id="drawerTitle">My Cart</h3><button class="close" id="closeDrawer"><i class="fa-solid fa-xmark"></i></button></div>
  <div class="drawer-body" id="drawerBody"></div>
  <div class="drawer-foot" id="drawerFoot"></div>
</aside>
<div class="toast" id="toast"></div>

<script>
const CATEGORIES=[
 {id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button',count:24},
 {id:'laptops',name:'Laptops',icon:'fa-laptop',count:18},
 {id:'clothing',name:'Clothing',icon:'fa-shirt',count:42},
 {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:31},
 {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:27},
 {id:'accessories',name:'Accessories',icon:'fa-watch',count:39}
];
const PRODUCTS=[
{id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',category:'Smartphones'},
{id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:'',img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',category:'Laptops'},
{id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'Sale',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
{id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,badge:'',img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',category:'Footwear'},
{id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'New',img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',category:'Gadgets'},
{id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,badge:'',img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
{id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'Sale',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
{id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'',img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',category:'Gadgets'}
];

let cart=JSON.parse(localStorage.getItem('nexus_cart')||'[]');
let wishlist=JSON.parse(localStorage.getItem('nexus_wishlist')||'[]');
let selectedCategory='all', compact=false;

const $=s=>document.querySelector(s);
function save(){localStorage.setItem('nexus_cart',JSON.stringify(cart));localStorage.setItem('nexus_wishlist',JSON.stringify(wishlist));updateCounters()}
function updateCounters(){
 $('#cartCount').textContent=cart.length;$('#cartSide').textContent=cart.length;$('#statCart').textContent=cart.length;
 $('#wishCount').textContent=wishlist.length;$('#wishSide').textContent=wishlist.length;$('#statWish').textContent=wishlist.length;
}
function money(n){return '$'+n.toLocaleString()}
function stars(r){return '★'.repeat(r)+'☆'.repeat(5-r)}
function renderCategories(){
 $('#categoryGrid').innerHTML=CATEGORIES.map(c=>`<div class="category ${selectedCategory===c.name?'active':''}" onclick="chooseCategory('${c.name}')">
 <div class="cat-icon"><i class="fa-solid ${c.icon}"></i></div><b>${c.name}</b><span>${c.count} items</span></div>`).join('');
 const select=$('#categoryFilter');
 select.innerHTML='<option value="all">All categories</option>'+CATEGORIES.map(c=>`<option value="${c.name}">${c.name}</option>`).join('');
 select.value=selectedCategory==='all'?'all':selectedCategory;
}
function chooseCategory(cat){selectedCategory=cat;$('#categoryFilter').value=cat;renderCategories();renderProducts();scrollToSection('products')}
function getFiltered(){
 let arr=[...PRODUCTS],q=$('#searchInput').value.trim().toLowerCase(),cat=$('#categoryFilter').value;
 const price=$('#priceFilter').value,rating=$('#ratingFilter').value,sort=$('#sortFilter').value;
 if(q)arr=arr.filter(p=>(p.title+' '+p.category).toLowerCase().includes(q));
 if(cat!=='all')arr=arr.filter(p=>p.category===cat);
 if(price==='0-200')arr=arr.filter(p=>p.price<200);if(price==='200-1000')arr=arr.filter(p=>p.price>=200&&p.price<=1000);if(price==='1000+')arr=arr.filter(p=>p.price>1000);
 if(rating==='5')arr=arr.filter(p=>p.rating===5);if(rating==='4')arr=arr.filter(p=>p.rating>=4);
 if(sort==='low')arr.sort((a,b)=>a.price-b.price);if(sort==='high')arr.sort((a,b)=>b.price-a.price);
 if(sort==='rating')arr.sort((a,b)=>b.rating-a.rating||b.reviews-a.reviews);if(sort==='name')arr.sort((a,b)=>a.title.localeCompare(b.title));
 return arr;
}
function renderProducts(){
 const arr=getFiltered();$('#resultText').textContent=`Showing ${arr.length} of ${PRODUCTS.length} products`;
 $('#productGrid').className='products'+(compact?' compact':'');
 if(!arr.length){$('#productGrid').innerHTML='<div class="no-results"><i class="fa-solid fa-box-open" style="font-size:26px;margin-bottom:8px"></i><br>No products found.<br><small>Try changing your search or filters.</small></div>';return}
 $('#productGrid').innerHTML=arr.map(p=>{
  const liked=wishlist.includes(p.id);
  return `<article class="product">
   <div class="product-img"><img src="${p.img}" alt="${p.title}" loading="lazy">${p.badge?`<span class="badge ${p.badge==='Sale'?'sale':''}">${p.badge}</span>`:''}
   <button class="wish ${liked?'liked':''}" onclick="toggleWish(${p.id})" aria-label="Wishlist"><i class="${liked?'fa-solid':'fa-regular'} fa-heart"></i></button></div>
   <div class="product-body"><div class="product-category">${p.category}</div><div class="product-title" title="${p.title}">${p.title}</div>
   <div class="rating">${stars(p.rating)} <span>(${p.reviews})</span></div>
   <div class="price-row"><span class="price">${money(p.price)}</span>${p.oldPrice?`<span class="old">${money(p.oldPrice)}</span>`:''}</div></div>
   <div class="product-footer"><button class="add" onclick="addCart(${p.id},this)"><i class="fa-solid fa-cart-plus"></i> Add to cart</button><button class="quick" onclick="quickView(${p.id})" title="Quick view"><i class="fa-solid fa-eye"></i></button></div>
  </article>`}).join('');
}
function addCart(id,btn){
 const p=PRODUCTS.find(x=>x.id===id);cart.push(id);save();showToast(`${p.title} added to cart`);
 const old=btn.innerHTML;btn.classList.add('added');btn.innerHTML='<i class="fa-solid fa-check"></i> Added';
 setTimeout(()=>{btn.classList.remove('added');btn.innerHTML=old},1200)
}
function toggleWish(id){const p=PRODUCTS.find(x=>x.id===id);wishlist.includes(id)?wishlist=wishlist.filter(x=>x!==id):(wishlist.push(id));save();renderProducts();showToast(wishlist.includes(id)?`${p.title} saved to wishlist`:`${p.title} removed from wishlist`)}
function quickView(id){const p=PRODUCTS.find(x=>x.id===id);alert(`${p.title}\n\n${p.category}\nRating: ${p.rating}/5 (${p.reviews} reviews)\nPrice: ${money(p.price)}`)}
function clearFilters(){selectedCategory='all';$('#searchInput').value='';$('#categoryFilter').value='all';$('#priceFilter').value='all';$('#ratingFilter').value='all';$('#sortFilter').value='featured';renderCategories();renderProducts()}
function openDrawer(type){
 $('#drawerTitle').textContent=type==='cart'?'My Cart':'My Wishlist';$('#drawer').classList.add('open');$('#overlay').classList.add('show');
 if(type==='cart')renderCart();else renderWishlist();
}
function renderCart(){
 if(!cart.length){$('#drawerBody').innerHTML='<div class="drawer-empty"><i class="fa-solid fa-cart-shopping" style="font-size:30px;margin-bottom:12px"></i><br>Your cart is empty.<br>Add something you love.</div>';$('#drawerFoot').innerHTML='';return}
 const items=cart.map(id=>PRODUCTS.find(p=>p.id===id)).filter(Boolean),total=items.reduce((s,p)=>s+p.price,0);
 $('#drawerBody').innerHTML=items.map((p,i)=>`<div class="drawer-item"><img src="${p.img}" alt=""><div style="flex:1"><h4>${p.title}</h4><p>${money(p.price)}</p></div><button class="close" onclick="removeCart(${i})"><i class="fa-solid fa-trash"></i></button></div>`).join('');
 $('#drawerFoot').innerHTML=`<div class="total"><span>Total</span><span>${money(total)}</span></div><button class="btn" style="width:100%;background:var(--brand);color:#fff" onclick="checkout()">Checkout</button>`;
}
function removeCart(index){cart.splice(index,1);save();renderCart();showToast('Item removed')}
function renderWishlist(){
 const items=wishlist.map(id=>PRODUCTS.find(p=>p.id===id)).filter(Boolean);
 if(!items.length){$('#drawerBody').innerHTML='<div class="drawer-empty"><i class="fa-regular fa-heart" style="font-size:30px;margin-bottom:12px"></i><br>Your wishlist is empty.<br>Tap the heart on a product to save it.</div>';$('#drawerFoot').innerHTML='';return}
 $('#drawerBody').innerHTML=items.map(p=>`<div class="drawer-item"><img src="${p.img}" alt=""><div style="flex:1"><h4>${p.title}</h4><p>${money(p.price)}</p></div><button class="close" onclick="toggleWish(${p.id});renderWishlist()"><i class="fa-solid fa-heart"></i></button></div>`).join('');
 $('#drawerFoot').innerHTML=`<button class="btn" style="width:100%;background:var(--brand);color:#fff" onclick="closeDrawer();scrollToSection('products')">Continue shopping</button>`;
}
function checkout(){if(!cart.length)return;cart=[];save();closeDrawer();showToast('Order placed successfully 🎉')}
function closeDrawer(){$('#drawer').classList.remove('open');$('#overlay').classList.remove('show')}
function scrollToSection(id){document.getElementById(id).scrollIntoView({behavior:'smooth',block:'start'})}
function showToast(msg){const t=$('#toast');t.textContent=msg;t.classList.add('show');clearTimeout(window.toastTimer);window.toastTimer=setTimeout(()=>t.classList.remove('show'),2200)}
function sync(){renderCategories();renderProducts();updateCounters()}
$('#searchInput').addEventListener('input',renderProducts);
['categoryFilter','priceFilter','ratingFilter','sortFilter'].forEach(id=>$('#'+id).addEventListener('change',()=>{selectedCategory=$('#categoryFilter').value==='all'?'all':$('#categoryFilter').value;renderCategories();renderProducts()}));
$('#cartBtn').onclick=()=>openDrawer('cart');$('#sideCart').onclick=()=>openDrawer('cart');$('#wishBtn').onclick=()=>openDrawer('wishlist');$('#sideWishlist').onclick=()=>openDrawer('wishlist');
$('#closeDrawer').onclick=closeDrawer;$('#overlay').onclick=closeDrawer;
$('#menuBtn').onclick=()=>$('#sidebar').classList.toggle('open');
document.querySelectorAll('.nav button[data-scroll]').forEach(b=>b.onclick=()=>{scrollToSection(b.dataset.scroll);$('#sidebar').classList.remove('open');document.querySelectorAll('.nav button').forEach(x=>x.classList.remove('active'));b.classList.add('active')});
$('#themeBtn').onclick=()=>{const dark=document.documentElement.getAttribute('data-theme')==='dark';document.documentElement.setAttribute('data-theme',dark?'light':'dark');localStorage.setItem('nexus_theme',dark?'light':'dark');$('#themeBtn').innerHTML=`<i class="fa-solid fa-${dark?'moon':'sun'}"></i>`};
if(localStorage.getItem('nexus_theme')==='dark'){document.documentElement.setAttribute('data-theme','dark');$('#themeBtn').innerHTML='<i class="fa-solid fa-sun"></i>'}
$('#gridView').onclick=()=>{$('#gridView').classList.add('active');$('#compactView').classList.remove('active');compact=false;renderProducts()}
$('#compactView').onclick=()=>{$('#compactView').classList.add('active');$('#gridView').classList.remove('active');compact=true;renderProducts()}
$('#dealBtn').onclick=()=>{cart.push(2);save();showToast('MacBook Air M2 added to cart')}
function timer(){const end=Date.now()+((2*24+11)*60*60*1000);function tick(){let d=Math.max(0,end-Date.now());let s=Math.floor(d/1000),days=Math.floor(s/86400);s%=86400;let h=Math.floor(s/3600);s%=3600;let m=Math.floor(s/60);s%=60;$('#days').textContent=String(days).padStart(2,'0');$('#hours').textContent=String(h).padStart(2,'0');$('#mins').textContent=String(m).padStart(2,'0');$('#secs').textContent=String(s).padStart(2,'0')}tick();setInterval(tick,1000)}
$('#year').textContent=new Date().getFullYear();sync();timer();
</script>
</body>
</html>
