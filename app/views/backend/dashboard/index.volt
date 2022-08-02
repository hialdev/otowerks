{% extends "layouts/dash.volt" %}

{% block content %}
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <div class="p-2 rounded d-inline-flex align-items-center justify-content-center bg-primary text-white">
                                <span class="iconify" data-icon="bi:newspaper" style="width: 1.4em;height:1.4em"></span>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button
                                class="btn p-0"
                                type="button"
                                id="cardOpt4"
                                data-bs-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                            >
                                <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt4">
                                <a class="dropdown-item" href="{{url('garage/news')}}">Lihat</a>
                                <a class="dropdown-item" href="{{url('garage/news/add')}}">Tulis Baru</a>
                            </div>
                        </div>
                    </div>
                    <span class="d-block mb-1">Berita</span>
                    <h3 class="card-title text-nowrap mb-2 fw-bolder fs-1">{{count['news']}}</h3>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <div class="p-2 rounded d-inline-flex align-items-center justify-content-center bg-primary text-white">
                                <span class="iconify" data-icon="bi:play-circle-fill" style="width: 1.4em;height:1.4em"></span>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button
                                class="btn p-0"
                                type="button"
                                id="cardOpt4"
                                data-bs-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                            >
                                <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt4">
                                <a class="dropdown-item" href="{{url('garage/video')}}">View</a>
                                <a class="dropdown-item" href="{{url('garage/video/add')}}">Add New</a>
                            </div>
                        </div>
                    </div>
                    <span class="d-block mb-1">Videos</span>
                    <h3 class="card-title text-nowrap mb-2 fw-bolder fs-1">{{count['video']}}</h3>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <div class="p-2 rounded d-inline-flex align-items-center justify-content-center bg-primary text-white">
                                <span class="iconify" data-icon="ic:round-category" style="width: 1.4em;height:1.4em"></span>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button
                                class="btn p-0"
                                type="button"
                                id="cardOpt4"
                                data-bs-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                            >
                                <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt4">
                                <a class="dropdown-item" href="{{url('garage/category')}}">View</a>
                                <a class="dropdown-item" href="{{url('garage/category/add')}}">Add New</a>
                            </div>
                        </div>
                    </div>
                    <span class="d-block mb-1">Categories</span>
                    <h3 class="card-title text-nowrap mb-2 fw-bolder fs-1">{{count['category']}}</h3>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <div class="p-2 rounded d-inline-flex align-items-center justify-content-center bg-primary text-white">
                                <span class="iconify" data-icon="el:car" style="width: 1.4em;height:1.4em"></span>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button
                                class="btn p-0"
                                type="button"
                                id="cardOpt4"
                                data-bs-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                            >
                                <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt4">
                                <a class="dropdown-item" href="{{url('garage/type')}}">View</a>
                                <a class="dropdown-item" href="{{url('garage/type/add')}}">Add New</a>
                            </div>
                        </div>
                    </div>
                    <span class="d-block mb-1">Type</span>
                    <h3 class="card-title text-nowrap mb-2 fw-bolder fs-1">{{count['type']}}</h3>
                </div>
            </div>
        </div>
    </div>

    <div class="row py-3">
        <div class="col-12">
            <div class="d-flex mb-3 align-items-center justify-content-between">
                <h4># Berita Terbarumu</h4>
                <a href="{{url('garage/news/add')}}" class="btn btn-primary">Write New</a>
            </div>
        </div>
        
        {% for news in news_list %}    
        <div class="col-12 col-lg-6">
            <div class="card mb-4">
                <div class="row flex-column flex-md-row card-body p-2 py-3">
                    <div class="col-12 col-md-4 mb-3">
                        <img src="{{news['image']}}" alt="{{news['title']}} image" class="rounded w-100" style="max-height: 10em;object-fit: cover;">
                    </div>
                    <div class="col-12 col-md-8">
                        <div class="d-flex align-items-start">
                            <div>
                                <h6>{{news['title']}}</h6>
                                <p style="font-size:10px">{{news['created']}}</p>
                                <div class="d-flex flex-wrap align-items-center gap-2 mb-2">
                                    {% if news['code_status'] === "audit" %}
                                        <span class="badge bg-label-info">Auditing</span>
                                    {% elseif news['code_status'] === "wait" %}
                                        <span class="badge bg-label-warning">Waiting</span>
                                    {% elseif news['code_status'] === "publish" %}
                                        <span class="badge bg-label-success">Published</span>
                                    {% elseif news['code_status'] === "reject" %}
                                        <span class="badge bg-label-danger">Rejected</span>
                                    {% else %}
                                        <span class="badge bg-label-secondary">Drafted</span>
                                    {% endif %}
                                    <span class="badge bg-warning">{{news['type'].name}}</span>
                                    {% for category in news['categories'] %}
                                        <span class="badge bg-label-warning">{{category.name}}</span>
                                    {% endfor %}
                                </div>
                                <p class="lc lc-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, quam numquam laborum ea odio quos perferendis ut animi doloremque fuga minima neque natus earum labore, quidem vero eos, temporibus ipsa.</p>
                            </div>
                            <div>
                                <div class="dropdown">
                                    <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                        <i class="bx bx-dots-vertical-rounded"></i>
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="/garage/news/{{news['slug']}}" target="_blank"
                                            ><i class="bx bx-news me-1"></i> View</a
                                        >
                                        {% if news['code_status'] === "draft" %}
                                        <a class="dropdown-item modal-btn-ajukan" href="" data-bs-toggle="modal" data-bs-target="#modalAjukan" id="{{news['id']}}"
                                            ><i class="bx bx-send me-1"></i> Ajukan</a
                                        >
                                        {% elseif news['code_status'] === "wait" %}
                                        <a class="dropdown-item modal-btn-x" href="" data-bs-toggle="modal" data-bs-target="#modalTarik" id="{{news['id']}}"
                                            ><i class="bx bx-undo me-1"></i> Tarik</a
                                        >
                                        {% endif %}
                                        {% if news['code_status'] !== "audit" AND news['code_status'] !== "publish" %}
                                        <a class="dropdown-item" href="/garage/news/{{news['id']}}/edit"
                                            ><i class="bx bx-edit-alt me-1"></i> Edit</a
                                        >
                                        {% endif %}
                                        <a class="text-danger dropdown-item modal-btn" href="" data-bs-toggle="modal" data-bs-target="#modalCenter" id="{{news['id']}}" >
                                            <i class="bx bx-trash me-1"></i> Delete</a
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {% endfor %}
        
    </div>

    {# Modal ----- #}
    <div class="modal fade" id="modalTarik" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCenterTitle">Konfirmasi Tarik Berita</h5>
                    <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                    ></button>
                </div>
                <div class="modal-body">
                    <div class="text-wrap">Yakin ingin menarik berita ? Berita yang ditarik akan hilang dari halaman pengajuan tim Editorial.</div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                    Close
                </button>
                <a dash="/garage/news/" href="" class="btn btn-warning modal-x-act">Tarik</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalAjukan" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCenterTitle">Konfirmasi Ajukan Berita</h5>
                    <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                    ></button>
                </div>
                <div class="modal-body">
                    <div class="text-wrap">Berita anda akan diajukan ke tim Editorial, lalu tim editorial berhak menerbitkan, menolak, mengedit berita tersebut. dan diinformasikan melalui status berita.</div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                    Close
                </button>
                <a dash="/garage/news/" href="" class="btn btn-primary modal-aj-act">Ajukan</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCenterTitle">Yakin ingin menghapus berita ?</h5>
                    <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                    ></button>
                </div>
                <div class="modal-body">
                    <div class="text-wrap">Jika berita dihapus maka akan dihapus secara permanen, tidak ada backup yang dilakukan.</div class="text-wrap">
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                    Close
                </button>
                <a dash="/garage/news/" href="" class="btn btn-danger modal-del-act">Hapus</a>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}

{% block js %}
<script>
$('.modal-btn').click(function(){
    $('.modal-del-act').attr('href','')
    var id = $(this).attr('id');
    var dashUrl = $('.modal-del-act').attr('dash');
    var fullUrl = dashUrl+id+"/delete";

    $('.modal-del-act').attr('href',fullUrl);
});

$('.modal-btn-ajukan').click(function(){
    $('.modal-aj-act').attr('href','')
    var id = $(this).attr('id');
    var dashUrl = $('.modal-aj-act').attr('dash');
    var fullUrl = dashUrl+id+"/ajukan";

    $('.modal-aj-act').attr('href',fullUrl);
});

$('.modal-btn-x').click(function(){
    $('.modal-x-act').attr('href','')
    var id = $(this).attr('id');
    var dashUrl = $('.modal-x-act').attr('dash');
    var fullUrl = dashUrl+id+"/tarik";

    $('.modal-x-act').attr('href',fullUrl);
});
</script>
{% endblock %}