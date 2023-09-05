function count(type, row)  {
	  const resultElement = document.getElementById('result' + row);	 
	  let number = resultElement.innerText;
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
		  if(number > 1){
			  number = parseInt(number) - 1;
		  }
	  }
	  resultElement.innerText = number;
	}
