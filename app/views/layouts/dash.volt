<!DOCTYPE html>
<html
  lang="en"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Dashboard - Otowerks</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/assets/backend/img/ema-favicon.png" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="/assets/backend/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/assets/backend/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/assets/backend/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/assets/backend/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/assets/backend/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/assets/backend/vendor/libs/apex-charts/apex-charts.css" /> 

    <!-- Page CSS -->
    {% block css %}
    {% endblock %}

    <!-- Helpers -->
    <script src="/assets/backend/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/assets/backend/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
        
        {% include "backend/partials/sidebar.volt" %}
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

            {% include "backend/partials/header.volt" %}

            <!-- / Navbar -->

            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->
                {{ flash.output() }}
                {% block content %}
                {% endblock %}
                <!-- / Content -->

                <!-- Footer -->
                {% include "backend/partials/footer.volt" %}
                <!-- / Footer -->

                <div class="content-backdrop fade"></div>
            </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js /assets/backend/vendor/js/core.js -->
    <script src="/assets/backend/vendor/libs/jquery/jquery.js"></script>
    <script src="/assets/backend/vendor/libs/popper/popper.js"></script>
    <script src="/assets/backend/vendor/js/bootstrap.js"></script>
    <script src="/assets/backend/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="/assets/backend/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="/assets/backend/vendor/libs/apex-charts/apexcharts.js"></script>
    <script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>

    <!-- Page Script -->
    {% block js %}
    {% endblock %}

    <!-- Main JS -->
    <script src="/assets/backend/js/main.js"></script>
    <script src="/assets/backend/js/custom.js"></script>

    <!-- Page JS -->
    <script src="/assets/backend/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
