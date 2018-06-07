
<!--Pen by Margus Lillemägi | codepen.io/VisualAngle/-->
<?php require '../startApp.php';?>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>SVG Summit Webiste Template</title>    
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="Margus Lillemagi, visual-angle.com">
  <!--PRELOAD-PREFETCH-PRECONNECT CONTENT--> 
  <link rel="preload" href="https://upload.wikimedia.org/wikipedia/commons/6/6e/Ayuntamiento%2C_vistas_panor%C3%A1micas_desde_Toompea%2C_Tallin%2C_Estonia%2C_2012-08-05%2C_DD_21.JPG">
  <link rel="prefetch" href="https://visualangle.ee/images/hipster_001.jpg">
  <link rel="prefetch" href="https://visual-angle.com/images/hipster-2.jpg">
  <link rel="prefetch" href="https://visual-angle.com/images/hipster-3.jpg">
  <link rel="prefetch" href="https://visual-angle.com/images/hipster-4.jpg">
  <link rel="preconnect" href="https://fonts.googleapis.com/" crossorigin>
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
  
  <!--FOOTER STYLE-->
  <style type="text/css">
     #VisualAngleLink,#pens{
      position: absolute;
      text-decoration: none;
      font-size: 20px;
      color: #000;
      bottom: 25px;
      opacity:0.7;
    }
    #VisualAngleLink span,#pens span{
      font-family:'Ubuntu', arial; 
      font-size:13px;
      margin-left:5px;
      vertical-align: 20%;
    }
    #VisualAngleLink:hover,#pens:hover{
      opacity:1;
    }
    #VisualAngleLink { right: 30px; }
    #pens { left: 30px; }
  </style>
</head>

<body>
  
<!--HTML CONTAINER-->
<div id="container">

<!--//////SLIDER BOX 7///////-->
  
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  preserveAspectRatio="xMidYMid slice" viewBox="0 0 934 584" class="box srgb-filter">
  <defs>
    <!--SVG STYLE-->
    <style type="text/css"><![CDATA[
      /*LOAD FONT.*/
      @import url('https://fonts.googleapis.com/css?family=Ubuntu');
      body{
        background-color:#2C001E;
        font-size: 17px; /*Global font size.*/
        font-family: 'Ubuntu', sans-serif; /*Global font.*/
        text-rendering: geometricPrecision; /*The browser emphasizes geometric precision over rendering speed and legibility.*/
      }
      body, html {
          height: 100%;
          width: 100%;
          margin: 0;
          padding: 0;
          overflow: hidden;
      }
      /*HTML CONTAINER DIV*/
      #container {
        width:100%;
        height: 100%;
      }
      svg{
        visibility:hidden;
      }
      /*SLIDE BOX*/
      .box {
        width: 100%;
        height: 100%;
        position: absolute;
        text-align: center;
        padding: 0px;
        margin: 0px;
      }
      /*SLIDE BOX BACKGROUND*/
      .box:nth-child(7),.box:nth-child(6),.box:nth-child(5),.box:nth-child(4),.box:nth-child(3),.box:nth-child(2),.box:nth-child(1) {
        background-color: #2c001e;
      }
      /*IMAGE TONE FILTER*/
      #duotone {
        width: 100%;
        height: 100%;
        background-position: center;
        background-repeat:no-repeat;
        background-size: cover;
      }
      /*FOR SVG FILTERS*/
      .srgb-filter {
        color-interpolation-filters:sRGB;
      }
      /*GLOBAL TEXT*/
      text {
        fill: #fff;
        opacity:0.8;
      }
      /*HEADINGS*/
      [role="heading"]{
        font-weight:700;
      }
      /*Heading level hero*/
      [role="heading"][aria-level="hero"] {
        font-size: 6em; 
      }
      /*Heading level 1*/
      [role="heading"][aria-level="1"] {
        font-size: 3em;
        text-transform: uppercase;
      }
      /*Heading level 2*/
      [role="heading"][aria-level="2"] {
        font-size: 0.99em; 
        font-weight:500;
      }
      /*Heading level 3*/
      [role="heading"][aria-level="3"] {
       font-size: 1.4em;
       text-transform: uppercase;
      }
      /*Heading level 4*/
      [role="heading"][aria-level="4"] {
        font-size: 1.55em; 
        font-weight:500;
        text-transform: uppercase;
      }
      /*Heading level 5*/
      [role="heading"][aria-level="5"] {
        font-size: 1.4em; 
        font-weight:700;
      }
      /*Heading level 6*/
      [role="heading"][aria-level="6"] {
        font-size: 2.5em;
        text-transform: uppercase;
      }
      /*Heading level 6*/
      [role="heading"][aria-level="button"] {
        font-size: 1.25em;
        text-transform: uppercase;
      }
      /*Heading level 5*/
      [role="heading"][aria-level="link"] {
        font-size: 1.4em; 
        font-weight:700;
      }
      /*LOGO*/
      #logo {
        max-width:200px;
        width:100%;
        position:absolute;
        overflow:visible;
        padding-bottom:3%;
        height:1px;
        top:20px;
        left:20px;
        opacity:0.8;
        font-size: 1.4em;
      }
      /*FOOTER*/
      #VisualAngleLink,#pens {
        color: #fff;  
      }
      .button, a {
        cursor:pointer;
      }
      .btn-color{
        fill:#2C001E;
        opacity:0.8;
      }
      .no-select {
        -webkit-user-select: none;  
        -moz-user-select: none;    
        -ms-user-select: none;      
        user-select: none;
      }
      #logo:hover,.btn-color:hover, [aria-level="button"]:hover,[aria-level="link"]:hover{
      opacity:1;
      }
      
    ]]></style>
  </defs>
  
  <!--SVG JAVASCRIPT-->
  <script type="text/javascript" xlink:href="https://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
  <script type="text/javascript" xlink:href="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/utils/Draggable.min.js"></script>
  
  <script type="text/javascript">
    <![CDATA[
      document.addEventListener("DOMContentLoaded", function(event) {
        window.onload = function() {

          TweenMax.set("svg", {visibility: "visible"});

          /* PAGE SLIDER SCRIPT by Diaco m.lotfollahi  : https://diacodesign.com*/

          var box=document.querySelectorAll('.box'),indx=box.length-1,Anim ;

          for(var i=box.length;i--;){
            box[i].anim = TweenLite.to(box[i],0.8,{yPercent:-100,paused:true});
          };

          document.addEventListener("mousewheel",Go);
          document.addEventListener("DOMMouseScroll",Go);

          var D = document.createElement('svg');
          Draggable.create(D,{
            trigger:".box",type:'y',minimumMovement:5,cursor:'n-resize',
            onDrag:function(){var X=this.getDirection("start")=='up'?1:-1;  Go(X);}
          });

          function Go(e){
            var SD=isNaN(e)?e.wheelDelta||-e.detail:e;
            if(SD>0 && indx>0 ){
              if(!Anim||!Anim.isActive()){Anim=box[indx].anim.play();  indx--;}
            }else if(SD<0 && indx<box.length-1){
              if(!Anim||!Anim.isActive()){indx++;  Anim=box[indx].anim.reverse();}
            };
            if(isNaN(e))e.preventDefault();
          };

          /*DYNAMIC DUOTONE FILTER SCRIPT FOR IMAGES*/
          function convertToDuoTone(color1, color2) {
            var matrix = document.querySelector('feColorMatrix');
            var value = [];
            value = value.concat(
            [color1[0]/256 - color2[0]/256, 0, 0, 0, color2[0]/256]);
            value = value.concat(
            [color1[1]/256 - color2[1]/256, 0, 0, 0, color2[1]/256]);
            value = value.concat(
            [color1[2]/256 - color2[2]/256, 0, 0, 0, color2[2]/256]);
            value = value.concat([0, 0, 0, 1, 0]);
            matrix.setAttribute('values', value.join(' '));
          }
          /*SELECT A DUOTONE FILTER*/
          // ORANGE
          convertToDuoTone([221, 72, 20], [44, 0, 30]);
          // RED
          //convertToDuoTone([240, 14, 46], [25, 37, 80]);
          // GREEN
         //convertToDuoTone([80, 203, 254], [0, 0, 85]);

         };
      });
    ]]>
   </script>
  
  <defs>
    <!--FILTERS FOR BACKGROUND IMAGE-->  
    <filter id="duotone-filter">

      <!--FILTER DUO TONE EFFECT-->
      <feColorMatrix
        type="matrix"
        values="1  0  0  0  0
                1  0  0  0  0
                1  0  0  0  0
                0  0  0  1  0"/>   
    </filter>
    <!--FILTERS FOR AVATAR IMAGES-->  
    <filter id="trans-filter">
    <!--FILTER FOR TRANSPARENCY EFFECT-->    
    <feColorMatrix values="1 0 0 0 0
                           0 1 0 0 0
                           0 0 1 0 0
                           0 1 0 0 0"/>
   </filter>
   <!--CLIPPING MASK EFFECT FOR AVATAR IMAGES-->
   <clipPath id="clipping">
     <!--MASK-->
     <path transform="translate(317 86) scale(1)" d="M45 3752.218a20.563 20.563 0 0 1-20.563 20.562 20.563 20.563 0 0 1-20.562-20.562 20.563 20.563 0 0 1 20.563-20.563A20.563 20.563 0 0 1 45 3752.218zM150 29.503a137.369 137.369 0 0 0-137.369 137.37 137.369 137.369 0 0 0 47.326 103.623h179.965a137.369 137.369 0 0 0 47.447-103.624A137.369 137.369 0 0 0 150 29.503z"/>
   </clipPath>
  </defs>
  
  <!--BACKGROUND IMAGE 7-->  
  <image width="934" height="584" class="tss"filter="url(#duotone-filter)"  xlink:href="<?php echo $root ?>images/fotos_tienda/tss_1.jpg" title="Tallinn Background"/>
  
   
</svg>
  
<!--//////SLIDER BOX 6///////-->
  
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  preserveAspectRatio="xMidYMid slice" viewBox="0 0 934 584" class="box srgb-filter"> 
  
  <!--BACKGROUND IMAGE 6--> 
  <image width="934" height="584" class="tss" filter="url(#duotone-filter)"  xlink:href="<?php echo $root ?>images/fotos_tienda/tss_3.jpg" title="Tallinn Background"/>
  
 
</svg>
  
<!--//////SLIDER BOX 5///////-->
  
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  preserveAspectRatio="xMidYMid slice" viewBox="0 0 934 584" class="box srgb-filter">
  
  <!--BACKGROUND IMAGE 5--> 
  <image width="934" height="584" class="tss" filter="url(#duotone-filter)"  xlink:href="<?php echo $root ?>images/fotos_tienda/tss_2.jpg" title="Tallinn Background"/>
  

</svg>

<!--//////SLIDER BOX 4///////-->
  
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  preserveAspectRatio="xMidYMid slice" viewBox="0 0 934 584" class="box srgb-filter">
  
  <!--BACKGROUND IMAGE 4--> 
  <image width="934" height="584" class="tss" filter="url(#duotone-filter)" xlink:href="<?php echo $root ?>images/fotos_tienda/tss_1.jpg" title="Tallinn Background"/>
  
</svg>

<!--//////SLIDER BOX 3///////-->
  
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  preserveAspectRatio="xMidYMid slice" viewBox="0 0 934 584" class="box srgb-filter">
  
  <!--BACKGROUND IMAGE 3--> 
   
  <image width="934" height="584" class="tss"  xlink:href="<?php echo $root ?>images/fotos_tienda/tss_3.jpg" title="Tallinn Background"/>
    
  <!--AVATAR IMAGE 3-->  
 
  <!--HEADING TEXT 3-->    

  
</svg>

<!--//////SLIDER BOX 2///////-->
  
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  preserveAspectRatio="xMidYMid slice" viewBox="0 0 934 584" class="box srgb-filter">
  
  <!--BACKGROUND IMAGE 2--> 
  <image width="934" height="584" class="tss"  xlink:href="<?php echo $root ?>images/fotos_tienda/tss_2.jpg" title="Tallinn Background"/>
  
  <!--HEADING TEXT 2-->   

   
</svg>

<!--//////SLIDER BOX 1///////-->
<svg xmlns="" xmlns:xlink=""  preserveAspectRatio="xMidYMid slice" viewBox="0 0 934 584" class="box">
  
  <!--BACKGROUND IMAGE 1-->  
  <image width="934" height="584" class="tss" xlink:href="<?php echo $root ?>images/fotos_tienda/tss_1.jpg" title="Tallinn Background"/>
 
  <!--HEADING TEXT 1-->    

 
</svg>

<!--LOGO-->
  <a href="#0" role="tab" focusable="true"  tabindex="0">
  <path fill="#fff" d="M60.635 1.038c.542 19.538 10.977 37.642 27.609 47.924C87.7 29.426 77.266 11.32 60.635 1.038zM31.152 48.962C47.677 38.68 58.05 20.47 58.616 1.038 42.092 11.32 31.719 29.53 31.152 48.962zm-2.042 0C28.49 29.636 18.173 11.266 1.756 1.038c.62 19.326 10.937 37.696 27.354 47.924zm37.356-6.767a6.768 6.768 0 1 0-13.536 0 6.768 6.768 0 0 0 13.536 0z"/>
  </a>
</svg>
  
</div>
  
  
</body>
</html>