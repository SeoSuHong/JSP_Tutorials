function Event() {
	if (document.quiz.name.value == "") {
		alert("이름을 입력해 주세요.");
		document.quiz.name.focus();
	} else if (document.quiz.address.value == "") {
		alert("주소를 입력해 주세요.");
		document.quiz.address.focus();
	} else if (document.quiz.tel.value == "") {
		alert("전화번호를 입력해 주세요.");
		document.quiz.tel.focus();
	} else if (document.quiz.email.value == "") {
		alert("이메일을 입력해 주세요.");
		document.quiz.email.focus();
	} else if (document.quiz.hobby.value == "") {
		alert("취미를 입력해 주세요.");
		document.quiz.hobby.focus();
	} else{
		document.quiz.submit();
	}
}