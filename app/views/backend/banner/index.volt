{% extends "layouts/dash.volt" %}

{% block content %}
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col-12 mb-3">
            <h2>Manage Banner</h2>
        </div>
        <div class="col-12 col-lg-6 mb-3">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h4 class="m-0">News Banner</h4>
                    <button type="button" class="btn p-2 fs-3 text-info" data-bs-toggle="modal" data-bs-target="#modalCenter">
                        <span class="iconify" data-icon="clarity:note-edit-solid"></span>
                    </button>
                </div>
                <div class="card-body">
                    <img src="/assets/backend/img/backgrounds/18.  jpg" alt="" class="d-block w-100">
                </div>
            </div>
  
            <!-- Modal -->
            <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <form action="">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalCenterTitle">Atur Banner : News</h5>
                            <button
                                type="button"
                                class="btn-close"
                                data-bs-dismiss="modal"
                                aria-label="Close"
                            ></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="file-input" class="form-label">Upload Image</label>
                                <input class="form-control" type="file" id="file-input" />
                            </div>
                            <div class="rounded overflow-hidden">
                                <img src="/assets/backend/img/backgrounds/18.jpg" alt="" class="d-block w-100" id="image-preview">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                Batal
                            </button>
                            <button type="button" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-6 mb-3">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h4 class="m-0">Videos Banner</h4>
                    <button type="button" class="btn p-2 fs-3 text-info" data-bs-toggle="modal" data-bs-target="#modalCenter">
                        <span class="iconify" data-icon="clarity:note-edit-solid"></span>
                    </button>
                </div>
                <div class="card-body">
                    <img src="/assets/backend/img/backgrounds/18.jpg" alt="" class="d-block w-100">
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <form action="">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalCenterTitle">Atur Banner : News</h5>
                            <button
                                type="button"
                                class="btn-close"
                                data-bs-dismiss="modal"
                                aria-label="Close"
                            ></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="file-input" class="form-label">Upload Image</label>
                                <input class="form-control" type="file" id="file-input" />
                            </div>
                            <div class="rounded overflow-hidden">
                                <img src="/assets/backend/img/backgrounds/18.jpg" alt="" class="d-block w-100" id="image-preview">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                Batal
                            </button>
                            <button type="button" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-12 col-lg-6 mb-3">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h4 class="m-0">Contact Banner</h4>
                    <button type="button" class="btn p-2 fs-3 text-info" data-bs-toggle="modal" data-bs-target="#modalCenter">
                        <span class="iconify" data-icon="clarity:note-edit-solid"></span>
                    </button>
                </div>
                <div class="card-body">
                    <img src="/assets/backend/img/backgrounds/18.jpg" alt="" class="d-block w-100">
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <form action="">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalCenterTitle">Atur Banner : News</h5>
                            <button
                                type="button"
                                class="btn-close"
                                data-bs-dismiss="modal"
                                aria-label="Close"
                            ></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="file-input" class="form-label">Upload Image</label>
                                <input class="form-control" type="file" id="file-input" />
                            </div>
                            <div class="rounded overflow-hidden">
                                <img src="/assets/backend/img/backgrounds/18.jpg" alt="" class="d-block w-100" id="image-preview">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                Batal
                            </button>
                            <button type="button" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-12 col-lg-6 mb-3">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h4 class="m-0">About Banner</h4>
                    <button type="button" class="btn p-2 fs-3 text-info" data-bs-toggle="modal" data-bs-target="#modalCenter">
                        <span class="iconify" data-icon="clarity:note-edit-solid"></span>
                    </button>
                </div>
                <div class="card-body">
                    <img src="/assets/backend/img/backgrounds/18.jpg" alt="" class="d-block w-100">
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <form action="">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalCenterTitle">Atur Banner : News</h5>
                            <button
                                type="button"
                                class="btn-close"
                                data-bs-dismiss="modal"
                                aria-label="Close"
                            ></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="file-input" class="form-label">Upload Image</label>
                                <input class="form-control" type="file" id="file-input" />
                            </div>
                            <div class="rounded overflow-hidden">
                                <img src="/assets/backend/img/backgrounds/18.jpg" alt="" class="d-block w-100" id="image-preview">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                Batal
                            </button>
                            <button type="button" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
{% endblock %}