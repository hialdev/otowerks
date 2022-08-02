{% extends "layouts/web.volt" %}

{% block content %}
    <form action="">
        <div class="container-fluid py-5" style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('/assets/frontend/images/lenny-kuhne-jHZ70nRk7Ns-unsplash.jpg') center center no-repeat;">
            <div class="container text-white">
                <h1>Videos</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt maiores deleniti nulla incidunt non voluptate odio, ipsum numquam aliquid dolor excepturi fugiat suscipit doloremque maxime quisquam quo ipsam. Omnis, modi.</p>
                <div class="input-group">
                    <input type="text" class="form-control form-control-lg" placeholder="Search Video..">
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
                            <h2 class="m-0">Video Pilihan</h2>
                        </div>
                        <div class="owl-carousel owl-theme featured-news">
                            <div>
                                <a href="{{url('video/slug')}}" class="d-block text-decoration-none text-dark">
                                    <h3 class="title-2nd">Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h3>
                                    <div class="d-flex gap-3 mb-2">
                                        <div class="d-inline-flex gap-2 align-items-center txt-sm">
                                            <span class="iconify txt-sm text-primary" data-icon="bi:play-circle-fill"></span>
                                            <strong>12:23</strong>
                                        </div>
                                        <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                                    </div>
                                    <div class="overflow-hidden position-relative rounded" style="max-height: 20em;">
                                        <img src="/assets/frontend/images/sirkuit-formula-e-9_169.jpeg" alt="Image Cover" class="d-block">
                                        <div class="position-absolute w-100 d-flex align-items-center justify-content-cener" style="top: 0;bottom:0;">
                                            <div class="m-auto bg-dark rounded-circle">
                                                <span class="iconify text-primary fs-1" data-icon="bi:play-circle-fill"></span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div>
                                <a href="{{url('video/slug')}}" class="d-block text-decoration-none text-dark">
                                    <h3 class="title-2nd">Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h3>
                                    <div class="d-flex gap-3 mb-2">
                                        <div class="d-inline-flex gap-2 align-items-center txt-sm">
                                            <span class="iconify txt-sm text-primary" data-icon="bi:play-circle-fill"></span>
                                            <strong>12:23</strong>
                                        </div>
                                        <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                                    </div>
                                    <div class="overflow-hidden position-relative rounded" style="max-height: 20em;">
                                        <img src="/assets/frontend/images/sirkuit-formula-e-9_169.jpeg" alt="Image Cover" class="d-block">
                                        <div class="position-absolute w-100 d-flex align-items-center justify-content-cener" style="top: 0;bottom:0;">
                                            <div class="m-auto bg-dark rounded-circle">
                                                <span class="iconify text-primary fs-1" data-icon="bi:play-circle-fill"></span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div>
                                <a href="{{url('video/slug')}}" class="d-block text-decoration-none text-dark">
                                    <h3 class="title-2nd">Pecah Rekor! Formula E Jakarta Disaksikan Lebih dari 13,4 Juta Penonton se-Indonesia</h3>
                                    <div class="d-flex gap-3 mb-2">
                                        <div class="d-inline-flex gap-2 align-items-center txt-sm">
                                            <span class="iconify txt-sm text-primary" data-icon="bi:play-circle-fill"></span>
                                            <strong>12:23</strong>
                                        </div>
                                        <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                                    </div>
                                    <div class="overflow-hidden position-relative rounded" style="max-height: 20em;">
                                        <img src="/assets/frontend/images/sirkuit-formula-e-9_169.jpeg" alt="Image Cover" class="d-block">
                                        <div class="position-absolute w-100 d-flex align-items-center justify-content-cener" style="top: 0;bottom:0;">
                                            <div class="m-auto bg-dark rounded-circle">
                                                <span class="iconify text-primary fs-1" data-icon="bi:play-circle-fill"></span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="g-col-12">
                        <div class="d-flex align-items-center gap-3">
                            <img src="/assets/frontend/images/decor.svg" alt="Dekor Image">
                            <h2 class="m-0">Video Terbaru</h2>
                        </div>
                    </div>
                    <div class="g-col-12 g-col-md-6 g-col-lg-4 g-col-xl-3 rounded overflow-hidden bg-white">
                        <a href="{{url('video/slug')}}" class="d-flex flex-row flex-md-column text-decoration-none text-dark">
                            <div class="overflow-hidden oto-thumbnail position-relative">
                                <img src="/assets/frontend/images/sirkuit-formula-e-9_169.jpeg" alt="Image Cover" class="d-block">
                                <div class="position-absolute w-100 d-flex align-items-center justify-content-cener" style="top: 0;bottom:0;">
                                    <div class="m-auto bg-dark rounded-circle">
                                        <span class="iconify text-primary fs-1" data-icon="bi:play-circle-fill"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="p-3">
                                <div class="d-flex gap-3">
                                    <div class="d-inline-flex gap-2 align-items-center txt-sm">
                                        <span class="iconify txt-sm text-primary" data-icon="bi:play-circle-fill"></span>
                                        <strong>12:23</strong>
                                    </div>
                                    <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                                </div>
                                <h3 class="title-3nd">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                            </div>
                        </a>                        
                    </div>
                    <div class="g-col-12 g-col-md-6 g-col-lg-4 g-col-xl-3 rounded overflow-hidden bg-white">
                        <a href="{{url('video/slug')}}" class="d-flex flex-row flex-md-column text-decoration-none text-dark">
                            <div class="overflow-hidden oto-thumbnail position-relative">
                                <img src="/assets/frontend/images/melihat-pebalap-adu-cepat-di-formula-e-jakarta-1_169.jpeg" alt="Image Cover" class="d-block">
                                <div class="position-absolute w-100 d-flex align-items-center justify-content-cener" style="top: 0;bottom:0;">
                                    <div class="m-auto bg-dark rounded-circle">
                                        <span class="iconify text-primary fs-1" data-icon="bi:play-circle-fill"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="p-3">
                                <div class="d-flex gap-3">
                                    <div class="d-inline-flex gap-2 align-items-center txt-sm">
                                        <span class="iconify txt-sm text-primary" data-icon="bi:play-circle-fill"></span>
                                        <strong>12:23</strong>
                                    </div>
                                    <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                                </div>
                                <h3 class="title-3nd">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                            </div>
                        </a>                        
                    </div>
                    <div class="g-col-12 g-col-md-6 g-col-lg-4 g-col-xl-3 rounded overflow-hidden bg-white">
                        <a href="{{url('video/slug')}}" class="d-flex flex-row flex-md-column text-decoration-none text-dark">
                            <div class="overflow-hidden oto-thumbnail position-relative">
                                <img src="/assets/frontend/images/dukungan-untuk-jakarta-formula-e-1.jpeg" alt="Image Cover" class="d-block">
                                <div class="position-absolute w-100 d-flex align-items-center justify-content-cener" style="top: 0;bottom:0;">
                                    <div class="m-auto bg-dark rounded-circle">
                                        <span class="iconify text-primary fs-1" data-icon="bi:play-circle-fill"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="p-3">
                                <div class="d-flex gap-3">
                                    <div class="d-inline-flex gap-2 align-items-center txt-sm">
                                        <span class="iconify txt-sm text-primary" data-icon="bi:play-circle-fill"></span>
                                        <strong>12:23</strong>
                                    </div>
                                    <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                                </div>
                                <h3 class="title-3nd">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                            </div>
                        </a>                        
                    </div>
                    <div class="g-col-12 g-col-md-6 g-col-lg-4 g-col-xl-3 rounded overflow-hidden bg-white">
                        <a href="{{url('video/slug')}}" class="d-flex flex-row flex-md-column text-decoration-none text-dark">
                            <div class="overflow-hidden oto-thumbnail position-relative">
                                <img src="/assets/frontend/images/momen-pebalap-formula-e-jajal-jakarta-e-prix-international-circuit_169.jpeg" alt="Image Cover" class="d-block">
                                <div class="position-absolute w-100 d-flex align-items-center justify-content-cener" style="top: 0;bottom:0;">
                                    <div class="m-auto bg-dark rounded-circle">
                                        <span class="iconify text-primary fs-1" data-icon="bi:play-circle-fill"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="p-3">
                                <div class="d-flex gap-3">
                                    <div class="d-inline-flex gap-2 align-items-center txt-sm">
                                        <span class="iconify txt-sm text-primary" data-icon="bi:play-circle-fill"></span>
                                        <strong>12:23</strong>
                                    </div>
                                    <span class="text-secondary txt-sm">Kamis, 22 Juni 2022 - 18:23 WIB</span>
                                </div>
                                <h3 class="title-3nd">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                            </div>
                        </a>                        
                    </div>
                </div>
            </div>
        </div>
{% endblock %}