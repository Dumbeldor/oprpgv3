$("div[id^=conversationHeader_]").click(function(e){
	if(!$(e.target).is("input") && !$(e.target).first().is("center")) {
		var id = $(this).attr("id");
		id = id.split("_");
		id = id[1];
		
		$("div#conversationContent_"+id).slideToggle(800);
	}
});