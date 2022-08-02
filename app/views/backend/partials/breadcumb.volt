<nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-style1">
        <li class="breadcrumb-item">
            <a href="{{url('garage/dashboard')}}" class="text-warning me-n2"><span class="iconify menu-icon" data-icon="ic:round-dashboard"></span></a>
        </li>
        <li class="breadcrumb-item">
            <a href="/garage/{{bread['url']}}" class="badge bg-warning text-white">{{bread['name']}}</a>
        </li>
        <li class="breadcrumb-item active">{{bread['active']}}</li>
    </ol>
</nav>