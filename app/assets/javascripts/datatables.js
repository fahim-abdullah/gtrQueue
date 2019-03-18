$(document).on('turbolinks:load', function() {
	var orderTable = $('#order-table').DataTable({
		"order": [[ 2, 'desc' ]]
	});
	var statusTable = $('#status-table').DataTable({
		"order": [[ 3, 'asc' ]]
	});
	var requestsTable = $('#requests-table').DataTable({
		"order": [[ 2, 'asc' ]]
	});
	var progressTable = $('#progress-table').DataTable({
		"order": [[ 2, 'desc' ]]
	});
	var deliveryTable = $('#delivery-table').DataTable({
		"order": [[ 3, 'asc' ]]
	});

	document.addEventListener("turbolinks:before-cache", function() {
	  if (orderTable !== null) {
	   orderTable.destroy();
	   orderTable = null;
	  }
	  if (statusTable !== null) {
	   statusTable.destroy();
	   statusTable = null;
	  }
	  if (requestsTable !== null) {
	   requestsTable.destroy();
	   requestsTable = null;
	  }
	  if (progressTable !== null) {
	   progressTable.destroy();
	   progressTable = null;
	  }
	  if (deliveryTable !== null) {
	   deliveryTable.destroy();
	   deliveryTable = null;
	  }
	});
});