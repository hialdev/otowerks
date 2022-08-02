{% extends "layouts/dash.volt" %}

{% block css %}
<!-- Select2 -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
{% endblock %}

{% block content %}

<div class="container-xxl flex-grow-1 container-p-y">
    <form action="" method="POST" enctype="multipart/form-data">
        <div class="row">
            <div class="col-12 mb-2">
                
                {% include "backend/partials/breadcumb" with bread %}
                
                <div class="d-flex align-items-center justify-content-between">
                    <h2>Tulis Berita</h2>
                    <div>
                        <button class="btn btn-primary">Simpan</button>
                    </div>
                </div>
                <div>
                    <strong>Status : </strong>
                    <span class="badge bg-label-secondary">
                        Unsaved
                    </span>
                </div>
            </div>
            <div class="col-12 col-lg-9">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="title" class="form-label">Title News</label>
                            <input
                                type="text"
                                id="title"
                                name="title"
                                class="form-control"
                                placeholder="Judul Berita" required
                            />
                        </div>
                        <div class="d-flex gap-2">
                            <div class="mb-3 flex-grow-1">
                                <label for="title" class="form-label">ID YT Video (Optional)</label>
                                <input
                                    type="text"
                                    id="title"
                                    name="yt_id"
                                    class="form-control"
                                    placeholder="Link Embed Video"
                                />
                            </div>
                            <div class="mb-3">
                                <label for="title" class="form-label">Durasi (optional)</label>
                                <input
                                    type="text"
                                    id="title"
                                    name="duration"
                                    class="form-control"
                                    placeholder="02:32"
                                />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="excerpt" class="form-label">Excerpt / Singkat</label>
                            <textarea
                                id="excerpt"
                                name="excerpt"
                                class="form-control"
                                cols="20" rows="5" required
                            ></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="content" class="form-label">Content</label>
                            <textarea
                                id="content"
                                name="content"
                                class="form-control"
                                cols="20" rows="5"
                            ></textarea>
                        </div>
                    </div>
                </div>

                <div class="card mb-3">
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="meta-title" class="form-label">Meta Title (Optional)</label>
                            <input
                                type="text"
                                id="meta-title"
                                name="meta-title"
                                class="form-control"
                                placeholder="Judul Berita"
                            />
                        </div>
                        <div class="mb-3">
                            <label for="meta-desc" class="form-label">Meta Description (Optional)</label>
                            <textarea
                                id="meta-desc"
                                name="meta-desc"
                                class="form-control"
                                cols="20" rows="5"
                            ></textarea>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-3">
                <div class="card">
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="file-input" class="form-label">Cover Image</label>
                            <input
                                type="file"
                                accept="image/*"
                                id="file-input"
                                name="image"
                                class="form-control"
                                placeholder="Judul Berita"
                            />
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Fb0JfnooRfkiWm-ZNiYcNVs0_pnHZCfdFqaDuaq2swumeP49LZdT4I0fovUIq7CbM0k&usqp=CAU" alt="preview upload image" id="image-preview" class="d-block mt-2 w-100 rounded" style="max-height:10em;object-fit:cover;">
                        </div>
                        <div class="mb-3">
                            <label for="type" class="form-label">Type</label>
                            <select name="type" id="type" class="form-select" required>
                                <option>-- Pilih Type --</option>
                                {% for type in types %}
                                <option value="{{type.id}}">{{type.name}}</option>
                                {% endfor %}
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="categories" class="form-label">Category</label>
                            <select id="categories" class="form-select select-categories" name="category[]" multiple="multiple" required>
                                {% for ctg in category %}
                                <option value="{{ctg.id}}">{{ctg.name}}</option>
                                {% endfor %}
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-9 mt-3">
                <div class="mb-3">
                    <strong>Status : </strong>
                    <span class="badge bg-label-secondary">
                        Unsaved
                    </span>
                </div>
                <button type="submit" class="btn btn-primary w-100">
                    Simpan
                </button>
            </div>
        </div>
    </form>
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
        $('.select-categories').select2();
    })

    ClassicEditor
    .create( document.querySelector( '#content' ) )
    .catch( error => {
        console.error( error );
    } );
</script>
{% endblock %}