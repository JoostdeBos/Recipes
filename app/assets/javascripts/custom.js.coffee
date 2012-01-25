$(document).ready ->
	$(".close").click ->
		$(".alert-message").fadeOut 1000, ->

	$("a.remove-fields").click (e) ->
	    $this = $(this)
	    $this.prev("input[type=hidden]").val "1"
	    $this.closest(".ingredients").hide()
	    e.preventDefault()
