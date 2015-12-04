/*-----------------------------------------------------------------------------------
/* Styles Switcher
-----------------------------------------------------------------------------------*/

window.console = window.console || (function(){
	var c = {}; c.log = c.warn = c.debug = c.info = c.error = c.time = c.dir = c.profile = c.clear = c.exception = c.trace = c.assert = function(){};
	return c;
})();


jQuery(document).ready(function($) {
	
		// Color Changer
		
		$(".default" ).click(function(){
			$("#colors" ).attr("href", "css/colors/default.css" );
			return false;
		});
		
		$(".olive" ).click(function(){
			$("#colors" ).attr("href", "css/colors/olive.css" );
			return false;
		});
		
		$(".green" ).click(function(){
			$("#colors" ).attr("href", "css/colors/green.css" );
			return false;
		});
		
		$(".blue" ).click(function(){
			$("#colors" ).attr("href", "css/colors/blue.css" );
			return false;
		});

		$(".yellow" ).click(function(){
			$("#colors" ).attr("href", "css/colors/yellow.css" );
			return false;
		});

		$(".red" ).click(function(){
			$("#colors" ).attr("href", "css/colors/red.css" );
			return false;
		});
				
		$(".cherry" ).click(function(){
			$("#colors" ).attr("href", "css/colors/cherry.css" );
			return false;
		});
		
		$(".gray" ).click(function(){
			$("#colors" ).attr("href", "css/colors/gray.css" );
			return false;
		});

			

		$("#style-switcher h2 a").click(function(e){
			e.preventDefault();
			var div = $("#style-switcher");
			console.log(div.css("left"));
			if (div.css("left") === "-185px") {
				$("#style-switcher").animate({
					left: "0px"
				}); 
			} else {
				$("#style-switcher").animate({
					left: "-185px"
				});
			}
		})
		
		// Layout Style Switcher
	    $("#layout-style").change(function(e){
			if( $(this).val() == 1){
				$("body").removeClass("boxed");
				$("body").addClass("wide");
				$(".bgr").addClass("hide"); 
				       
			} else if( $(this).val() == 2){
				$("body").addClass("boxed");
				$("body").removeClass("wide");
				$(".bgr").removeClass("hide");      
			}
		})

		$(".colors li a").click(function(e){
			e.preventDefault();
			$(this).parent().parent().find("a").removeClass("active");
			$(this).addClass("active");
		})
		
		$(".bg li a").click(function(e){
			e.preventDefault();
			$(this).parent().parent().find("a").removeClass("active");
			$(this).addClass("active");
			var bg = $(this).css("backgroundImage");
			$("body").css("backgroundImage",bg)
		})

		$("#reset a").click(function(e){
			var bg = $(this).css("backgroundImage");
			$("body").css("backgroundImage","url(./images/patterns/pattern-1.png)");
			$("body").removeClass("boxed").addClass("wide");
			$(".bgr").addClass("hide");
		})
			

	});