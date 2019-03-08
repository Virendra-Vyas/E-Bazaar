/**
 * list country.js: General Javascript Library for VirtueMart Administration
 *
 *
 * @package	VirtueMart
 * @subpackage Javascript Library
 * @author Patrick Kohl
 * @copyright Copyright (c) 2011VirtueMart Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */

(function($){
	var undefined,
	methods = {
		list: function(options) {
			var dest = options.dest;
			var ids = options.ids;
			var prefix = options.prefiks;
            methods.update(this,dest,ids,prefix);
			$(this).change( function() { methods.update(this,dest,ids,prefix)});

		},
		update: function(org,dest,ids,prefix) {
			var opt = $(org),
				optValues = opt.val() || [],
				byAjax = [] ;
			if (!$.isArray(optValues)) optValues = jQuery.makeArray(optValues);
			if ( typeof  oldValues !== "undefined") {
				//remove if not in optValues
				$.each(oldValues, function(key, oldValue) {
					if ( ($.inArray( oldValue, optValues )) < 0 ) $("#"+prefix+"group"+oldValue).remove();
				});
			}
			//push in 'byAjax' values and do it in ajax
			$.each(optValues, function(optkey, optValue) {
				if( opt.data( 'd'+optValue) === undefined ) byAjax.push( optValue );
			});

			if (byAjax.length >0) {
				$.getJSON('index.php?option=com_virtuemart&view=state&format=json&virtuemart_country_id=' + byAjax,
						function(result){

						var virtuemart_state_id = jQuery('#'+prefix+'virtuemart_state_id');
						var status = virtuemart_state_id.attr('required');
						
						if(status == 'required') {
							if( result[byAjax].length > 0 ) {
								virtuemart_state_id.attr('required','required');
							} else {
								virtuemart_state_id.removeAttr('required');
							}
						}

                        jQuery.each(result, function(key, value) {
							if (value.length >0) {
								opt.data( 'd'+key, value );	
							} else { 
								opt.data( 'd'+key, 0 );		
							}
						});
						methods.addToList(opt,optValues,dest,prefix);
						if ( typeof  ids !== "undefined") {
							var states =  ids.length ? ids.split(',') : [] ;
							$.each(states, function(k,id) {
								$(dest).find('[value='+id+']').attr("selected","selected");
							});
						}
                        jQuery(dest).trigger("liszt:updated"); //in new chosen this is chosen:updated
						$('.shoper select , .billing-box select').styler().trigger('refresh');
					}
				);
			} else {
				methods.addToList(opt,optValues,dest,prefix)
				$(dest).trigger("liszt:updated");
				$('.shoper select , .billing-box select').styler().trigger('refresh');
			}
			oldValues = optValues ;
			
		},
		addToList: function(opt,values,dest,prefix) {
			$.each(values, function(dataKey, dataValue) { 
				var groupExist = $("#"+prefix+"group"+dataValue+"").size();
				if ( ! groupExist ) {
					var datas = opt.data( 'd'+dataValue );
					if (datas.length >0) {
					var label = opt.find("option[value='"+dataValue+"']").text();
					var group ='<optgroup id="'+prefix+'group'+dataValue+'" label="'+label+'">';
					$.each( datas  , function( key, value) {
						if (value) group +='<option value="'+ value.virtuemart_state_id +'">'+ value.state_name +'</option>';
					});
					group += '</optgroup>';
					$(dest).append(group);
					
					}
				}
			});
		},
        startVmLoading: function(msg) {
            if (msg===undefined) {
                msg='';
            }
            $("body").addClass("vmLoading");
            $("body").append("<div class=\"vmLoadingDiv\"><div class=\"vmLoadingDivMsg\">"+msg+"</div></div>");
        },
        stopVmLoading: function() {
            if( $("body").hasClass("vmLoading") ){
                $("body").removeClass("vmLoading");
            }
        }


	};

	$.fn.vm2front = function( method ) {

		if ( methods[method] ) {
		  return methods[method].apply( this, Array.prototype.slice.call( arguments, 1 ));
		} else if ( typeof method === 'object' || ! method ) {
			return methods.init.apply( this, arguments );
		} else {
		  $.error( 'Method ' +  method + ' does not exist on Vm2 front jQuery library' );
		}    
	
	};
})(jQuery);
jQuery(function($) {
    // Add to cart and other scripts may check this variable and return while
    // the content is being updated.
    Virtuemart.isUpdatingContent = false;
    Virtuemart.updateContent = function(url) {
        if(Virtuemart.isUpdatingContent) return false;
        Virtuemart.isUpdatingContent = true;
        url += url.indexOf('&') == -1 ? '?tmpl=component' : '&tmpl=component';
        console.log("UpdateContent URI "+url);
        $.ajax({
            url: url,
            dataType: 'html',
            success: function(data) {
                var el = $(data).find(Virtuemart.containerSelector);
				if (! el.length) el = $(data).filter(Virtuemart.containerSelector);
				if (el.length) {
					Virtuemart.container.html(el.html());
                    Virtuemart.updateCartListener();
                    Virtuemart.updateDynamicUpdateListeners();
                    //Virtuemart.updateCartListener();

					if (Virtuemart.updateImageEventListeners) Virtuemart.updateImageEventListeners();
					if (Virtuemart.updateChosenDropdownLayout) Virtuemart.updateChosenDropdownLayout();
				}
				Virtuemart.isUpdatingContent = false;
				  $('.product-custom select').styler().trigger('refresh');
				  $(function(){
				  $('.productdetails-view #accordion2').show().animate({opacity:1},800);
				  $('.productdetails-view .image_show').animate({opacity:1},1000);
				  $('.productdetails-view .example2').removeClass('loader'); // remove the loader when window gets loaded.
					$('.tabs_show').show().animate({opacity:1},1000);
				  Zoom();
				  sliderInit6();

				  //check_reviewform();
				  refresh_counter();
				  quick_ap();
				  JCommentsInitializeForm();
				  $('a.ask-a-question, a.printModal, a.recommened-to-friend, a.manuModal').click(function(event){
				  event.preventDefault();
				  $.facebox({
					iframe: $(this).attr('href'),
					rev: 'iframe|550|550'
					});
				  });
				});
			  $('.list_carousel').removeClass('loader');
			  $('.product-related #slider').show();
			  //$('.productdetails-view.layout2 .hasTooltip').tooltip();
			  $('.productdetails-view.layout2 .product-box2 .hasTooltip').tooltip();
			  //shortcodes
				var tabs = $('ul.nav-tabs');
				tabs.each(function(i) {
				var tab = $(this).find('> li > a');
				tab.click(function(e) {
				var contentLocation = $(this).attr('href');
				if(contentLocation.charAt(0)=="#") {
				e.preventDefault();
				tab.removeClass('active');
				$(this).addClass('active');
				$(contentLocation).show().addClass('active').siblings().hide().removeClass('active');
				}
				});
				});
				//end shortcodes
			  $(function() {
					var steps = 5;
					var parentPos= $('.write-reviews .ratingbox').position();
					var boxWidth = $('.write-reviews .ratingbox').width();// nbr of total pixels
					var starSize = (boxWidth/steps);
					var ratingboxPos= $('.write-reviews .ratingbox').offset();
					var ratingbox=$('.write-reviews .ratingbox')
						$('.write-reviews .ratingbox').mousemove( function(e){
							var span = $(this).children();
							var dif = Math.floor(e.pageX-ratingbox.offset().left); 
							difRatio = Math.floor(dif/boxWidth* steps )+1; //step
							span.width(difRatio*starSize);
							$('#vote').val(difRatio);
							//console.log('note = ', difRatio);
							
						});
						$('.write-reviews .ratingbox').click(function(){
					    $('.button_vote').click();});
				});
			  window.addEvent('domready', function() {
				SqueezeBox.initialize({});
					SqueezeBox.assign($$('a.modal'), {
						parse: 'rel'
					});
				});
				Tabsresp();
            }
        });
        Virtuemart.isUpdatingContent = false;
    }
});


