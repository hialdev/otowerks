{% extends "layouts/web.volt" %}

{% block content %}
<div class="bg-light">
    <div class="container py-5 px-0">
        <div class="grid">
            <div class="g-col-12 g-col-lg-7">
                <div class="px-3">
                    <ul class="rounded-pill d-flex align-items-center gap-2 mb-3 list-unstyled oto-breadcumb">
                        <li class="d-inline-flex align-items-center justify-content-center"><span class="iconify" data-icon="ant-design:home-filled"></span></li>
                        <li><a href="{{url('news')}}" class="text-dark">News</a></li>
                        <li class="lc lc-1 fw-bold">{{news['title']}}</li>
                    </ul>
                    <div class="mb-4">
                        <img src="{{news['image']}}" alt="{{news['title']}} Image" class="d-block rounded w-100">
                    </div>
                    <div class="text-secondary txt-sm">{{news['created']}}</div>
                    <div class="d-flex align-items-center gap-2 mt-3">
                        <a href="/news?t={{news['type'].slug}}" class="badge bg-warning text-dark">{{news['type'].name}}</a>
                        {% for ctg in news['categories'] %}
                            <a href="/news?c={{ctg.slug}}" class="badge bg-light text-dark">{{ctg.name}}</a>
                        {% endfor %}
                    </div>
                    <h1 class="fs-1">{{news['title']}}</h1>
                </div>
                <div class="content rounded p-3 bg-white mt-4">
                    {{news['content']}}
                    <div class="rounded shadow-sm p-3 my-4">
                        <strong>Jelajahi Juga : </strong><a href="" class="oto-underline">Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, soluta, ex neque aperiam quidem inventore nulla voluptas eius ipsam quisquam, a velit. Hic rem rerum ex enim ipsum, doloribus temporibus.</a>
                    </div>
                </div>
            </div>
            <div class="g-col-12 g-col-lg-5 px-3">
                <div class="p-3 rounded bg-white mb-3">
                    <div class="d-flex align-items-center gap-3 mb-3">
                        <img src="/assets/frontend/images/profile.png" alt="" class="rounded" style="width:5em;height:5em">
                        <div>
                            <h3>Wisnu Aji Santoso</h3>
                            <div class="d-flex align-items-center gap-2 mt-2 foot-sosmed">
                                <a href="" class="text-decoration-none text-secondary d-flex align-items-center justify-content-center"><span class="iconify" data-icon="brandico:facebook-rect"></span></a>
                                <a href="" class="text-decoration-none text-secondary d-flex align-items-center justify-content-center"><span class="iconify" data-icon="teenyicons:instagram-solid"></span></a>
                                <a href="" class="text-decoration-none text-secondary d-flex align-items-center justify-content-center"><span class="iconify" data-icon="fa6-brands:twitter"></span></a>
                            </div>
                        </div>
                    </div>
                    <p class="m-0 text-secondary mb-2">
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque praesentium perferendis eius exercitationem ullam sequi.
                    </p>
                    <div class="pb-4">
                        <a href="{{url('penulis/username')}}" class="text-dark mb-3 d-inline-flex float-end align-items-center gap-2 btn-oto-more">
                            Selengkapnya
                            <span class="iconify" data-icon="bi:arrow-right-circle-fill"></span>
                        </a>
                    </div>
                </div>

                <div>
                    <h4>Video Terbaru</h4>
                    <hr>
                    {% for vid in lastvideo %}
                    <a href="/video/{{vid.slug}}" class="text-decoration-none text-dark d-flex align-items-start gap-3 mb-3">
                        <img src="http://img.youtube.com/vi/{{vid.yt_id}}/0.jpg" alt="Thumbnail {{vid.title}}" class="w-50 d-block rounded shadow-sm">
                        <div>
                            <div class="d-flex gap-1 flex-column">
                                <div class="d-inline-flex gap-2 align-items-center txt-sm">
                                    <span class="iconify txt-sm text-primary" data-icon="bi:play-circle-fill"></span>
                                    <strong>{{vid.duration}}</strong>
                                </div>
                                <span class="text-secondary txt-sm">{{vid.tanggal(vid.created)}}</span>
                            </div>
                            <h4 class="fs-6">
                                {{vid.title}}
                            </h4>
                            <div class="lc lc-2 text-secondary mb-0" style="font-size: 14px">{{vid.excerpt}}</div>
                        </div>
                    </a>
                    {% endfor %}
                    
                    <a href="{{url('video')}}" class="text-dark mb-3 d-inline-flex align-items-center gap-2 btn-oto-more">
                        Video Lainnya
                        <span class="iconify" data-icon="bi:arrow-right-circle-fill"></span>
                    </a>
                </div>
                <div>
                    <h4>Berita Lainnya</h4>
                    <hr>
                    {% for news in morenews %}
                    <a href="/news/{{news['slug']}}" class="text-decoration-none text-dark d-flex align-items-start mb-3 gap-3">
                        <img src="{{news['image']}}" alt="{{news['title']}}" class="w-50 d-block rounded shadow-sm">
                        <div>
                            <div class="text-dark txt-sm"><i>{{news['created']}}</i></div>
                            <div style="font-size:14px" class="my-2">
                                <span class="badge bg-warning text-dark">{{news['type'].name}}</span>
                                {% for ctg in news['categories'] %}
                                    <span class="badge bg-secondary text-white">{{ctg.name}}</span>
                                {% endfor %}
                            </div>
                            <h4 class="fs-6">
                                {{news['title']}}
                            </h4>
                            <p class="lc lc-3 text-secondary" style="font-size: 14px">{{news['excerpt']}}</p>
                        </div>
                    </a>
                    {% endfor %}
                    
                    <a href="./news.html" class="text-dark mb-3 d-inline-flex align-items-center gap-2 btn-oto-more">
                        Semua Berita
                        <span class="iconify" data-icon="bi:arrow-right-circle-fill"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}