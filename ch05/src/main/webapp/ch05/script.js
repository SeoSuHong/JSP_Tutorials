function inputCheck(){
	if(document.regForm.id.value == "") {
		alert("아이디를 입력해 주세요.");
		document.regForm.id.focus();
	} else if(document.regForm.pw.value == "") {
		alert("패스워드를 넣어주세요.");
		document.regForm.pw.focus();
	} else if(document.regForm.chk_pw.value == "") {
		alert("패스워드 확인을 입력해 주세요.");
		document.regForm.chk_pw.focus();
	} else if(document.regForm.name.value == "") {
		alert("이름을 입력해 주세요.");
		document.regForm.name.focus();
	} else if(document.regForm.birth.value == "") {
		alert("생년월일을 선택해 주세요.");
		document.regForm.birth.focus();
	} else if(document.regForm.email.value == "") {
		alert("이메일을 입력해 주세요.");
		document.regForm.email.focus();
	} else if(document.regForm.pw.value != document.regForm.chk_pw.value) {
		alert("패스워드가 일치하지 않습니다.");
		document.regForm.chk_pw.focus();
	} else {
		document.regForm.submit();
	}
}