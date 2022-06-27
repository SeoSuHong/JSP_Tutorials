function login_btn() {
	if(document.log.id.value == ""){
		alert("아이디를 입력해 주세요.");
		document.log.id.focus();
	} else if(document.log.pw.value == ""){
		alert("패스워드를 입력해 주세요.");
		document.log.pw.focus();
	} else {
		document.log.submit();
	}
}