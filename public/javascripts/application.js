// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


function display_server_notes() {
        $("#server_notes").hide().show('slow');
		$("#show_filter").html("<a onclick='hide_server_notes(); return false;' href='#'>Ocultar Notas</a>")
}

function hide_server_notes() {
        $("#server_notes").hide('slow');
        $("#show_filter").html("<a onclick='display_server_notes(); return false;' href='#'>Ver Notas</a>");
}

$().ready(function() {
 $("#flash_notice").fadeOut(8000);

});