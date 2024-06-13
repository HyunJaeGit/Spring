/* board js */

	// 페이지 접근시 and GET 호출시 사용할 함수
	function list(reqPage) { 
		
		fetch(url + `?reqPage=${reqPage}`, { method: 'GET' })
		.then(response => response.json())
		.then(data => {
			dt = data;
		
			let result = document.querySelectorAll('.board > tbody')[0];
			result.innerHTML = '';
			
			for (let i = 0; i < 10; i++) {
				let tr = document.createElement('tr');
				
				tr.innerHTML = 
					'<td>' + data[i].idx + '</td>' + 
					`<td data-idx="${data[i].idx}">` + data[i].title + '</td>' + 
					'<td>' + data[i].contents + '</td>' + 
					'<td>' + data[i].writer + '</td>' + 
					'<td>' + data[i].view_count + '</td>' + 
					'<td>' + data[i].write_date + '</td>'; 
					
				result.appendChild(tr);
			}
		});
	}


	let buttons = document.querySelectorAll('.buttons > button');
	let url = 'board';
	var dt;
	
	// 0. 페이지 접근시 바로 출력
	list(1);
	
	// 1. GET 버튼
	buttons[0].onclick = () => list(1);
	
	/* post 버튼 */
	buttons[1].onclick = () => {
	    alert('post~');

	    // 입력할 데이터 예시
	    const data = {
	        title: '새로운 글 제목',
	        contents: 'test 글 내용',
	        writer: '작성자84'
	    };

	    fetch(url, { 
	        method: 'post',
	        headers: {'Content-Type':'application/json'},
	        body: JSON.stringify(data)
	    })
	    .then(response => response.json())
	    .then(data => {
			dt = data;
			
			if (data == 1) {
				buttons[0].click();
			}
	    });
	}
	
	// 3. PUT 버튼
	buttons[2].onclick = () => {
		let data = {
			idx: 1036,
			title: "102610261026",
			writer: "102610",
			contents: "102610261026102610261026"
		};
	
		fetch(url, { 
			method: 'PUT',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify(data)
		})
		.then(response => response.json())
		.then(data => {
			dt = data;
			
			if (data == 1) {
				buttons[0].click();
			}
		});
	}
	
	// 4. PATCH 버튼
	buttons[3].onclick = () => { 
		let board = {
			idx: 1037,
			title: "REST PATCH 테스트",
		};
		
		fetch(url, { 
			method: 'PATCH',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify(board)
		})
		.then(response => response.json())
		.then(data => {
			dt = data;
			
			if (data == 1) {
				buttons[0].click();
			}
		});
	}
	// 5. DELETE 버튼
	buttons[4].onclick = () => { 
		let board = {
			idx: 1040
		};
		
		fetch(url, { 
			method: 'DELETE',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify(board)
		})
		.then(response => response.json())
		.then(data => {
			dt = data;
			
			if (data == 1) {
				buttons[0].click();
			}
		});
	}
	// 참고
	let table = document.querySelectorAll('.board')[0];
	let pre = document.querySelectorAll('.view > pre')[0];
	
	table.onclick = (event) => { 
		let tar = event.target;
		
		if (tar.tagName == 'TD') {
			let idx = tar.getAttribute('data-idx');
			idx = Number(idx);
			
			if (idx != 0) {
				fetch(url + '/' + idx, { method: 'GET' })
				.then(response => response.json())
				.then(data => {
					pre.innerHTML = 
						'클릭한 게시글 내용 : ' + data.contents;
				});
			}
		}
	}
	
	// 페이징
	let page = document.querySelectorAll('.page')[0];
	
	page.onclick = (event) => {
		let tar = event.target;
		
		if (tar.tagName == 'LI') {
			alert(tar.tagName + " : " + tar.innerHTML);
		}
	}
	
	
	
	
	
	
	
	
	
	