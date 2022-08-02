{% extends "layouts/dash.volt" %}

{% block content %}
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col-12 mb-3">
            <div class="d-flex mb-3 align-items-center justify-content-between">
                <h2 class="m-0">Pengajuan Berita</h2>
                <a href="{{url('garage/news/add')}}" class="btn btn-primary">Tulis Berita</a>
            </div>
            <form action="">
                <input type="text" name="q" value="{{query['search']}}" class="form-control mb-1" placeholder="Cari berita..">
                <div class="d-flex align-items-center justify-content-between">
                    <div>
                        <select name="status" id="" class="form-select">
                            <option value="" {{query['status'] == "" ?'selected':''}}>Semua Status</option>
                            <option value="wait" {{query['status'] == "wait" ?'selected':''}}>Waiting</option>
                            <option value="audit" {{query['status'] == "audit" ?'selected':''}}>Auditing</option>
                            <option value="reject" {{query['status'] == "reject" ?'selected':''}}>Reject</option>
                        </select>
                    </div>
                    <div class='ms-1 me-auto'>
                        <select name="uid" id="" class="form-select">
                            <option value="">Semua User</option>
                            {% for user in users %}
                                <option value="{{user.id}}" {{query['user'] == user.id ? 'selected':''}}>{{user.name}}</option>
                            {% endfor %}
                        </select>
                    </div>
                    <button class="btn btn-primary">Cari</button>
                </div>
            </form>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="table-responsive text-nowrap">
                    {% if news_list.total_items > 0 %}
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Title</th>
                                <th>Yt_id</th>
                                <th>Status</th>
                                <th>Type</th>
                                <th>Category</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">

                            {% for news in news_list.getItems() %}
                            <tr class="border-bottom">
                                <td class="border-0">
                                    <img src="{{news['image']}}" alt="Image {{news['title']}}" class="d-block rounded" style="height:4em;width:6em;object-fit:cover;">
                                </td>
                                <td class="border-0">
                                    <div class="d-flex align-items-center mb-1 gap-2">
                                        <img src="{{news['writer'].image !== null ? news['writer'].image : 'https://cdn.dribbble.com/users/230875/screenshots/12078079/media/1aab4f168be4969bd7f99d3734b71261.jpg?compress=1&resize=400x300&vertical=top' }}" alt="" class="d-block rounded-circle" style="width:2em;height:2em;object-fit:cover;">
                                        <div class="fw-bold">{{news['writer'].name}}</div>
                                    </div>
                                    <div class="text-wrap">{{news['title']}}</div>
                                    <span class="text-secondary" style="font-size: 12px;">{{news['created']}}</span>
                                </td>
                                <td class="border-0">
                                    <div>{{news['yt_id'] !== null ? news['yt_id'] : '-'}}</div>
                                    <div><strong>{{news['duration'] !== null ? news['duration'] : '-'}}</strong></div>
                                </td>
                                <td class="border-0">
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
                                </td>
                                <td class="border-0"><span class="badge bg-warning">Motor</span></td>
                                <td class="border-0 text-wrap">
                                    {% for category in news['categories'] %}
                                        <span class="badge bg-label-warning">{{category.name}}</span>
                                    {% endfor %}
                                </td>
                                <td class="border-0">
                                    <div class="dropdown">
                                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                            <i class="bx bx-dots-vertical-rounded"></i>
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="/garage/news/{{news['slug']}}" target="_blank"
                                                ><i class="bx bx-news me-1"></i> View</a
                                            >
                                            <a class="dropdown-item" href="/garage/news/{{news['id']}}/edit"
                                                ><i class="bx bx-edit-alt me-1"></i> Edit</a
                                            >
                                            <a class="text-danger dropdown-item modal-btn" href="" data-bs-toggle="modal" data-bs-target="#modalCenter" id="{{news['id']}}" >
                                                <i class="bx bx-trash me-1"></i> Delete</a
                                            >
                                            <hr>
                                            {% if news['code_status'] !== "audit" %}
                                            <a class="bg-label-info dropdown-item modal-btn-x" href="" data-bs-toggle="modal" data-bs-target="#modalTarik" id="{{news['id']}}"
                                                ><i class="bx bx-scan me-1"></i> Audit</a
                                            >
                                            {% endif %}
                                            {% if news['code_status'] !== "publish" %}
                                            <a class="bg-label-success dropdown-item modal-btn-pub" href="" data-bs-toggle="modal" data-bs-target="#modalPublish" id="{{news['id']}}" >
                                                <i class="bx bx-paper-plane me-1"></i> Publish</a
                                            >
                                            {% endif %}
                                            {% if news['code_status'] !== "reject" AND news['code_status'] !== "publish" %}
                                            <a class="bg-label-danger dropdown-item modal-btn-rej" href="/garage/news/{{news['id']}}/reject" >
                                                <i class="bx bx-x-circle me-1"></i> Reject</a
                                            >
                                            {% endif %}
                                            
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            {% endfor %}

                        </tbody>
                    </table>
                    
                    {# Modal ----- #}
                    <div class="modal fade" id="modalTarik" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="modalCenterTitle">Konfirmasi Audit Berita</h5>
                                    <button
                                        type="button"
                                        class="btn-close"
                                        data-bs-dismiss="modal"
                                        aria-label="Close"
                                    ></button>
                                </div>
                                <div class="modal-body">
                                    <div class="text-wrap">Yakin ingin mengaudit berita ? Status berita akan menjadi auditing, tidak menjadi terpublish.</div>
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                    Close
                                </button>
                                <a dash="/garage/news/" href="" class="btn btn-info modal-x-act">Audit</a>
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
                    <div class="modal fade" id="modalPublish" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="modalCenterTitle">Konfirmasi Terbitkan Berita</h5>
                                    <button
                                        type="button"
                                        class="btn-close"
                                        data-bs-dismiss="modal"
                                        aria-label="Close"
                                    ></button>
                                </div>
                                <div class="modal-body">
                                    <div class="text-wrap">Berita akan diterbitkan secara umum.</div>
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                    Close
                                </button>
                                <a dash="/garage/news/" href="" class="btn btn-success modal-pub-act">Publish</a>
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
                                    <div class="text-wrap">Jika berita dihapus maka akan dihapus secara permanen, tidak ada backup yang dilakukan.</div>
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

                    <div class="p-3">
                        <p>{{news_list.total_items <= news_list.limit ? news_list.total_items : news_list.limit*news_list.current}} of {{news_list.total_items}} items</p>
                        <nav aria-label="Page navigation">
                            <ul class="pagination pagination-md">
                                {% if news_list.total_items > news_list.limit %}
                                    {% for i in 1..news_list.last %}
                                        <li class="page-item {{i === news_list.current ? 'active' : ''}}">
                                            <a class="page-link" href="/garage/news?page={{i}}">{{i}}</a>
                                        </li>
                                    {% endfor %}
                                {% endif %}
                            </ul>
                        </nav>
                    </div>
                    {% else %}
                        <div class="card">
                            <div class="text-center card-body">Ooops.. Tidak ada data untuk ditampilkan.</div>
                        </div>
                    {% endif %}
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}

{% block js %}
<script type="text/javascript">
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
    var fullUrl = dashUrl+id+"/audit";

    $('.modal-x-act').attr('href',fullUrl);
});

$('.modal-btn-pub').click(function(){
    $('.modal-pub-act').attr('href','')
    var id = $(this).attr('id');
    var dashUrl = $('.modal-pub-act').attr('dash');
    var fullUrl = dashUrl+id+"/publish";
    $('.modal-pub-act').attr('href',fullUrl);
});

</script>
{% endblock %}