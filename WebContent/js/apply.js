const SUCCESS_HEADER = "Sucesso!";
const SUCCESS_BODY = "Cadastro efetuado com sucesso!";
const ERROR_HEADER = "Erro!";
const ERROR_BODY = "Desculpe, o servidor parece estar com problemas. Tente novamente mais tarde";

createApplicant = function() {
	applicant = undefined;
	applicant = {};
	applicant.name       = $("#name").val();
	applicant.email      = $("#email").val();
	
	if( isMobile() ){
		applicant.html       = $('#htmlSelect').find("option:selected").val();
		applicant.css        = $('#cssSelect').find("option:selected").val();
		applicant.javascript = $('#javascriptSelect').find("option:selected").val();
		applicant.python     = $('#pythonSelect').find("option:selected").val();
		applicant.django     = $('#djangoSelect').find("option:selected").val();
		applicant.ios        = $('#iosSelect').find("option:selected").val();
		applicant.android    = $('#androidSelect').find("option:selected").val();
	}else{
		applicant.html       = $('#htmlGroup input:radio:checked').val();
		applicant.css        = $('#cssGroup input:radio:checked').val();
		applicant.javascript = $('#javascriptGroup input:radio:checked').val();
		applicant.python     = $('#pythonGroup input:radio:checked').val();
		applicant.django     = $('#djangoGroup input:radio:checked').val();
		applicant.ios        = $('#iosGroup input:radio:checked').val();
		applicant.android    = $('#androidGroup input:radio:checked').val();
	}
	return jQuery.parseJSON(JSON.stringify(applicant));
}

isMobile = function() {	
	return ($('.device-sm').is(':visible') || $('.device-xs').is(':visible'));
}

validateName = function(){
	if($('#name').val() == '' || $('#name').val() == undefined){
		$("#nameHelp").show();
		$('#nameForm').removeClass('has-success');
		$('#nameForm').addClass('has-error');
		return false;
	} else {
		$("#nameHelp").hide();
		$('#nameForm').removeClass('has-error');
		$('#nameForm').addClass('has-success');
		return true;
	}
}

validateEmail = function(){
	var regEx = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	
	if(regEx.test($("#email").val())){
		$("#emailHelp").hide();
		$("#emailForm").removeClass("has-error");
		$("#emailForm").addClass("has-success");
		return true;
	} else {		
		$("#emailHelp").show();
		$("#emailForm").removeClass("has-success");
		$("#emailForm").addClass("has-error");		
		return false;
	}
}

$("#btEnviar").click(function() {
	applicant = createApplicant();
	if (validateName() && validateEmail()) {
		var $btn = $(this).button('loading');
		$.post('ApplyServlet', applicant, function(success) {
			$btn.button('reset');
			if(success){
				$('#modalTitle').text(SUCCESS_HEADER);
				$('#modalBody').text(SUCCESS_BODY);
				$('#myModal').modal('show');				
			}else{
				$('#modalTitle').text(ERROR_HEADER);
				$('#modalBody').text(ERROR_BODY);
				$('#myModal').modal('show');				
			}			
		});
	}
});

$("#btFecharModal").click(function(){
	if($("#modalTitle").text() == SUCCESS_HEADER){
		location.reload();
	}
});