<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
	<title>상품 등록</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
   
   <%-- <form  action="/admin/product"
   		  method="post" 
   >
   
        <tr>
            <td> 상품 번호 </td>
            <td> <input id="product_number" type="text" name="product_number" value="${product.product_number}"></td>
         </tr>
         
          <table>         
        <tr>
            <td>상품 명 </td>
            <td> <input id="product_name" type="text" name="product_name" value="${product.product_name}"></td>
         </tr>
         </table>  
         
          <table>
          <tr>
            <td> 가격  </td>
            <td> <input id="price" type="text" name="price" value="${product.price}"></td>
         </tr>
         </table>  
          
        <table>
          <tr>               
            <td> 재고 량 </td>
            <td> <input id="stock_quantity" type="number" name="stock_quantity" value="${product.stock_quantity}"></td>
         </tr>
         	
             </table>
   
         
          <tr>         
            <td> 옵션 </td>
            <td> <input id="options" name="options" value="${product.options}"></td>
               <td>
        <select id="options" name="options">
            <option value="option1">옵션 1</option>
            <option value="option2">옵션 2</option>
            <option value="option3">옵션 3</option>
            <option value="option3">옵션 4</option>
            <option value="option3">옵션 5</option>          
        </select>
         </tr>
         
         <table>
          <tr>         
            <td> 이미지 </td>
            <td> <input id="product_img" type="file" name="product_img" value="${product.product_img}"></td>
         </tr>
                 </table>
                  
                 
        <tr>
            <td colspan="2">
               &nbsp;&nbsp;  <input type="submit" value="상품 등록"> 
                <td colspan="2"> 
                	&nbsp;&nbsp; <input type="submit" value="수정">
                	&nbsp;&nbsp; <a href="delete?product=${product.bid}">삭제</a> 
                
            </td>
        </tr>        
 --%> 
 
 
 
	
		function getList(){
			$.ajax({
				type:"GET",
				url:"/admin/product",
				success:function(result){
					console.log(result)
					
				var htmls="";
	                  
                $("#list-table").html("");   

                  $("<tr>" , {
                     html : 
                    	 "<td>" + "상품 분류" + "</td>"+                    	 
                    	 	"<td>" + "상품 번호" + "</td>"+  // 컬럼명들
                           "<td>" + "상품 명" + "</td>"+
                           "<td>" + "가격" + "</td>"+
                           "<td>" + "재고" + "</td>"+            
                           "<td>" + "옵션" + "</td>"+
                           "<td>" + "이미지" + "</td>"+
                           "<td>" + "삭제" + "</td>"
                  }).appendTo("#product_new-table") // 이것을 테이블에붙임

                  if(result.length < 1){
                     htmls.push("등록된 상품이 없습니다.");
                  } else {

                             $(result).each(function(){                                                          
                                htmls += '<tr>';
                                htmls += '<td>'+ this.pid + '</td>';
                                htmls += '<td>'+ this.pname + '</td>';
                                htmls += '<td>'
                              for(var i=0; i < this.option; i++) { //for 문은 시작하는 숫자와 종료되는 숫자를 적고 증가되는 값을 적어요. i++ 은 1씩 증가 i+2 는 2씩 증가^^
                                 htmls += '-'   
                             }
                                htmls += '<a href="${pageContext.request.contextPath}/product?bid=' + this.bid + '">' + this.btitle + '</a></td>';
                                htmls += '<td>'+ this.pdate + '</td>'; 
                                htmls += '<td>'+ this.hit + '</td>';   
                                htmls+='<td>'+ "<input type='button' class='del-button' id=" + this.bid + ' value="삭제" />' +  '</td>';      
                                htmls += '</tr>';                                                      
                            });   //each end

                            htmls+='<tr>';
                            htmls+='<td colspan="5"> <a href="${pageContext.request.contextPath}/write_view">글작성</a> </td>';                         
                            htmls+='</tr>';
                 
                            
                  }

                  $("#list-table").append(htmls);
					
					
					
				},
				error:function(e){
					console.log(e);
				}			
				
			});
			
		}
	</script>
	
	<script>
		$(document).ready(function(){			
			getList();			
		});
	</script>

	<script>
	//삭제
  	$(document).on("click",".del-button",function(){
      console.log(this);
      var obj = $(this);//.parent().parent().remove();
      
      $.ajax({
    	  type:"DELETE",
    	  url: "/admin/product" + $(this).attr("product_number"),
    	  success:function(result){
    		  $(obj).parent().parent().remove();
    		  console.log(result);
    	  },
		  error:function(e){
				console.log(e);
		  }
      });
      
      
   	});
	</script>

</head>
<body>
	<table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
	</table>
</body>
</html>
</html>
