jQuery(document).ready(function ($) {
     
	    
	
	$('.categories').find('img[alt="earrings"]').css('border','4px solid blue').css('backgroundColor','white');	
	   
	$(".earrings").show();	
	$(".necklaces").hide();
	$(".bracelets").hide();

	
	
	
        //font size using Slider based on jquery UI sliders
        
 $( "#slider" ).slider({
            range: "max", // set range Type
            min: 0, // set a minimum value
            max: 500, //a max value
            value: 162, // default value
            slide: function( event, ui ) { // event onslider
                $( ".size" ).text(ui.value + "px"); // update text on slider
               $('.images').css( "width",ui.value); // apply value on text (font-size) using css function (jquery)
              $('.images').css( "height",ui.value); // apply value on text (font-size) using css function (jquery)
                
                }
            });

			$( "#sliderg" ).slider({
            range: "max", // set range Type
            min: 0, // set a minimum value
            max: 360, //a max value
            value: 0, // default value
            slide: function( event, ui ) { // event onslider
                $( ".sizeg" ).text(ui.value + "°"); // update text on slider

				
				
			$('.images').css({'-webkit-transform' : 'rotate('+ui.value+'deg)',
                 '-moz-transform' : 'rotate('+ui.value+'deg)',
                 '-ms-transform' : 'rotate('+ui.value+'deg)',
                 'transform' : 'rotate('+ui.value+'deg)'});
				
                }
            });
            $( ".sizeg" ).text($( "#sliderg" ).slider( "value" ) +   "°"); // get default value from slider and show it to the user
			
            
			
			 //font size using Slider based on jquery UI sliders
        
 $( "#sliderJ" ).slider({
            range: "max", // set range Type
            min: 0, // set a minimum value
            max: 500, //a max value
            value: 162, // default value
            slide: function( event, ui ) { // event onslider
                $( ".size1" ).text(ui.value + "px"); // update text on slider
               $('.images1').css( "width",ui.value); // apply value on text (font-size) using css function (jquery)
              $('.images1').css( "height",ui.value); // apply value on text (font-size) using css function (jquery)
                
                }
            });

			$( "#sliderB" ).slider({
            range: "max", // set range Type
            min: 0, // set a minimum value
            max: 360, //a max value
            value: 0, // default value
            slide: function( event, ui ) { // event onslider
                $( ".sizeB" ).text(ui.value + "°"); // update text on slider

				
				
			$('.images1').css({'-webkit-transform' : 'rotate('+ui.value+'deg)',
                 '-moz-transform' : 'rotate('+ui.value+'deg)',
                 '-ms-transform' : 'rotate('+ui.value+'deg)',
                 'transform' : 'rotate('+ui.value+'deg)'});
				
                }
            });
            $( ".sizeB" ).text($( "#sliderB" ).slider( "value" ) +   "°"); // get default value from slider and show it to the user
			
			
			 //font size using Slider based on jquery UI sliders
        
 $( "#sliderM" ).slider({
            range: "max", // set range Type
            min: 0, // set a minimum value
            max: 500, //a max value
            value: 70, // default value
            slide: function( event, ui ) { // event onslider
                $( ".size2" ).text(ui.value + "px"); // update text on slider
               $('.images2').css( "width",ui.value); // apply value on text (font-size) using css function (jquery)
              $('.images2').css( "height",ui.value); // apply value on text (font-size) using css function (jquery)
			  
			   $('.imagesearrings1').css( "width",ui.value); // apply value on text (font-size) using css function (jquery)
              $('.imagesearrings1').css( "height",ui.value); // apply value on text (font-size) using css function (jquery)
                
                }
            });

			$( "#sliderW" ).slider({
            range: "max", // set range Type
            min: 0, // set a minimum value
            max: 360, //a max value
            value: 0, // default value
            slide: function( event, ui ) { // event onslider
                $( ".sizeW" ).text(ui.value + "°"); // update text on slider

				
				
			$('.images2').css({'-webkit-transform' : 'rotate('+-ui.value+'deg)',
                 '-moz-transform' : 'rotate('+-ui.value+'deg)',
                 '-ms-transform' : 'rotate('+-ui.value+'deg)',
                 'transform' : 'rotate('+-ui.value+'deg)'});
				 	
			$('.imagesearrings1').css({       				
  
				 'transform' : 'rotate('+ui.value+'deg) scaleX(-1)'
				 
    
				 });
			
 			
                }    
				
            });
            $( ".sizeW" ).text($( "#sliderW" ).slider( "value" ) +   "°"); // get default value from slider and show it to the user
			
			
			
			
			
			
            // function to get image preview on the template we don't need to upload it on the server using this function
            var countImg = 1;

             $('.fuck').resizable({
                        alsoResize: $('.fuckoff'),
                        containment: $('.imageContainerLimit'),
                     });

             $('.fuck').draggable();

             
          function readURL(input) {
		 var src = $(this).find('img').attr('src');
            if (input.files && input.files[0]) { // if there is a file from input
                var reader = new FileReader(); // read file
                
                reader.onload = function (e) { // on load
			
               
                          $('#Tshirtsrc').attr('src',e.target.result);
			 
                    countImg ++;
                   
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
		
		
		
        // load images 
        $("#imgInp").on('change',function(){
            readURL(this); // call our function readURL
        });

	
    


        //change Guitar template
        $('.earrin a').click(function(){
   //get clicked template src
            var src = $(this).find('img').attr('src'); 
  
  if( src.indexOf( '3earring' ) != -1 ){
	    $('.images2').css( "width",50).css( "height",50).css({'transform' : 'rotate(-9deg)'});			 
		$('#imagesContainer2').css('left','118px').css('top','28%');
		
		$('.imagesearrings1').css( "width",50).css( "height",50).css({'transform' : 'rotate(9deg)'});
		$('#imagesContainertearrings1').css('left','-139px').css('top','24%');	
	}
	
	
	 if( src.indexOf( '2earring' ) != -1 ){
	 $('.images2').css( "width",60).css( "height",60).css({'transform' : 'rotate(-9deg)'});			 
		$('#imagesContainer2').css('left','274px').css('top','34%');
		
		$('.imagesearrings1').css( "width",60).css( "height",60).css({'transform' : 'rotate(9deg)'});
		$('#imagesContainertearrings1').css('left','-71px').css('top','34%');	
	}
	
	 if( src.indexOf( '1earring' ) != -1 ){
	 $('.images2').css( "width",110).css( "height",110).css({'transform' : 'rotate(-9deg)'});			 
		$('#imagesContainer2').css('left','282px').css('top','45%');
		
		$('.imagesearrings1').css( "width",110).css( "height",110).css({'transform' : 'rotate(9deg)'});
		$('#imagesContainertearrings1').css('left','-240px').css('top','45%');	
	}
    
   if( src.indexOf( '4earring' ) != -1 ){
	 $('.images2').css( "width",70).css( "height",70).css({'transform' : 'rotate(-9deg)'});			 
		$('#imagesContainer2').css('left','290px').css('top','38.4%');
		
		$('.imagesearrings1').css( "width",70).css( "height",70).css({'transform' : 'rotate(9deg)'});
		$('#imagesContainertearrings1').css('left','-94px').css('top','40%');	
	}
	
	
	
	
	
                var src = $(this).find('img').attr('src');
            $('#Tshirtsrc').attr('src', src);
			     
           return false;
       });
		 //change Guitar template
        $('.bra a').click(function(){
            //get clicked template src
            var src = $(this).find('img').attr('src');
            //apply it on the original image to be edited
			
			 if( src.indexOf( '3bracelet' ) != -1 ){
	    $('.images1').css( "width",100).css( "height",100).css({'transform' : 'rotate(-9deg)'});			 
		$('#imagesContainer1').css('left','160px').css('top','64%');

	}
			 if( src.indexOf( '2bracelet' ) != -1 ){
	    $('.images1').css( "width",73).css( "height",73).css({'transform' : 'rotate(30deg)'});			 
		$('#imagesContainer1').css('left','78px').css('top','42%');

	}
			 if( src.indexOf( '1bracelet' ) != -1 ){
	    $('.images1').css( "width",70).css( "height",70).css({'transform' : 'rotate(164deg)'});			 
		$('#imagesContainer1').css('left','4px').css('top','84%');

	}
			 if( src.indexOf( '4bracelet' ) != -1 ){
	    $('.images1').css( "width",98).css( "height",98).css({'transform' : 'rotate(0deg)'});			 
		$('#imagesContainer1').css('left','-52px').css('top','65%');

	}
			
            $('#Tshirtsrc').attr('src', src);
			     
            return false;
        });
		 
        $('.neck a').click(function(){
            //get clicked template src
            var src = $(this).find('img').attr('src');
     
	  if( src.indexOf( '3necklace' ) != -1 ){
	    $('.images').css( "width",147).css( "height",147).css({'transform' : 'rotate(0deg)'});			 
		$('#imagesContainer').css('left','-159px').css('top','35.2%');

	} 
		  if( src.indexOf( '2necklace' ) != -1 ){
	    $('.images').css( "width",258).css( "height",258).css({'transform' : 'rotate(0deg)'});			 
		$('#imagesContainer').css('left','-200px').css('top','60%');

	}
		  if( src.indexOf( '1necklace' ) != -1 ){
	    $('.images').css( "width",230).css( "height",230).css({'transform' : 'rotate(0deg)'});			 
		$('#imagesContainer').css('left','-180px').css('top','54.5%');

	}
	  if( src.indexOf( '4necklace' ) != -1 ){
	    $('.images').css( "width",230).css( "height",230).css({'transform' : 'rotate(0deg)'});			 
		$('#imagesContainer').css('left','-169px').css('top','53.6%');

	}
	  
            $('#Tshirtsrc').attr('src', src);
			     
            return false;
        });
	
		
		
		
        // apply style on file's input

        $('#imgInp').customFileInput({
            // put button 'browse' on right
            button_position : 'right'
        });

        // Printer call

        // tooltip
        $('.font-tooltip').tooltip();

        $('.tooltip-show').tooltip({
          selector: "a[data-toggle=tooltip]"
        });
       		
      $('#imagesContainer').find('.images').remove();
      $('#imagesContainer').prepend("<div class='images' style='z-index:" + countImg + "'><img src='http://bootstrapweb.co.uk/bel.png' alt='' ></div>");                
      $('#imagesContainer').find('.images').draggable();
	  
	  $('#imagesContainer1').find('.images1').remove();
      $('#imagesContainer1').prepend("<div class='images1' style='z-index:" + countImg + "'><img src='http://bootstrapweb.co.uk/bel.png' alt='' ></div>");                
      $('#imagesContainer1').find('.images1').draggable();
	  
	  $('#imagesContainer2').find('.images2').remove();
      $('#imagesContainer2').prepend("<div class='images2' style='z-index:" + countImg + "'><img src='http://bootstrapweb.co.uk/bel.png' alt='' ></div>");                
      $('#imagesContainer2').find('.images2').draggable();
	  
	$('#imagesContainertearrings1').find('.imagesearrings1').remove();
	$('#imagesContainertearrings1').prepend("<div class='imagesearrings1' style='z-index:" + countImg + "'><img src='http://bootstrapweb.co.uk/bel.png' alt='' ></div>");
     $('#imagesContainertearrings1').find('.imagesearrings1').draggable();
	 

		 $('.imagesearrings1').css({
	
		   'transform' : 'scaleX(-1)'

		
		 });	
		
        //Set container of image

        setTimeout(function(){
            if($('#Tshirtsrc').length > 0){
                var h = $('#Tshirtsrc').height();
                var w = $('#Tshirtsrc').width();

                $('.imageContainerLimit').css({
                'width': w,
                'height': h
                })
            }
        }, 2000);

	 
    });








