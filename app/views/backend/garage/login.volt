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
                    <h4 class="mb-2 fw-bold">Welcome to Otowerks! 👋</h4>
                    <p class="mb-4">Please sign-in to your account to join Our Garage!</p>

                    <form id="formAuthentication" class="mb-3" action="index.html" method="POST">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email or Username</label>
                        <input
                        type="text"
                        class="form-control"
                        id="email"
                        name="email-username"
                        placeholder="Enter your email or username"
                        autofocus
                        />
                    </div>
                    <div class="mb-3 form-password-toggle">
                        <div class="d-flex justify-content-between">
                        <label class="form-label" for="password">Password</label>
                        <a href="auth-forgot-password-basic.html">
                            <small>Forgot Password?</small>
                        </a>
                        </div>
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
                        <input class="form-check-input" type="checkbox" id="remember-me" />
                        <label class="form-check-label" for="remember-me"> Remember Me </label>
                        </div>
                    </div>
                    <div class="mb-3">
                        <button class="btn btn-primary d-grid w-100" type="submit">Sign in</button>
                    </div>
                    </form>

                    <p class="text-center">
                    <span>New on our platform?</span>
                    <a href="auth-register-basic.html">
                        <span>Create an account</span>
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