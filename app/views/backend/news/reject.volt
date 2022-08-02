{% extends "layouts/dash.volt" %}

{% block content %}
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col-12 mb-3">
            <h2 class="m-0">Tolak Berita</h2>
        </div>
        <div class="col-12">
            <div class="card mb-3">
                <div class="card-body d-flex gap-2 align-items-center">
                    <img src="{{news['image']}}" alt="{{news['title']}} image" class="d-block rounded" style="max-width:10em;object-fit:cover">
                    <div>
                        <small class="text-secondary">{{news['created']}}</small>
                        <h5>{{news['title']}}</h5>
                        {% for ctg in news['categories'] %}
                            <span class="badge bg-label-warning">{{ctg.name}}</span>
                        {% endfor %}
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <form method="POST">
                        <div class="mb-3">
                            <label for="alasan" class="form-label">Alasan Penolakan :</label>
                            <textarea name="alasan" id="alasan" cols="30" rows="10" class="form-control"></textarea>
                        </div>
                        <div class="float-end">
                            <a href="/garage/news/offer" class="btn btn-outline-secondary">Batal</a>
                            <button type="submit" class="btn btn-danger">Tolak</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}
