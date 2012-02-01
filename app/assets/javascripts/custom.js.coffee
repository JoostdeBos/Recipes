$(document).ready ->
	$(".close").click ->
		$(".alert-message").fadeOut 1000, ->
	

	remove_fields = (link) ->
		$(link).previous("input[type=hidden]").value = "1"
		$(link).up(".ingredients").hide()
  
	add_fields = (link, association, content) ->
		new_id = new Date().getTime()
		regexp = new RegExp("new_" + association, "g")
		$(link).up().insert before: content.replace(regexp, new_id)
