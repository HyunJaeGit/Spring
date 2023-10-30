function message(row) {
	if (row != 0) {
		alert('성공');
		location.href = 'ex02.jsp';
	}
	else {
		alert('실패');
		history.back();
	}
}