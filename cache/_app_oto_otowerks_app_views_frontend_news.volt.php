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
    <header>
    <nav class="navbar navbar-light bg-light p-0 m-0">
        <div class="container-fluid p-0 m-0">
            <div class="d-flex px-3 py-3 border-bottom w-100 align-items-center justify-content-between bg-white">
                <div class="d-none d-lg-block">
                    <a href="mailto::teman@otowerks.com" class="text-decoration-none text-secondary d-flex align-items-center gap-3">
                        <span class="iconify" data-icon="fluent:mail-24-filled"></span>
                        teman@otowerks.com
                    </a>
                </div>
                <div>
                    <a href="/">
                        <img src="/assets/frontend/images/logo.png" alt="Logo OtoWerks" class="oto-brand">
                    </a>
                </div>
                <div>
                    <div class="d-flex align-items-center gap-3">
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="simple-icons:tiktok"></span>
                        </a>
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="entypo-social:youtube"></span>
                        </a>
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="brandico:facebook-rect"></span>
                        </a>
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="cib:twitter"></span>
                        </a>
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="teenyicons:instagram-solid"></span>
                        </a>
                    </div>
                </div>
            </div>
            <nav class="navbar navbar-light bg-light w-100">
                <div class="container-fluid p-0">
                    <button class="d-flex d-md-none align-items-center justify-content-center btn" id="btn-oto-menu-open">
                        <span class="iconify fs-4" data-icon="tabler:align-justified"></span>
                    </button>
                    <ul class="oto-menu d-flex align-items-center list-unstyled text-dark m-0">
                        <li class="oto-close d-block d-md-none">
                            <button class="btn m-0 p-0 d-flex align-items-center gap-2 justify-content-center" id="btn-oto-menu-close">
                                <span class="iconify fs-2" data-icon="majesticons:close"></span>Close
                            </button>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-dark <?= ($active == 'news' ? 'active' : '') ?>" href="<?= $this->url->get('news') ?>">News</a>
                        </li>
                        <?php foreach ($categorynav as $ctg) { ?>
                            <li class="nav-item">
                                <a class="nav-link <?= ($active == $ctg->slug ? 'active' : '') ?> text-dark" href="/news?c=<?= $ctg->slug ?>"><?= $ctg->name ?></a>
                            </li>
                        <?php } ?>
                        <li class="nav-item">
                            <a class="nav-link <?= ($active == 'video' ? 'active' : '') ?> text-dark" href="<?= $this->url->get('video') ?>">Video</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link text-dark dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Jenis
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="<?= $this->url->get('news?t=mobil') ?>">Mobil</a></li>
                                <li><a class="dropdown-item" href="<?= $this->url->get('news?t=motor') ?>">Motor</a></li>
                                <li><a class="dropdown-item" href="<?= $this->url->get('news?t=sport') ?>">Sport</a></li>
                            </ul>
                        </li>
                    </ul>
                    <button class="btn d-flex align-items-center justify-content-center" data-bs-toggle="modal" data-bs-target="#searchModal">
                        <span class="iconify fs-4" data-icon="uil:search"></span>
                    </button>
                </div>
            </nav>
        </div>
    </nav>
</header>



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
        
<form action="">
<div class="container-fluid py-5" style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('/assets/frontend/images/lenny-kuhne-jHZ70nRk7Ns-unsplash.jpg') center center no-repeat;">
    <div class="container text-white">
        <h1>News</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt maiores deleniti nulla incidunt non voluptate odio, ipsum numquam aliquid dolor excepturi fugiat suscipit doloremque maxime quisquam quo ipsam. Omnis, modi.</p>
        <input type="text" class="form-control form-control-lg" placeholder="Search News..">
        <div class="d-flex align-items-center justify-content-between gap-2">
            <div class="d-flex align-items-center gap-2 mt-2 overflow-auto">
                <a href="" class="btn oto-tag active">All</a>
                <a href="" class="btn oto-tag">Tips</a>
                <a href="" class="btn oto-tag">Race & Event</a>
                <a href="" class="btn oto-tag">Review</a>
            </div>
            <div class="ms-auto">
                <select class="form-select" aria-label="Default select example">
                    <option selected>Semua Jenis</option>
                    <option value="1">Mobil</option>
                    <option value="2">Motor</option>
                    <option value="3">Sport</option>
                </select>
            </div>
            <button type="submit" class="d-flex align-items-center btn p-3 btn-primary"><span class="iconify" data-icon="octicon:search-16"></span></button>
        </div>
    </div>
</div>
</form>
<div class="container-fluid p-0 bg-light">
    <img src="/assets/frontend/images/divider.svg" alt="" class="w-100 d-block">
</div>
<div class="bg-light">
    <div class="container py-5">
        <div class="grid">
            <div class="g-col-12 mb-3">
                <div class="d-flex align-items-center gap-3">
                    <img src="/assets/frontend/images/decor.svg" alt="Dekor Image">
                    <h2 class="m-0">Berita Pilihan</h2>
                </div>
                <div class="owl-carousel owl-theme featured-news">
                    <div>
                        <a href="" class="d-block text-decoration-none text-dark">
                            <h3 class="fs-3">Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h3>
                            <p class="text-secondary txt-sm">Kamis, 22 Juni 2022</p>
                            <img src="/assets/frontend/images/dukungan-untuk-jakarta-formula-e-1.jpeg" alt="Cover Title" class="rounded mb-4 d-block w-100" style="max-height: 20em;">
                        </a>
                    </div>
                    <div>
                        <a href="" class="d-block text-decoration-none text-dark">
                            <h3 class="fs-3">Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h3>
                            <p class="text-secondary txt-sm">Kamis, 22 Juni 2022</p>
                            <img src="/assets/frontend/images/dukungan-untuk-jakarta-formula-e-1.jpeg" alt="Cover Title" class="rounded mb-4 d-block w-100" style="max-height: 20em;">
                        </a>
                    </div>
                    <div>
                        <a href="" class="d-block text-decoration-none text-dark">
                            <h3 class="fs-3">Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h3>
                            <p class="text-secondary txt-sm">Kamis, 22 Juni 2022</p>
                            <img src="/assets/frontend/images/dukungan-untuk-jakarta-formula-e-1.jpeg" alt="Cover Title" class="rounded mb-4 d-block w-100" style="max-height: 20em;">
                        </a>
                    </div>
                </div>
            </div>
            <div class="g-col-12">
                <div class="d-flex align-items-center gap-3">
                    <img src="/assets/frontend/images/decor.svg" alt="Dekor Image">
                    <h2 class="m-0">Berita Terbaru</h2>
                </div>
            </div>
            <div class="g-col-12 g-col-md-6 g-col-lg-4 g-col-xl-3 rounded overflow-hidden bg-white">
                <a href="<?= $this->url->get('news/slug') ?>" class="d-flex flex-row flex-md-column text-decoration-none text-dark">
                    <div class="overflow-hidden oto-thumbnail">
                        <img src="/assets/frontend/images/sirkuit-formula-e-9_169.jpeg" alt="Image Cover" class="d-block">
                    </div>
                    <div class="p-3">
                        <div class="text-secondary txt-sm">Kamis, 22 Juni 2022</div>
                        <div class="d-flex align-items-center my-2">
                            <span class="txt-sm badge bg-warning text-dark text-decoration-none me-2">Mobil</span>
                            <span class="txt-sm badge bg-warning text-dark text-decoration-none me-2">Race & Event</span>
                        </div>
                        <h3 class="title-3nd">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                    </div>
                </a>                        
            </div>
            <div class="g-col-12 g-col-md-6 g-col-lg-4 g-col-xl-3 rounded overflow-hidden bg-white">
                <a href="<?= $this->url->get('news/slug') ?>" class="d-flex flex-row flex-md-column text-decoration-none text-dark">
                    <div class="overflow-hidden oto-thumbnail">
                        <img src="/assets/frontend/images/melihat-pebalap-adu-cepat-di-formula-e-jakarta-1_169.jpeg" alt="Image Cover" class="d-block">
                    </div>
                    <div class="p-3">
                        <div class="text-secondary txt-sm">Kamis, 22 Juni 2022</div>
                        <div class="d-flex align-items-center my-2">
                            <span class="txt-sm badge bg-warning text-dark text-decoration-none me-2">Mobil</span>
                            <span class="txt-sm badge bg-warning text-dark text-decoration-none me-2">Race & Event</span>
                        </div>
                        <h3 class="title-3nd">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                    </div>
                </a>                        
            </div>
            <div class="g-col-12 g-col-md-6 g-col-lg-4 g-col-xl-3 rounded overflow-hidden bg-white">
                <a href="<?= $this->url->get('news/slug') ?>" class="d-flex flex-row flex-md-column text-decoration-none text-dark">
                    <div class="overflow-hidden oto-thumbnail">
                        <img src="/assets/frontend/images/dukungan-untuk-jakarta-formula-e-1.jpeg" alt="Image Cover" class="d-block">
                    </div>
                    <div class="p-3">
                        <div class="text-secondary txt-sm">Kamis, 22 Juni 2022</div>
                        <div class="d-flex align-items-center my-2">
                            <span class="txt-sm badge bg-warning text-dark text-decoration-none me-2">Mobil</span>
                            <span class="txt-sm badge bg-warning text-dark text-decoration-none me-2">Race & Event</span>
                        </div>
                        <h3 class="title-3nd">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                    </div>
                </a>                        
            </div>
            <div class="g-col-12 g-col-md-6 g-col-lg-4 g-col-xl-3 rounded overflow-hidden bg-white">
                <a href="<?= $this->url->get('news/slug') ?>" class="d-flex flex-row flex-md-column text-decoration-none text-dark">
                    <div class="overflow-hidden oto-thumbnail">
                        <img src="/assets/frontend/images/momen-pebalap-formula-e-jajal-jakarta-e-prix-international-circuit_169.jpeg" alt="Image Cover" class="d-block">
                    </div>
                    <div class="p-3">
                        <div class="text-secondary txt-sm">Kamis, 22 Juni 2022</div>
                        <div class="d-flex align-items-center my-2">
                            <span class="txt-sm badge bg-warning text-dark text-decoration-none me-2">Mobil</span>
                            <span class="txt-sm badge bg-warning text-dark text-decoration-none me-2">Race & Event</span>
                        </div>
                        <h3 class="title-3nd">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                    </div>
                </a>                        
            </div>
        </div>
    </div>
</div>

        
        
    </main>

    <footer class="mt-5 p-3 p-xl-5">
    <div class="rounded p-4 bg-light mb-4">
        <div class="grid justify-content-center">
            <div class="g-col-6 g-col-md-3">
                <ul class="list-unstyled">
                    <li><a href="<?= $this->url->get('about') ?>" class="nav-link text-dark">About Us</a></li>
                    <li><a href="<?= $this->url->get('editorial') ?>" target="_blank" class="nav-link text-dark">Editorial</a></li>
                    <li><a href="<?= $this->url->get('advertising') ?>" target="_blank" class="nav-link text-dark">Advertising</a></li>
                    <li><a href="<?= $this->url->get('contact') ?>" class="nav-link text-dark">Contact Us</a></li>
                </ul>
            </div>
            <div class="g-col-12 g-col-md-6 text-center logo-foot">
                <div class="mx-auto d-inline-block">
                    <img src="/assets/frontend/images/logo.png" alt="Logo" class="d-block">
                    <hr class="w-25 mx-auto">
                    <div class="d-inline-flex align-items-center gap-3 mx-auto foot-sosmed">
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="simple-icons:tiktok"></span>
                        </a>
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="entypo-social:youtube"></span>
                        </a>
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="brandico:facebook-rect"></span>
                        </a>
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="cib:twitter"></span>
                        </a>
                        <a href="" class="d-inline-block text-decoration-none text-secondary">
                            <span class="iconify" data-icon="teenyicons:instagram-solid"></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="g-col-6 g-col-md-3">
                <ul class="list-unstyled text-end">
                    <li><a href="" target="_blank" class="nav-link text-dark">Disclaimer</a></li>
                    <li><a href="" target="_blank" class="nav-link text-dark">Privacy Policy</a></li>
                    <li><a href="" target="_blank" class="nav-link text-dark">Pedoman Media Cyber</a></li>
                    <li><a href="" target="_blank" class="nav-link text-dark">Subscribe</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div><strong>&copy;</strong> All Reserved by <strong>OtoWerks</strong> - 2022</div>
</footer>

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