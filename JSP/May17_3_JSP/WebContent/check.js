function check() {
	var nInput = document.f.n;
	if (isEmpty(nInput) || isNotNumber(nInput)) {
		alert("���� �ʼ�");
		nInput.value = "";
		nInput.focus();
		return false;
	}
	return true;
}