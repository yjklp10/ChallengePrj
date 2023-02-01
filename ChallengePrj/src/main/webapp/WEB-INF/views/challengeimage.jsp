<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@include file="./include/header.jsp" %>
<!DOCTYPE html>


<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
      <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.css"/>
       <style type="text/css">
        a[data-fancybox] img {
  cursor: zoom-in;
}

.fancybox__container {
  flex-direction: column-reverse;

  --fancybox-color: #0d0c22;
  --fancybox-bg: #fff;

  --fancybox-thumbs-width: 80px;
  --fancybox-thumbs-ratio: 4 / 3;

  --carousel-button-bg: #f3f3f4;
  --carousel-button-border-radius: 8px;

  --carousel-button-svg-width: 20px;
  --carousel-button-svg-height: 20px;

  --carousel-button-svg-stroke-width: 1.5;
  --carousel-button-svg-filter: none;
}

.carousel__button.is-close {
  top: 36px;
  right: 26px;
  z-index: 30;
}

.carousel__button.is-close:hover {
  background: #e7e7e9;
}

.fancybox__slide {
  padding-top: 1.25rem;
}

/**
*  Thumbnails
*/

.fancybox__thumbs {
  padding: 0 100px 0 26px;
  border-bottom: 2px solid #f3f3f4;
}

/* Align thumbnails on right side if not draggable */
.fancybox__thumbs:not(.is-draggable) .carousel__track {
  justify-content: flex-end;
}

.carousel__slide.has-thumb {
  padding: 30px 7px;
}

.fancybox__thumb {
  border-radius: 4px;
  background-color: #e7e7e9;
}

.is-nav-selected .fancybox__thumb {
  box-shadow: 0 0 0 2px #fff, 0 0 0 4px #ea4c89;
}

.is-nav-selected .fancybox__thumb::after {
  display: none;
}
    </style>
     <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>
  <script>
  Fancybox.bind('[data-fancybox="gallery"]', {
  animated: false,
  showClass: false,
  hideClass: false,

  Toolbar: false,

  closeButton: "top",
  click: false,
  dragToClose: false,

  Carousel: {
    // Disable content slide animation
    friction: 0,

    // Disable touch guestures
    Panzoom: {
      touch: false,
    },

    Navigation: false,
  },

  Image: {
    // Disable animation from/to thumbnail on start/close
    zoom: false,

    // Disable zoom on scroll event
    wheel: false,

    // Disable zoom on image click
    click: false,

    // Fit image horizontally only
    fit: "contain-w",
  },

  // Center thumbnails only if draggable
  Thumbs: {
    minScreenHeight: 0,
    Carousel: {
      center: function () {
        return this.elemDimWidth > this.wrapDimWidth;
      },
    },
  },
});
  </script>
</head>

<body>
   <h1 class="mt-12 mb-8 px-6 text-center text-lg md:text-2xl font-semibold">
  Dribbble inspired design
</h1>

<div class="flex flex-wrap gap-5 justify-center max-w-5xl mx-auto px-6">
  <a data-fancybox="gallery" href="https://lipsum.app/id/60/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/60/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/61/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/61/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/62/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/62/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/63/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/63/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/64/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/64/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/65/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/65/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/66/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/66/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/67/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/67/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/68/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/68/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/69/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/69/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/70/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/70/200x150" />
  </a>
  <a data-fancybox="gallery" href="https://lipsum.app/id/71/1600x1200">
    <img class="rounded" src="https://lipsum.app/id/71/200x150" />
  </a>
</div>

   
    
  
  
    <!-- Footer Section Begin -->
   	<%@include file="./include/footer.jsp" %>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
   
     

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/jquery.dd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>