<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OtoWerks | Your Otomotif Guide Partner</title>

    <link rel="stylesheet" href="/assets/frontend/css/bootstrap.css">
    <link rel="stylesheet" href="/assets/frontend/css/style.css">
    <link rel="shortcut icon" href="/assets/frontend/images/ema-favicon.png" type="image/x-icon">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <!-- end -->

</head>

<body>
    {% include 'frontend/partials/nav.volt' %}

    <main>
        <!-- Modal -->
        <div class="modal fade" id="searchModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content border-0">
                    <div class="modal-header border-0">
                        <h5 class="modal-title" id="staticBackdropLabel">Search</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                
                    <div class="modal-body border-0">
                        <form action="">
                            <input type="text" placeholder="Search" class="form-control">
                        </form>
                    </div>
                    <div class="modal-footer border-0">
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Cari</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Start Content -->
        {% block content %}{% endblock %}
        
        
    </main>

    {% include "frontend/partials/footer.volt" %}

</body>
<!-- Plugin -->
<script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Jquery -->
<script src="/assets/frontend/js/bootstrap.bundle.js"></script> <!-- Bootstrap -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script> <!-- Owl Carousel 2-->

<!-- end -->
<script src="/assets/frontend/js/style.js"></script>
<script src="/assets/frontend/js/carousel.js"></script>

</html>