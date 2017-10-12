<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>

<link
	href="<c:url value="/resources/dist/themes/default/style.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/style.css" />" rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>

<script src="<c:url value="/resources/dist/jstree.min.js" />"></script>
</head>
<body>
	<div align="center">
		<div id="myDiv">Hola</div>
		<h1>Hello world!</h1>
	</div>

<table border="1px" width="100%"><tr><td>Name</td><td>Budget($)</td><td>Revenue($)</td></tr></table>
	<div class="jstreeDiv" id="jstree">
		<!-- in this example the tree is populated from inline HTML -->


		<ul>
			<li class="myDiv">Total
				<ul>
					<li class="myDiv" id="child_node_1">Cable
					<ul>
					<li class="myDiv">Outdoor <span id="budgetValue">100.0</span><span id="revenueValue">250.03</span></li>
					<li class="myDiv">Radio <span id="budgetValue">100.0</span><span id="revenueValue">250.03</span></li>
					<li class="myDiv">Online Display <span id="budgetValue">100.0</span><span id="revenueValue">250.03</span></li>
					
					</ul>
					</li>
				</ul>
			</li>
		</ul>




	</div>
	<!-- <button>demo button</button> -->
	<script type="text/javascript">
		$(function() {
			// 6 create an instance when the DOM is ready
			$('#jstree').jstree();
			// 7 bind to events triggered on the tree
			$('#jstree').on("changed.jstree", function(e, data) {
				console.log(data.selected);
			});

			$('button').on('click', function() {
				$('#jstree').jstree(true).select_node('child_node_1');
				$('#jstree').jstree('select_node', 'child_node_1');
				$.jstree.reference('#jstree').select_node('child_node_1');
			});
		});
	</script>



</body>
</html>
