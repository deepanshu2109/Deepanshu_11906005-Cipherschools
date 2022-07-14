<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<html>
<head>

	<link href="css/custom.css"
        rel="stylesheet">

	
</head>
<body>
	<div class="container">
	<div>
		<a type="button" class="btn-btn-primary-btn-md" href="/add-todo">Add Todo</a>
	</div>
	<br>
	<div class="panel-panel-primary">
		<div class="panel-heading">
			<h3>List of TODO's</h3>
		</div>
		<div class="panel-body">
			<table class="table-striped">
				<thead>
					<tr>
						<th width="45%" class="desc">Description</th>
						<th width="45%" class="targ">Target Date</th>
						<th width="10%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.description}</td>
							<td class="datealign"><fmt:formatDate value="${todo.targetDate}"
									pattern="dd/MM/yyyy"  /></td>
							<td><a type="button" class="btn-success"
								href="/update-todo?id=${todo.id}">Update</a>
							<a type="button" class="btn-warning"
								href="/delete-todo?id=${todo.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>

</body>
</html>


<%@ include file="common/footer.jspf"%>