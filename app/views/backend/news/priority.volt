{% extends "layouts/dash.volt" %}

{% block css %}
<!-- Select2 -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
{% endblock %}

{% block content %}
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col-12 mb-3">
            <h2>Manage Priority News</h2>
        </div>

        <div class="col-12 col-lg-6 mb-3">
            <form action="" method="POST">
                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <h4 class="m-0">Berita Utama</h4>
                        <button type="submit" class="btn btn-primary">
                            Simpan
                        </button>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="headline" class="form-label">Pilih Berita Headline (max.5)</label>
                            <select id="headline" class="form-select select-headline" name="headline[]" multiple="multiple" required>
                                {% for nh in news_list %}
                                    <option value="{{nh['id']}}">{{nh['title']}}</option>
                                {% endfor %}
                            </select>
                        </div>
                        <input type="hidden" name="form" value="headline">
                        <div class="mb-2">*maximal 5 berita</div>
                        <div>
                            {% for hn in headline %}
                            <a href="/garage/news/{{hn['slug']}}" class="d-flex align-items-center gap-2 mb-2 text-dark" target="_blank">
                                <img src="{{hn['image']}}" alt="{{hn['title']}} image" class="d-block rounded" style="width:7em;height:5em;">
                                <div>
                                    <div class="fs-6 mb-1 fw-bold lc lc-2">{{hn['title']}}</div>
                                    <div><small>{{hn['created']}}</small></div>
                                </div>
                            </a>
                            {% endfor %}
                            
                        </div>
                    </div>
                </div>
            </form>

        </div>

        <div class="col-12 col-lg-6 mb-3">
            <form action="" method="POST">
                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <h4 class="m-0">Berita Featured</h4>
                        <button type="submit" class="btn btn-primary">
                            Simpan
                        </button>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="featured" class="form-label">Pilih Berita Featured (max.6)</label>
                            <select id="featured" class="form-select select-featured" name="featured[]" multiple="multiple" required>
                                {% for nf in news_list %}
                                    <option value="{{nf['id']}}">{{nf['title']}}</option>
                                {% endfor %}
                            </select>
                        </div>
                        <input type="hidden" name="form" value="featured">
                        <div class="mb-2">*maximal 6 berita</div>
                        <div>
                            {% for fn in featured %}
                            <a href="/garage/news/{{fn['slug']}}" class="d-flex align-items-center gap-2 mb-2 text-dark" target="_blank">
                                <img src="{{fn['image']}}" alt="{{fn['title']}} image" class="d-block rounded" style="width:7em;height:5em;">
                                <div>
                                    <div class="fs-6 mb-1 fw-bold lc lc-2">{{fn['title']}}</div>
                                    <div><small>{{fn['created']}}</small></div>
                                </div>
                            </a>
                            {% endfor %}
                            
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>

</div>
{% endblock %}

{% block js %}
<!-- Select2 -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<!-- CKEDITOR -->
<script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/classic/ckeditor.js"></script>  

<!-- Custom in Page -->
<script>
    $(document).ready(function() {
        $('.select-headline').select2({
            maximumSelectionLength: 5,
            placeholder: 'Cari judul dan pilih',
        });

        $('.select-featured').select2({
            maximumSelectionLength: 6,
            placeholder: 'Cari judul dan pilih',
        });
    });
</script>
{% endblock %}