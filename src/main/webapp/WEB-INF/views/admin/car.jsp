<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/admin/sidebar.jsp"></jsp:include>

<script>
function addComma(num) {
	var regexp = /\B(?=(\d{3})+(?!\d))/g;
    return num.toString().replace(regexp, ',');
}
</script>

<div class="col-md-10" style="height:45%">
	<table id="deliveryTable" class="table table-bordered" style="width:100%;">
	    <tbody>
	    	인도할 차량
		    <script>
		    var str = "";
			    <c:forEach items="${list1 }" var="list1">
			        str += "<tr>";
			        str += "<td style='width:5%;'><img class='zoom' src='/resources/IMG/car/${list1.vmodel}.png' alt='' style='height:50px;'/></td>";
			        str += "<td>${list1.vtype} </td>";
			        str += "<td>${list1.vmodel} ${list1.vyear } </td>"; 
			        str += "<td>${list1.vmaker} </td>";
			        str += "<td>${list1.voil} </td>"; 
			        str += "<td>${list1.vcolor} </td>"; 
			        str += "<td>"+addComma("${list1.vprice}")+"원</td>"; 
			        str += "</tr>";
			     </c:forEach>
			     $("#deliveryTable").html(str);
			</script>
	    </tbody>
	</table>
</div>
<div class="col-md-10" style="height:45%">
	<table id="returnTable" class="table table-bordered" style="width:100%;height:50%">
	    <tbody>
			반납할 차량
			<script>
		    var str = "";
			    <c:forEach items="${list2 }" var="list2">
			        str += "<tr>";
			        str += "<td style='width:5%;'><img class='zoom' src='/resources/IMG/car/${list2.vmodel}.png' alt='' style='height:50px;'/></td>";
			        str += "<td>${list2.vtype} </td>";
			        str += "<td>${list2.vmodel} ${list2.vyear } </td>"; 
			        str += "<td>${list2.vmaker} </td>";
			        str += "<td>${list2.voil} </td>"; 
			        str += "<td>${list2.vcolor} </td>"; 
			        str += "<td>"+addComma("${list2.vprice}")+"원</td>"; 
			        str += "</tr>";
			     </c:forEach>
			     $("#returnTable").html(str);
			</script>
	    </tbody>
	</table>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>