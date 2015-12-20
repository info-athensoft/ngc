/* Calculate Price */
function calculatePrice(){
	//alert("Calculate Price");
	$("#amountBeforeTax_print").val("CAD $"+"5.00");
	$("#amountBeforeTax_binding").val("CAD $"+"1.00");	
}

/* print job creation and editing*/
function createPrintJob(){
	//alert("Your new print job has been successfully created!");
	window.location="print_job_list.do";
}

function editPrintJob(job_id){
	//alert("edit job: "+job_id);
	window.location="print_edit_job.do";
	$("#edit_numOfPage").val("500");
}

function cancelPrintJob(job_id){
	alert("cancel job: "+job_id);
}

function upload(){
	alert("Upload file");
}