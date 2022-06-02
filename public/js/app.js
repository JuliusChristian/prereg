var _map = null;
var _markers = [];
var _records = [];

$(document).ready(function() { 
	//$('body').bootstrapMaterialDesign(); 

	// landing page google map
	_map = initGoogleMap("project-map");
	// edit form google map
	initGoogleMap("location-picker-map");

	// landing page map filter 
	if ($("#open-filters-btn").length){
		$("#open-filters-btn").click(function (){
			if ($("#filter-form-panel").length){
				$("#filter-form-panel").width(268);
				//$("#filter-form-panel").height(585);
			}
		});
	}

	if ($(".close-filters-btn").length){
		$(".close-filters-btn").click(function (){
			if ($("#filter-form-panel").length){
				$("#filter-form-panel").width(0);
				//$("#filter-form-panel").height(0);
			}
		});
	}

	if ($("#filter-form-panel").length){
		$("#filter-form-panel").width(0);
		//$("#filter-form-panel").height(0);
	}

	if ($("#filter-form")){
		$("#filter-form").submit(function (e){
			e.preventDefault();
			postAjaxForm(
				"#filter-form",
				function (data, textStatus, jqXHR) {
					parseMapData(_map, data);
				},
				function (jqXHR, textStatus, errorThrown) {
				},
				function() {
				}
			);
		});
	}

	if ($("#project-map").length){
		definePopupClass();
		postAjaxForm(
			"#filter-form",
			function (data, textStatus, jqXHR) {
				parseMapData(_map, data);
			},
			function (jqXHR, textStatus, errorThrown) {
				alert(textStatus);
			},
			function() {
			}
		);
	}

});


var _info_popup = null;

function parseMapData(gmap, data){
	if (data.count == 0) return;
	deleteMarkers();
	_records = data.records;
	_info_popup = new Popup(
			new google.maps.LatLng(_latitude, _longitude),
			document.getElementById('info-wrapper'));

	$('#info-close').click(function (){
		_info_popup.setMap(null);

	});


	for (var i = 0; i < data.count; i++) {
		console.log(i + ' - ' + data.records[i].prj_type_id);
		addMarker(gmap, i, data.records[i]);
	}
	//showMarkers(map);
}


function addMarker(gmap, index, record){
	//console.log("add marker called - " + index  + " - " + icon_path);
	var pos = new google.maps.LatLng(record.prj_latitude, record.prj_longitude);
	var image = {
		url: record.marker_image,
		size: new google.maps.Size(47, 41),
		origin: new google.maps.Point(0, 0),
		anchor: new google.maps.Point(24, 41)
	}

	var marker = new google.maps.Marker({
		position: pos,
		map: gmap,
		icon: image
	});

	marker.tag = index;
	var s = '';


	google.maps.event.addListener(marker, 'click', (function(marker, index) {
		return function() {
			// gmap.setCenter(marker.getPosition());
			$("#info-title").html(record.prj_title);
			$("#info-code").html(record.prj_code);
			$("#info-status").html(record.prj_status_name);
			$("#info-yr").html(record.prj_year_approved);

			$("#info-location").html(
				record.region_code + ', ' + 
				record.province_name + ', ' + 
				record.district_name + ' District'
			);

			$("#info-type").html(record.prj_type_name);
			$("#info-sector").html(record.sector_name);
			$("#info-beneficiaries").html(record.coop_names);
			$("#info-colaborators").html(record.collaborator_names);


			_info_popup.setMap(null);
			_info_popup.position = marker.getPosition();
			_info_popup.setMap(gmap);

			// $("#info-wrapper").css('display', 'block');
			
		}
	})(marker, index));
}

function setMapOnAll(gmap) {
	for (var i = 0; i < _markers.length; i++) {
	  _markers[i].setMap(gmap);
	}
}

function clearMarkers(){
	setMapOnAll(null);
}

function showMarkers(gmap){
	setMapOnAll(gmap);
}

function deleteMarkers(){
	clearMarkers();
	_markers = [];
}

function postAjaxForm(form, onPostSuccess, onPostError, onAfterPost){
	var request = $.ajax({
		method : $(form).attr('method'),
		url: $(form).attr('action'),
		data: $(form).serialize(),
		dataType: ""
	})
	if (typeof onPostSuccess === "function"){
		request.done(function (data, textStatus, jqXHR){
			onPostSuccess(JSON.parse(data));
		});
	}

	if (typeof onPostError === "function"){
		request.fail(function (jqXHR, textStatus, errorThrown){
			onPostError(jqXHR, textStatus, errorThrown);
		});
	}

	if (typeof onAfterPost === "function"){
		request.always(function (){
			onAfterPost();
		});
	}
}


function showLoader(){
	if (!$("#loader-modal").length) return;
	/*
	if ($("#loader-modal-title").length){
		$("#loader-modal-title").html(title);
	}

	$("#loader-modal").modal({
		backdrop: "static",
		keyboard: false

	});
	*/

	$("#alert-modal").modal('handleUpdate');


	$("#loader-modal").modal('show');

}

function hideLoader(){
	if (!$("#loader-modal").length) return;
	console.log('hideLoader called')
	/*
	$("#loader-modal").modal({
		backdrop: true,
		keyboard: true
	});

	$("#alert-modal").modal('handleUpdate');
	$("#loader-modal").modal('show');
	*/
	$("#loader-modal").modal('hide');
}


function showAlert(title, msg){
	if (!$("#alert-modal").length) return;
	if ($("#alert-modal-title").length){
		$("#alert-modal-title").html(title);
	}
	if ($("#alert-modal-body").length){
		$("#alert-modal-body").html(msg);
	}

	$("#alert-modal").modal('handleUpdate');
	$("#alert-modal").modal('show');

}

function showConfirm(title, msg, url){
	if (!$("#confirm-modal").length) return;
	if ($("#confirm-modal-title").length){
		$("#confirm-modal-title").html(title);
	}
	if ($("#confirm-modal-body").length){
		$("#confirm-modal-body").html(msg);
	}

	$("#confirm-modal").modal('handleUpdate');
	$("#confirm-modal").modal('show');
}

function initGoogleMap(target){
	if (!$("#"+target).length) return null;
	var map = new google.maps.Map(document.getElementById(target), {
		zoom: 11,
		center: new google.maps.LatLng(_latitude, _longitude),
		minZoom: 5,
		mapTypeControl: false,
		streetViewControl: false,
		fullscreenControl: false,
		zoomControlOptions:{
			position: google.maps.ControlPosition.TOP_RIGHT
		}
	});

	return map;
}

// *******************************************************************************************************

/** Defines the Popup class. */
function definePopupClass() {
  /**
   * A customized popup on the map.
   * @param {!google.maps.LatLng} position
   * @param {!Element} content
   * @constructor
   * @extends {google.maps.OverlayView}
   */
  Popup = function(position, content) {
    this.position = position;
    this.content = content;
/*
    content.classList.add('popup-bubble-content');

    var pixelOffset = document.createElement('div');
    pixelOffset.classList.add('popup-bubble-anchor');
    pixelOffset.appendChild(content);

    this.anchor = document.createElement('div');
    this.anchor.classList.add('popup-tip-anchor');
    this.anchor.appendChild(pixelOffset);
*/
    // Optionally stop clicks, etc., from bubbling up to the map.
    this.stopEventPropagation();
  };
  // NOTE: google.maps.OverlayView is only defined once the Maps API has
  // loaded. That is why Popup is defined inside initMap().
  Popup.prototype = Object.create(google.maps.OverlayView.prototype);

  /** Called when the popup is added to the map. */
  Popup.prototype.onAdd = function() {
    this.getPanes().floatPane.appendChild(this.content);
  };

  /** Called when the popup is removed from the map. */
  Popup.prototype.onRemove = function() {
    if (this.content.parentElement) {
      this.content.parentElement.removeChild(this.content);
    }
  };

  /** Called when the popup needs to draw itself. */
  Popup.prototype.draw = function() {
    var divPosition = this.getProjection().fromLatLngToDivPixel(this.position);
    // Hide the popup when it is far out of view.
    var display =
        Math.abs(divPosition.x) < 4000 && Math.abs(divPosition.y) < 4000 ?
        'block' :
        'none';
    var width = this.content.offsetWidth;
    var height = this.content.offsetHeight;


    if (display === 'block') {
      this.content.style.left = (divPosition.x - (width / 2)) + 'px';
      this.content.style.top = (divPosition.y - height) + 'px';
    }
    if (this.content.style.display !== display) {
      this.content.style.display = display;
    }
  };

  /** Stops clicks/drags from bubbling up to the map. */
  Popup.prototype.stopEventPropagation = function() {
    var content = this.content;
    content.style.cursor = 'auto';

    ['click', 'dblclick', 'contextmenu', 'wheel', 'mousedown', 'touchstart',
     'pointerdown']
        .forEach(function(event) {
          content.addEventListener(event, function(e) {
            e.stopPropagation();
          });
        });
  };
}
