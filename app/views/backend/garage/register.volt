{% extends "layouts/misc.volt" %}

{% block content %}
<div class="container">
    <div class="row align-items-start justify-content-center vh-100 pt-5">
        <div class="col-12 col-md-9 col-lg-4">
            <a href="{{url('/')}}" class="text-dark mb-3 fs-6 d-flex align-items-center gap-2">
                <span class="iconify" data-icon="bi:arrow-left-circle-fill"></span>
                Back to Home
            </a>
            <!-- Register -->
            <div class="card">
                <div class="card-body">
                    <!-- Logo -->
                    <div class="app-brand justify-content-center">
                        <img src="/assets/backend/img/logo.png" alt="" class="d-block mb-4">
                    </div>
                    <!-- /Logo -->
                    <h4 class="mb-2 fw-bold">Join and Be Writer in Otowerks! 👋</h4>
                    <p class="mb-4">Isi data dengan benar, dan dapatkan penghasilan tambahan</p>

                    <form id="formAuthentication" class="mb-3" action="index.html" method="POST">
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input
                            type="text"
                            class="form-control"
                            id="username"
                            name="username"
                            placeholder="Enter your username"
                            autofocus
                            />
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="Enter your email" />
                        </div>
                        <div class="mb-3 form-password-toggle">
                            <label class="form-label" for="password">Password</label>
                            <div class="input-group input-group-merge">
                            <input
                                type="password"
                                id="password"
                                class="form-control"
                                name="password"
                                placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                aria-describedby="password"
                            />
                            <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="terms-conditions" name="terms" />
                            <label class="form-check-label" for="terms-conditions">
                                I agree to
                                <a href="javascript:void(0);">privacy policy & terms</a>
                            </label>
                            </div>
                        </div>
                        <button class="btn btn-primary d-grid w-100">Sign up</button>
                    </form>

                    <p class="text-center">
                        <span>Already have an account?</span>
                        <a href="auth-login-basic.html">
                            <span>Sign in</span>
                        </a>
                    </p>
                </div>
            </div>
            <!-- /Register -->
        </div>
    </div>
</div>

<script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>
{% endblock %}