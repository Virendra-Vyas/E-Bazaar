jQuery(document).ready(function ($) {
     
	
        //font size using Slider based on jquery UI sliders
        
		   $( "#slider" ).slider({
            range: "max", // set range Type
            min: 50, // set a minimum value
            max: 1000, //a max value
            value: 204, // default value
            slide: function( event, ui ) { // event onslider
                $( ".size" ).text(ui.value + "px"); // update text on slider
              
                $('.images').css( 'width',ui.value); // apply value on text (font-size) using css function (jquery)
          
                }
            });
		
		  $( "#sliderh" ).slider({
            range: "max", // set range Type
            min: 50, // set a minimum value
            max: 1000, //a max value
            value: 204, // default value
            slide: function( event, ui ) { // event onslider
                $( ".sizeh" ).text(ui.value + "px"); // update text on slider
              
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
        $('.tshirts a').click(function(){
            //get clicked template src
            var src = $(this).find('img').attr('src');
            //apply it on the original image to be edited
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
            $('#imagesContainer').prepend("<div class='images' style='z-index:9" + countImg + "'><img src='http://bootstrapweb.co.uk/bel.png' alt='' ></div>");                
            $('#imagesContainer').find('.images').draggable();	 
		
		
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








