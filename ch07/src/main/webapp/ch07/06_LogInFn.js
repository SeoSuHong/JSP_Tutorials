function checkLog() {
	if (document.logForm.id.value == "") {
		alert("Please enter your ID");
		document.logForm.id.focus();
	} else if(document.logForm.name.value == "") {
		alert("Please enter your Name");
		document.logForm.name.focus();
	} else {
		document.logForm.submit();
	}
}