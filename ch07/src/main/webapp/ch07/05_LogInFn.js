function login_btn() {
	if (document.login.id.value =="") {
		alert("아이디를 입력해 주세요.");
		document.login.id.focus();
	} else if (document.login.pw.value == "") {
		alert("패스워드를 입력해 주세요.");
		document.login.pw.focus();
	} else {
		document.login.submit();
	}
}