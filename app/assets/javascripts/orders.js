$(document).on('turbolinks:load', function() {
	$('#order-table').DataTable({
		"order": [[ 2, 'desc' ]]
	});
	$('#status-table').DataTable({
		"order": [[ 3, 'asc' ]]
	});
	$('#requests-table').DataTable({
		"order": [[ 2, 'asc' ]]
	});
	$('#progress-table').DataTable({
		"order": [[ 2, 'desc' ]]
	});
	$('#delivery-table').DataTable({
		"order": [[ 3, 'desc' ]]
	});
});