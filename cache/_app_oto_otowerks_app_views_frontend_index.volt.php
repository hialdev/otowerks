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
        
<div class="container-fluid p-3 p-xl-5">

    <!-- Featured News -->
    <div class="grid">
        <div class="g-col-12 g-col-lg-7">
            <div class="owl-carousel owl-theme big-news">
                <?php foreach ($headline as $h) { ?>
                <div>
                    <a href="/news/<?= $h['slug'] ?>" class="d-block text-decoration-none text-dark">
                        <h1 class="fs-1"><?= $h['title'] ?></h1>
                        <p class="text-secondary txt-sm"><?= $h['created'] ?></p>
                        <img src="<?= $h['image'] ?>" alt="<?= $h['title'] ?> image" class="rounded mb-4 d-block w-100" style="max-height: 528px;">
                        <p class="m-0 lc lc-3"><?= $h['excerpt'] ?></p>
                    </a>
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="g-col-12 g-col-lg-5" style="overflow-y: auto;max-height: 50em;">
            <?php foreach ($news_list as $news) { ?>
            <a href="/news/<?= $news['slug'] ?>" class="text-decoration-none d-flex align-items-start gap-3 text-dark mb-3">
                <img src="<?= $news['image'] ?>" alt="<?= $news['title'] ?> image" class="d-block w-50 w-lg-100 rounded mb-3">
                <div>
                    <p class="m-0 text-secondary txt-sm"><?= $news['created'] ?></p>
                    <h2 class="title-2nd"><?= $news['title'] ?></h2>
                    <p class="m-0 txt-sm lc lc-3"><?= $news['excerpt'] ?></p>
                </div>
            </a>
            <?php } ?>
        </div>
    </div>

    <!-- Latest Review -->
    <div class="py-5">
        <div class="d-flex align-items-center justify-content-between">
            <div class="d-flex align-items-center gap-3">
                <img src="/assets/frontend/images/decor.svg" alt="Dekor Image">
                <h2 class="m-0">Review Terbaru</h2>
            </div>
            <a href="" class="text-dark d-flex align-items-center gap-2 btn-oto-more">
                Lainnya
                <span class="iconify" data-icon="bi:arrow-right-circle-fill"></span>
            </a>
        </div>
        <div class="owl-carousel owl-theme review-card py-4">
            <div class="card-responsive">
                <a href="./show.html" class="text-decoration-none text-dark d-block">
                    <img src="/assets/frontend/images/suzuki-ertiga-hybrid-gx-mtjpeg-20220617044007.jpeg" alt="Review Cover" class="d-block rounded w-100 mb-3">
                    <div class="d-flex gap-3 align-items-center">
                        <div class="d-inline-flex gap-2 align-items-center">
                            <span class="iconify fs-4 text-primary" data-icon="bi:play-circle-fill"></span>
                            <strong>12:23</strong>
                        </div>
                        <span class="txt-sm text-secondary">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                    </div>
                    <h4>Mengintip Spek Mobil Listrik Ford GT40 Everrati, Tenaganya 800 DK!</h4>
                </a>
            </div>
            <div class="card-responsive">
                <a href="./show.html" class="text-decoration-none text-dark d-block">
                    <img src="/assets/frontend/images/suzuki-ertiga-hybrid-gx-mtjpeg-20220617044007.jpeg" alt="Review Cover" class="d-block rounded w-100 mb-3">
                    <div class="d-flex gap-3 align-items-center">
                        <span class="txt-sm text-secondary">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                    </div>
                    <h4>Mengintip Spek Mobil Listrik Ford GT40 Everrati, Tenaganya 800 DK!</h4>
                </a>
            </div>
            <div class="card-responsive">
                <a href="./show.html" class="text-decoration-none text-dark d-block">
                    <img src="/assets/frontend/images/suzuki-ertiga-hybrid-gx-mtjpeg-20220617044007.jpeg" alt="Review Cover" class="d-block rounded w-100 mb-3">
                    <div class="d-flex gap-3 align-items-center">
                        <span class="txt-sm text-secondary">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                    </div>
                    <h4>Mengintip Spek Mobil Listrik Ford GT40 Everrati, Tenaganya 800 DK!</h4>
                </a>
            </div>
        </div>
        <div class="d-flex align-items-center gap-4 review">
            <div class="d-inline-flex align-items-center gap-2 btn-icon" id="prev"><span class="iconify" data-icon="bi:arrow-left-circle-fill"></span>Prev</div>
            <div class="d-inline-flex align-items-center gap-2 btn-icon" id="next">Next<span class="iconify" data-icon="bi:arrow-right-circle-fill"></span></div>
        </div>
    </div>

    <!-- Race & Event -->
    <div class="py-5">
        <div class="d-flex align-items-center justify-content-between">
            <div class="d-flex align-items-center gap-3">
                <img src="/assets/frontend/images/decor.svg" alt="Dekor Image">
                <h2 class="m-0">Race & Event</h2>
            </div>
            <a href="" class="text-dark d-flex align-items-center gap-2 btn-oto-more">
                Lainnya
                <span class="iconify" data-icon="bi:arrow-right-circle-fill"></span>
            </a>
        </div>
        <div class="owl-carousel owl-theme race-card py-4">
            <div class="card-responsive">
                <a href="./show.html" class="text-decoration-none text-dark d-block">
                    <img src="/assets/frontend/images/sirkuit-formula-e-9_169.jpeg" alt="Review Cover" class="d-block rounded w-100 mb-3">
                    <div class="d-flex gap-3 align-items-center">
                        <div class="d-inline-flex gap-2 align-items-center">
                            <span class="iconify fs-4 text-primary" data-icon="bi:play-circle-fill"></span>
                            <strong>12:23</strong>
                        </div>
                        <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                    </div>
                    <h4>Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h4>
                </a>
            </div>
            <div class="card-responsive">
                <a href="./show.html" class="text-decoration-none text-dark d-block">
                    <img src="/assets/frontend/images/sirkuit-formula-e-9_169.jpeg" alt="Review Cover" class="d-block rounded w-100 mb-3">
                    <div class="d-flex gap-3 align-items-center">
                        <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                    </div>
                    <h4>Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h4>
                </a>
            </div>
            <div class="card-responsive">
                <a href="./show.html" class="text-decoration-none text-dark d-block">
                    <img src="/assets/frontend/images/sirkuit-formula-e-9_169.jpeg" alt="Review Cover" class="d-block rounded w-100 mb-3">
                    <div class="d-flex gap-3 align-items-center">
                        <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                    </div>
                    <h4>Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h4>
                </a>
            </div>
        </div>
        <div class="d-flex align-items-center gap-4 race">
            <div class="d-inline-flex align-items-center gap-2 btn-icon" id="prev"><span class="iconify" data-icon="bi:arrow-left-circle-fill"></span>Prev</div>
            <div class="d-inline-flex align-items-center gap-2 btn-icon" id="next">Next<span class="iconify" data-icon="bi:arrow-right-circle-fill"></span></div>
        </div>
    </div>

</div>

<div class="container-fluid bg-light px-3 p-xl-5">
    <div class="py-5">
        <div class="d-flex align-items-center gap-3 mb-4">
            <img src="/assets/frontend/images/hot.svg" alt="Dekor Image">
            <h2 class="m-0">Berita Populer</h2>
        </div>
        <div class="grid mb-4 gap-2">
            <?php foreach ($popular as $np) { ?>
            <div class="g-col-12 g-col-md-6 g-col-xl-4 bg-white rounded p-3">
                <a href="/news/<?= $np['slug'] ?>" class="text-decoration-none text-dark d-flex align-items-center gap-3">
                    <img src="<?= $np['image'] ?>" alt="<?= $np['title'] ?> image" class="d-block rounded w-50">
                    <div>
                        <div class="text-secondary txt-sm"><?= $np['created'] ?></div>
                        <h4 class="fs-6"><?= $np['title'] ?></h4>
                        <div class="d-flex gap-2 txt-sm align-items-center text-secondary">
                            <span class="iconify" data-icon="fa6-solid:eye"></span>
                            <?= $np['count_view'] ?>x dilihat
                        </div>
                    </div>
                </a>
            </div>
            <?php } ?>
            
        </div>
        <a href="" class="btn-oto-more">Lainnya <span class="iconify" data-icon="bi:arrow-right-circle-fill"></span></a>
    </div>
</div>

<div class="container-fluid gap-3 px-xl-5 px-3">
    <div class="py-5">
        <div class="d-flex align-items-center justify-content-between mb-4">
            <div class="d-flex align-items-center gap-3">
                <img src="/assets/frontend/images/decor.svg" alt="Dekor Image">
                <h2 class="m-0">Berita Lainnya</h2>
            </div>
        </div>
        <div class="grid gap-2 mb-4">
            <div class="g-col-12 g-col-md-6 g-col-xl-4">
                <a href="./show.html" class="text-decoration-none text-dark d-flex align-items-start gap-3">
                    <img src="/assets/frontend/images/melihat-pebalap-adu-cepat-di-formula-e-jakarta-1_169.jpeg" alt="" class="w-50 d-block rounded shadow-sm">
                    <div>
                        <div class="text-dark" style="font-size: 14px"><i>Kamis, 22 Juni 2022</i></div>
                        <h4 class="fs-6">
                            Gandeng Swasta, Pemprov DKI Audit Gelaran Formula E Jakarta
                        </h4>
                        <p class="d-none d-lg-block text-secondary" style="font-size: 14px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mattis sollicitudin.</p>
                    </div>
                </a>
            </div>
            <div class="g-col-12 g-col-md-6 g-col-xl-4">
                <a href="./show.html" class="text-decoration-none text-dark d-flex align-items-start gap-3">
                    <img src="/assets/frontend/images/dukungan-untuk-jakarta-formula-e-1.jpeg" alt="" class="w-50 d-block rounded shadow-sm">
                    <div>
                        <div class="text-dark" style="font-size: 14px"><i>Kamis, 22 Juni 2022</i></div>
                        <h4 class="fs-6">
                            Anggota DPRD DKI F-PDIP Desak Audit Total Gelaran Formula E
                        </h4>
                        <p class="d-none d-lg-block text-secondary" style="font-size: 14px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mattis sollicitudin.</p>
                    </div>
                </a>
            </div>
            <div class="g-col-12 g-col-md-6 g-col-xl-4">
                <a href="./show.html" class="text-decoration-none text-dark d-flex align-items-start gap-3">
                    <img src="/assets/frontend/images/giring-ganesha-wilda-hayatun-nufusdetikcom_169.jpeg" alt="" class="w-50 d-block rounded shadow-sm">
                    <div>
                        <div class="text-dark" style="font-size: 14px"><i>Kamis, 22 Juni 2022</i></div>
                        <h4 class="fs-6">
                            Giring Sentil Formula E Lagi, Singgung Politisasi Agama soal Rakyat...
                        </h4>
                        <p class="d-none d-lg-block text-secondary" style="font-size: 14px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mattis sollicitudin.</p>
                    </div>
                </a>
            </div>
            <div class="g-col-12 g-col-md-6 g-col-xl-4">
                <a href="./show.html" class="text-decoration-none text-dark d-flex align-items-start gap-3">
                    <img src="/assets/frontend/images/momen-pebalap-formula-e-jajal-jakarta-e-prix-international-circuit_169.jpeg" alt="" class="w-50 d-block rounded shadow-sm">
                    <div>
                        <div class="text-dark" style="font-size: 14px"><i>Kamis, 22 Juni 2022</i></div>
                        <h4 class="fs-6">
                            Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton
                        </h4>
                        <p class="d-none d-lg-block text-secondary" style="font-size: 14px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mattis sollicitudin.</p>
                    </div>
                </a>
            </div>
            <div class="g-col-12 g-col-md-6 g-col-xl-4">
                <a href="./show.html" class="text-decoration-none text-dark d-flex align-items-start gap-3">
                    <img src="/assets/frontend/images/suzuki-ertiga-hybrid-gx-mtjpeg-20220617044007.jpeg" alt="" class="w-50 d-block rounded shadow-sm">
                    <div>
                        <div class="text-dark" style="font-size: 14px"><i>Kamis, 22 Juni 2022</i></div>
                        <h4 class="fs-6">
                            Mengintip Spek Mobil Listrik Ford GT40 Everrati, Tenaganya 800 DK!
                        </h4>
                        <p class="d-none d-lg-block text-secondary" style="font-size: 14px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mattis sollicitudin.</p>
                    </div>
                </a>
            </div>
            <div class="g-col-12 g-col-md-6 g-col-xl-4">
                <a href="./show.html" class="text-decoration-none text-dark d-flex align-items-start gap-3">
                    <img src="/assets/frontend/images/giring-eks-nidji-serang-anies-ini-komentar-7-parpol_169.jpeg" alt="" class="w-50 d-block rounded shadow-sm">
                    <div>
                        <div class="text-dark" style="font-size: 14px"><i>Kamis, 22 Juni 2022</i></div>
                        <h4 class="fs-6">
                            Cuitan Giring Usai Anies Minta Maaf ke yang Pesimis
                        </h4>
                        <p class="d-none d-lg-block text-secondary" style="font-size: 14px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mattis sollicitudin.</p>
                    </div>
                </a>
            </div>
        </div>
        <a href="" class="btn-oto-more">Semua Berita <span class="iconify" data-icon="bi:arrow-right-circle-fill"></span></a>
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