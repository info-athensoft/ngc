/* edit print job */

function showUploadBox(){
	alert("change file");
	$("#edit_upload_file").css("display","block");
}

function updatePrintJob(){
	window.location = "print_create_job.do";
}