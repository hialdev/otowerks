a:3:{i:0;s:6876:"<!DOCTYPE html>
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
        ";s:7:"content";N;i:1;s:3470:"
        
        
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

</html>";}