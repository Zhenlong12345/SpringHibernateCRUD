$(function() {
	// code for jquery dataTable show all category
	var $table = $('#employeeTable');
	if ($table.length) {
		var jsonURL = window.contextRoot + '/json/data/allemployee';//ajax
		$table.DataTable({
					ajax : {
						url : jsonURL,
						dataSrc : ''
					},
					columns : [
							{
								data : 'name'
							},
							{
								data : 'country'
							},
							{
								data : 'id',
								mRender : function(data, type, row) {
									var str = '';
									str += '<a href="' + window.contextRoot
											+ '/employee/update/'
											+ data + '">Edit |</a>';
									str += '<a href="' + window.contextRoot
											+ '/employee/delete/'
											+ data + '"> Delete </a>';
									return str;
								}

							} ],

					lengthMenu : [ [ 5, 10, -1 ],
							[ '5 records', '10 records', 'All' ] ],
					pageLength : 5
				});
	}
})