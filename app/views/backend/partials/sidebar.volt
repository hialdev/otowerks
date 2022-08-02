<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo">
        <a href="{{url('garage/dashboard')}}" class="app-brand-link">
            <img src="/assets/backend/img/logo.png" alt="Logo Otowerks" style="height:3em;width: auto;">
        </a>

        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>

    <div class="menu-inner-shadow"></div>

    <ul class="menu-inner py-1">
        <!-- Dashboard -->
        <li class="menu-item {{activate === 'dashboard' ? 'active' : ''}}">
            <a href="{{url('garage/dashboard')}}" class="menu-link">
                <span class="iconify menu-icon" data-icon="ic:round-dashboard"></span>
                <div data-i18n="Dashboard">Dashboard</div>
            </a>
        </li>

        <!-- Content Management -->
        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Content Management</span>
        </li>

        <li class="menu-item {{activate === 'banner' ? 'active' : ''}}">
            <a href="{{url('garage/banner')}}" class="menu-link">
                <span class="iconify menu-icon" data-icon="bi:image-fill"></span>
                <div data-i18n="Banner">Banner</div>
            </a>
        </li>

        <li class="menu-item {{activate === 'news' ? 'active' : ''}}">
            <a href="{{url('garage/news')}}" class="menu-link menu-toggle">
                <span class="iconify menu-icon" data-icon="bi:newspaper"></span>
                <div data-i18n="News">Berita</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{url('garage/news/add')}}" class="menu-link">
                        <div data-i18n="Add News">Tulis Baru</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/news/priority')}}" class="menu-link">
                        <div data-i18n="Add News">Berita Prioritas</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/news')}}" class="menu-link">
                        <div data-i18n="All News">Semua Beritamu</div><span class="badge bg-primary ms-2">{{newsStat['all']}}</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/news?status=wait')}}" class="menu-link">
                        <div data-i18n="All News">Berita Publish</div><span class="badge bg-label-success ms-2">{{newsStat['publish']}}</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/news?status=wait')}}" class="menu-link">
                        <div data-i18n="All News">Berita Pending</div><span class="badge bg-label-warning ms-2">{{newsStat['wait']}}</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/news?status=audit')}}" class="menu-link">
                        <div data-i18n="All News">Berita Audit</div><span class="badge bg-label-info ms-2">{{newsStat['audit']}}</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/news?status=reject')}}" class="menu-link">
                        <div data-i18n="All News">Berita Ditolak</div><span class="badge bg-label-danger ms-2">{{newsStat['reject']}}</span>
                    </a>
                </li>
            </ul>
        </li>
        
        <li class="menu-item {{activate === 'category' ? 'active' : ''}}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <span class="iconify menu-icon" data-icon="ic:round-category"></span>
                <div data-i18n="Categories">Categories</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{url('garage/category')}}" class="menu-link">
                        <div data-i18n="All Categories">All Categories</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/category/add')}}" class="menu-link">
                        <div data-i18n="Add Cateogry">Add New</div>
                    </a>
                </li>
            </ul>
        </li>

        <li class="menu-item {{activate === 'type' ? 'active' : ''}}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <span class="iconify menu-icon" data-icon="el:car"></span>
                <div data-i18n="Type">Type</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{url('garage/type')}}" class="menu-link">
                        <div data-i18n="All Services">Lihat Type</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/type/add')}}" class="menu-link">
                        <div data-i18n="Add Service">Tambah Type</div>
                    </a>
                </li>
            </ul>
        </li>
        
        <li class="menu-item {{activate === 'video' ? 'active' : ''}}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <span class="iconify menu-icon" data-icon="bi:play-circle-fill"></span>
                <div data-i18n="Videos">Videos</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{url('garage/video')}}" class="menu-link">
                        <div data-i18n="All Videos">All Videos</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/video/add')}}" class="menu-link">
                        <div data-i18n="Add New">Add New</div>
                    </a>
                </li>
            </ul>
        </li>

        <li class="menu-item {{activate === 'sosmed' ? 'active' : ''}}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <span class="iconify menu-icon" data-icon="entypo:chat"></span>
                <div data-i18n="Social Media">Social Media</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{url('garage/sosmed')}}" class="menu-link">
                        <div data-i18n="All Social Media">All Social Media</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/sosmed/add')}}" class="menu-link">
                        <div data-i18n="Add New">Add New</div>
                    </a>
                </li>
            </ul>
        </li>

        <li class="menu-item {{activate === 'heading' ? 'active' : ''}}">
            <a href="{{url('garage/heading')}}" class="menu-link">
                <span class="iconify menu-icon" data-icon="ic:outline-text-fields"></span>
                <div data-i18n="Headings">Headings</div>
            </a>
        </li>

        <li class="menu-item {{activate === 'notification' ? 'active' : ''}}">
            <a href="{{url('garage/notification')}}" class="menu-link">
                <span class="iconify menu-icon" data-icon="bxs:bell"></span>
                <div data-i18n="Notification">Notification</div>
            </a>
        </li>

        <!-- User Management -->
        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">User Management</span>
        </li>

        <li class="menu-item {{activate === 'users' ? 'active' : ''}}">
            <a href="{{url('garage/users')}}" class="menu-link">
                <span class="iconify menu-icon" data-icon="fa-solid:users"></span>
                <div data-i18n="Users">Users</div>
            </a>
        </li>

        <li class="menu-item {{activate === 'role' ? 'active' : ''}}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <span class="iconify menu-icon" data-icon="fa-solid:id-card"></span>
                <div data-i18n="Roles">Roles</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{url('garage/role')}}" class="menu-link">
                        <div data-i18n="All Roles">All Roles</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/role/add')}}" class="menu-link">
                        <div data-i18n="Add New">Add New</div>
                    </a>
                </li>
            </ul>
        </li>

        <!-- Site Management -->
        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Site Management</span>
        </li>

        <li class="menu-item {{activate === 'email' ? 'active' : ''}}">
            <a href="{{url('garage/email')}}" class="menu-link">
                <span class="iconify menu-icon" data-icon="ic:round-email"></span>
                <div data-i18n="E-Mails">E-Mails</div>
            </a>
        </li>

        <li class="menu-item {{activate === 'footer' ? 'active' : ''}}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <span class="iconify menu-icon" data-icon="fontisto:credit-card"></span>
                <div data-i18n="Account Settings">Footer</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{url('garage/footer#1')}}" class="menu-link">
                        <div data-i18n="Notifications">Footer Link 1</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/footer#2')}}" class="menu-link">
                        <div data-i18n="Account">Footer Link 2</div>
                    </a>
                </li>
            </ul>
        </li>

        <li class="menu-item {{activate === 'settings' ? 'active' : ''}}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <span class="iconify menu-icon" data-icon="uiw:setting"></span>
                <div data-i18n="Settings">Settings</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{url('garage/settings#logo')}}" class="menu-link">
                        <div data-i18n="Logo & Favicon">Logo & Favicon</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/settings#site-desc')}}" class="menu-link">
                        <div data-i18n="Site Desc">Site Description</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/settings#contact')}}" class="menu-link">
                        <div data-i18n="Location">Contact</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{url('garage/settings#credit')}}" class="menu-link">
                        <div data-i18n="Credit Footer">Credit</div>
                    </a>
                </li>
            </ul>
        </li>
        
    </ul>
</aside>