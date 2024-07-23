function message(row, msg) {	
	if (row != 0) {
		alert(`${msg} 성공`);
		location.href = 'home.jsp';
	}
	else {
		alert(`${msg} 실패`);
		history.back();
	}
}