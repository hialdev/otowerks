{% extends "layouts/dash.volt" %}

{% block css %}

{% endblock %}

{% block content %}
<div class="container py-5 px-0">
    <div class="row">
        <div class="col-12">
            <div class="mb-4 border-bottom p-3">
                <div class="mb-3">
                    <div class="fw-bold">Status : 
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
                    </div>
                </div>
                {% if news['code_status'] === 'reject' %}
                <div class="alert alert-warning rounded">
                    <strong>Berita anda ditolak</strong>, dengan alasan : <br>
                    {{news['reject_note']}} <br>
                    <hr class="text-warning">
                    <small>*perbaiki berita anda, dan ajukan kembali.</small>
                </div>
                <div>
                </div>
                {% endif %}
                
                <div>
                    <a href="/garage/news/{{news['id']}}/ajukan" class="btn btn-primary fw-bold me-2">Ajukan Berita</a>
                    <a href="/garage/news/{{news['id']}}/edit" class="btn btn-info fw-bold">Edit Berita</a>
                </div>
            </div>
            <div class="px-3">
                <div class="mb-4">
                    {% if news['yt_id'] !== null %}
                        <iframe class="youtube w-100 rounded" style="min-height:35em;max-height:35em;" src="https://www.youtube.com/embed/{{news['yt_id']}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    {% else %}  
                        <img src="{{news['image']}}" alt="Cover Image" class="d-block rounded w-100" style="max-height:35em;object-fit:cover;">
                    {% endif %}
                </div>
                <div class="text-secondary txt-sm">{{news['created']}}</div>
                <div class="d-flex align-items-center gap-2 mt-3 mb-2">
                    <div class="badge bg-warning">{{news['type'].name}}</div>
                    {% for category in news['categories'] %}
                        <div class="badge bg-label-warning">{{category.name}}</div>
                    {% endfor %}
                </div>
                <h1 class="fs-1">{{news['title']}}</h1>
            </div>
            <div class="content rounded p-3 bg-white mt-4">
                {{news['content']}}
            </div>
        </div>
    </div>
</div>
{% endblock %}

{% block js %}

{% endblock %}