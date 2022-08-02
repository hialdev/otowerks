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

