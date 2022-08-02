{% extends "layouts/web.volt" %}

{% block content %}
<div class="container-fluid p-3 p-xl-5">

    <!-- Featured News -->
    <div class="grid">
        <div class="g-col-12 g-col-lg-7">
            <div class="owl-carousel owl-theme big-news">
                {% for h in headline %}
                <div>
                    <a href="/news/{{h['slug']}}" class="d-block text-decoration-none text-dark">
                        <h1 class="fs-1">{{h['title']}}</h1>
                        <p class="text-secondary txt-sm">{{h['created']}}</p>
                        <img src="{{h['image']}}" alt="{{h['title']}} image" class="rounded mb-4 d-block w-100" style="max-height: 528px;">
                        <p class="m-0 lc lc-3">{{h['excerpt']}}</p>
                    </a>
                </div>
                {% endfor %}
            </div>
        </div>
        <div class="g-col-12 g-col-lg-5" style="overflow-y: auto;max-height: 50em;">
            {% for news in news_list %}
            <a href="/news/{{news['slug']}}" class="text-decoration-none d-flex align-items-start gap-3 text-dark mb-3">
                <img src="{{news['image']}}" alt="{{news['title']}} image" class="d-block w-50 w-lg-100 rounded mb-3">
                <div>
                    <p class="m-0 text-secondary txt-sm">{{news['created']}}</p>
                    <h2 class="title-2nd">{{news['title']}}</h2>
                    <p class="m-0 txt-sm lc lc-3">{{news['excerpt']}}</p>
                </div>
            </a>
            {% endfor %}
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
            {% for np in popular %}
            <div class="g-col-12 g-col-md-6 g-col-xl-4 bg-white rounded p-3">
                <a href="/news/{{np['slug']}}" class="text-decoration-none text-dark d-flex align-items-center gap-3">
                    <img src="{{np['image']}}" alt="{{np['title']}} image" class="d-block rounded w-50">
                    <div>
                        <div class="text-secondary txt-sm">{{np['created']}}</div>
                        <h4 class="fs-6">{{np['title']}}</h4>
                        <div class="d-flex gap-2 txt-sm align-items-center text-secondary">
                            <span class="iconify" data-icon="fa6-solid:eye"></span>
                            {{np['count_view']}}x dilihat
                        </div>
                    </div>
                </a>
            </div>
            {% endfor %}
            
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
{% endblock %}