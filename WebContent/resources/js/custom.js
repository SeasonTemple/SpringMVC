 jQuery(function($) {
        
        $(".sidebar-dropdown > a").mouseenter(function(){
	        $(".sidebar-submenu").slideUp(250);
        	if ($(this).parent().hasClass("active")){
 		         $(".sidebar-dropdown").removeClass("active");
 		         $(this).parent().removeClass("active");
        	}else{
        		$(".sidebar-dropdown").removeClass("active");
        		$(this).next(".sidebar-submenu").slideDown(250);
        	 	$(this).parent().addClass("active");
        	}

        });

         $("#toggle-sidebar").mouseenter(function(){
            var c = $('#navmenu').css('color');
            if(c == 'rgb(155, 155, 155)'){
                $('#navmenu').attr('style', 'color:rgba(0, 134, 253, 3)');
            }else{
                $('#navmenu').attr('style', 'color:rgba(155, 155, 155, 3)');
            }
            $(".page-wrapper").toggleClass("toggled");    
       	 });

           if(! /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
                   $(".sidebar-content").mCustomScrollbar({
                            axis:"y",
                            autoHideScrollbar: true,
                            scrollInertia: 300
                    });
                    $(".sidebar-content").addClass("desktop");

            }
    });