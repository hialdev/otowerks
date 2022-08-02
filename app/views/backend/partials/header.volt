<nav
    class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme shadow-none"
    style="background-color: transparent !important;"
    id="layout-navbar">
    <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
    <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
        <i class="bx bx-menu bx-sm"></i>
    </a>
    </div>

    

    <ul class="navbar-nav flex-row align-items-center ms-auto">
        <!-- Place this tag where you want the button to render. -->

        <li class="nav-item navbar-dropdown dropdown me-3">
            <a class="nav-link btn btn-primary btn-icon rounded-pill dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                <i class="bx bx-bell"></i>
            </a>
                
            <ul class="dropdown-menu dropdown-menu-end">
                <li class="border-bottom bg-label-warning" style="min-width: 25em;">
                    <a class="dropdown-item w-100" href="">
                        <h6 class="fw-bold m-0 mb-1">Title Notification</h6>
                        <small>Kamis, 22 Juni 2022</small>
                        <p class="m-0 text-wrap fs-6 lc lc-2">Lorem ipsum dolor sit amet consectetur adipisicing elit. A incidunt aliquam dolorem dicta asperiores odio voluptas quo.</p>
                    </a>
                </li>
                <li class="border-bottom" style="min-width: 25em;">
                    <a class="dropdown-item w-100" href="">
                        <h6 class="fw-bold m-0 mb-1">Title Notification</h6>
                        <small>Kamis, 22 Juni 2022</small>
                        <p class="m-0 text-wrap fs-6 lc lc-2">Lorem ipsum dolor sit amet consectetur adipisicing elit. A incidunt aliquam dolorem dicta asperiores odio voluptas quo.</p>
                    </a>
                </li>
                <li class="text-center bg-primary">
                    <a href="./notification.html" class="text-white p-3">Lihat Semua</a>
                </li>
            </ul>
        </li>
        <!-- User -->
        <li class="nav-item navbar-dropdown dropdown-user dropdown shadow rounded-circle">
            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                <div class="avatar avatar-online">
                    <img src="/assets/backend/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                </div>
            </a>
            
            <ul class="dropdown-menu dropdown-menu-end">
                <li>
                <a class="dropdown-item" href="#">
                    <div class="d-flex">
                        <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                                <img src="/assets/backend/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                        </div>
                        <div class="flex-grow-1">
                            <span class="fw-semibold d-block">John Doe</span>
                            <small class="text-muted">Admin</small>
                        </div>
                    </div>
                </a>
                </li>
                <li>
                    <div class="dropdown-divider"></div>
                </li>
                <li>
                    <a class="dropdown-item" href="{{url('garage/my-profile')}}">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                    </a>
                </li>
                <li>
                    <a class="dropdown-item text-danger" href="{{url('garage/logout')}}">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle text-danger">Log Out</span>
                    </a>
                </li>
            </ul>
        </li>
        <!--/ User -->
    </ul>
</nav>