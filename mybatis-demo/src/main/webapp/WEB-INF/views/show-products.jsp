<%@include file="./header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="row">
	<!-- side bar here -->
	<div class="col-md-3">
		<h3>Brands</h3>
		<ul class="list-group">
			<c:forEach items="${brands}" var="br">
				<li class="list-group-item"><a
					href="./view-products?brand=${br}">${br}</a>
			</c:forEach>

		</ul>

		<h3>Categories</h3>
		<ul class="list-group">
			<c:forEach items="${categories}" var="c">
				<li class="list-group-item"><a
					href="./view-products?category=${c}">${c}</a>
			</c:forEach>

		</ul>


	</div>

	<!-- list of all products here -->
	<div class="col-md-9">
		<div class="row">
			<c:forEach items="${products}" var="p">
				<div class="col-md-4 col-sm-6">
					<div class="card" style="width: 18rem;">
						<a href="./product-details?id=${p.id}"><img src="${p.picture}" class="card-img-top" alt="${p.name}"></a>
						<div class="card-body">
							<h5 class="card-title">${p.description}</h5>
							<p class="card-text">${p.quantityPerUnit}</p>
							<p class="card-text">&#x20B9 ${p.unitPrice}</p>
							<a href="#" class="btn btn-primary">Add to cart</a>
						</div>
					</div>
				</div>

			</c:forEach>

		</div>
	</div>

</div>


<%@include file="./footer.jsp"%>

