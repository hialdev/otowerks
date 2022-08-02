{% extends "layouts/web.volt" %}

{% block content %}
<div class="container">
    <div class="rounded w-100 my-5 overflow-hidden position-relative" style="max-height: 20em; object-fit:cover">
        <img src="/assets/frontend/images/momen-pebalap-formula-e-jajal-jakarta-e-prix-international-circuit_169.jpeg" alt="" class="d-block w-100" style="object-fit:cover;object-position: center;">
        <div class="position-absolute d-flex justify-content-center align-items-center p-3 top-0 h-100 w-100 bg-dark bg-opacity-75">
            <h1 class="text-white">Hubungi Kami</h1>
        </div>
    </div>

    <div class="d-flex align-items-center gap-3 mb-2">
        <img src="/assets/frontend/images/decor.svg" alt="Dekor Image">
        <h2 class="m-0">E-Mail</h2>
    </div>
    <form action="" class="p-3 rounded bg-light my-3 mb-5">
        <input type="text" class="form-control mb-3" placeholder="Subject / Keperluan">
        <input type="text" class="form-control mb-3" placeholder="Nama">
        <div class="input-group mb-3">
            <input type="email" class="form-control" placeholder="your@email.com">
            <input type="number" class="form-control" placeholder="No. HP">
        </div>
        <textarea name="message" id="" cols="30" rows="10" class="form-control mb-3" placeholder="Hello, Ottowerks saya ingin.."></textarea>
        <button type="submit" class="btn btn-primary">Kirim</button>
    </form>

    <div class="d-flex align-items-center gap-3 mb-3">
        <img src="/assets/frontend/images/decor.svg" alt="Dekor Image">
        <h2 class="m-0">Social Media</h2>
    </div>
    <ul class="list-unstyled grid gap-2">
        <li class="g-col-12 g-col-md-6">
            <a href="" class="d-flex align-items-center gap-3 p-2 bg-light text-decoration-none text-secondary">
                <span class="iconify" data-icon="simple-icons:tiktok"></span>
                username ehem
                <span class="iconify ms-auto" data-icon="bi:arrow-right"></span>
            </a>
        </li>
        <li class="g-col-12 g-col-md-6">
            <a href="" class="d-flex align-items-center gap-3 p-2 bg-light text-decoration-none text-secondary">
                <span class="iconify" data-icon="entypo-social:youtube"></span>
                username ehem
                <span class="iconify ms-auto" data-icon="bi:arrow-right"></span>
            </a>
        </li>
        <li class="g-col-12 g-col-md-6">
            <a href="" class="d-flex align-items-center gap-3 p-2 bg-light text-decoration-none text-secondary">
                <span class="iconify" data-icon="brandico:facebook-rect"></span>
                username ehem
                <span class="iconify ms-auto" data-icon="bi:arrow-right"></span>
            </a>
        </li>
        <li class="g-col-12 g-col-md-6">
            <a href="" class="d-flex align-items-center gap-3 p-2 bg-light text-decoration-none text-secondary">
                <span class="iconify" data-icon="cib:twitter"></span>
                username ehem
                <span class="iconify ms-auto" data-icon="bi:arrow-right"></span>
            </a>
        </li>
        <li class="g-col-12 g-col-md-6">
            <a href="" class="d-flex align-items-center gap-3 p-2 bg-light text-decoration-none text-secondary">
                <span class="iconify" data-icon="teenyicons:instagram-solid"></span>
                username ehem
                <span class="iconify ms-auto" data-icon="bi:arrow-right"></span>
            </a>
        </li>
    </ul>
</div>
{% endblock %}