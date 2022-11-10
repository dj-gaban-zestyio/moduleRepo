<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
</script>

<nav class="navbar navbar-dark bg-white navbar-expand-lg" style="padding-left: 32px;, background-color: #e3f2fd;">
  <img class="navbar-brand pl-18" src="{{clippings.logo.getImage()}}">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <li class="nav-item active">
        <a class="nav-link text-dark" href="#">Home</a>
    </li>
    <li class="nav-item">
        <a class="nav-link text-dark" href="#">About Us</a>
    </li>
    <li class="nav-item">
        <a class="nav-link text-dark" href="#">Pricing</a>
    </li>
    </ul>
  </div>
</nav>

<div class="container-fluid" style="background: rgb(170, 74, 68);, padding-top: 20px;">
  <div class= "container pt-5 w-100">
    <div id="carouselHeader" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselHeader" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Farm Fresh Produce"></button>
            <button type="button" data-bs-target="#carouselHeader" data-bs-slide-to="1"
                aria-label="Free Delivery"></button>
            <button type="button" data-bs-target="#carouselHeader" data-bs-slide-to="2"
                aria-label="Shop With Our App"></button>
        </div>
        <div class="carousel-inner" style="height: 500px;, width: 100%;">
            <div class="carousel-item active">
                <img src="{{prices.first().carousel_img.getImage()}}" class="d-block w-100" alt="">
            </div>
            {{each prices as price where sort_order != 1 sort by sort_order ASC }}
            <div class="carousel-item">
                <img src="{{price.carousel_img.getImage()}}" class="d-block w-100" alt="">
            </div>
            {{end-each}}
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselHeader" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselHeader" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
  </div>

    <div class="container pt-5 pb-5">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            {{each prices as price sort by sort_order ASC}}
            <div class="col">
                <div class="card h-100 shadow hover:opacity-50">
                    <img src="{{price.price_image.getImage()}}" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">{{price.price_title}}</h5>
                        <hr class="border-b-2 mb-8 mx-4">
                        <p class="card-text">{{price.price_desc}}</p>
                    </div>
                    <div class="card-footer text-center">
                        <a href="#" class="btn btn-success">Buy</a>
                    </div>
                </div>
            </div>
            {{end-each}}
        </div>
    </div>

</div>

<footer class="bg-light text-center">
  <!-- Grid container -->
  <div class="container p-4 pb-0">
    <!-- Section: Form -->
    <section class="">
        <!--Grid row-->
        <div class="row d-flex justify-content-center">
          <!--Grid column-->
          <div class="col-auto pl-18">
            <p class="pt-2">
              <strong>Sign up for our newsletter</strong>
            </p>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-5 col-12">
            <!-- Email input -->
              <form action="" method="POST">
                  <input name="zlf" value="Form Request" type="hidden"/>
                  <input name="zcf" value="1" type="hidden"/>
                  
                  <input type="email" placeholder="demo@domain.com" name="email" required="required" data-error="Valid email is required."/>
                  <button type="submit" class="btn-primary">Subscribe</button>
              </form>
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
    </section>
    <!-- Section: Form -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © {{instance.date.date(Y)}} Copyright:
    <a class="text-dark text-decoration-none" href="">{{clippings.site_name}}</a>
  </div>
  <!-- Copyright -->
</footer>