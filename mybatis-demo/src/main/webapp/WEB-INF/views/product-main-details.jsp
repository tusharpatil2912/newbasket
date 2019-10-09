<%@ include file="./header.jsp"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="row">

	<!-- side bar here -->
	<div class="col-md-3">
		<h3>Brands</h3>
		<ul class="list-group">
			<c:forEach items="${brands}" var="br">
				<li class="list-group-item"><a
					href="./view-products?brand=${br}">${br}</a></li>
			</c:forEach>
		</ul>

		<h3>Categories</h3>
		<ul class="list-group">
			<c:forEach items="${categories}" var="c">
				<li class="list-group-item"><a
					href="./view-products?category=${c}">${c}</a></li>
			</c:forEach>
		</ul>

	</div>

	<!-- list of all products here -->
	<div class="col-md-9">
		<div class="row">
		
				<div class="col-md-12 col-sm-12">
			<div class="jumbotron">
				<img src="${id.picture}" class="rounded float-left" alt="${id.name}">
				<p class="lead">${id.name}</p>
				<hr class="my-4">
				<p>${id.description}</p>
				<p>${id.quantityPerUnit}</p>
				<p>&#x20B9 . ${id.unitPrice}</p>
				<a class="btn btn-primary btn-lg" href="#" role="button">Add to Cart</a>
			</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="./footer.jsp"%>