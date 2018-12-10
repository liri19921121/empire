var stompClient = null;

function setConnected(connected) {
	$("#connect").prop("disabled", connected);
	$("#disconnect").prop("disabled", !connected);
	if (connected) {
		$("#conversation").show();
	} else {
		$("#conversation").hide();
	}
	$("#greetings").html("");
}

// ~ (void) connect(headers, connectCallback)
// ~ (void) connect(headers, connectCallback, errorCallback)
// ~ (void) connect(login, passcode, connectCallback)
// ~ (void) connect(login, passcode, connectCallback, errorCallback)
// ~ (void) connect(login, passcode, connectCallback, errorCallback,
// closeEventCallback)
// ~ (void) connect(login, passcode, connectCallback, errorCallback,
// closeEventCallback, host)
function connect() {
	var socket = new SockJS('http://192.168.1.47:8082/stompEndpoint');
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame) {
		setConnected(true);
		console.log('Connected: ' + frame);
		// # (Object) subscribe(destination, callback, headers = {})
		stompClient.subscribe('/subscribe', function(greeting) {
			showGreeting(greeting.body);
		});
	});
}

// # (void) disconnect(disconnectCallback, headers = {})
function disconnect() {
	if (stompClient !== null) {
		stompClient.disconnect();
	}
	setConnected(false);
	console.log("Disconnected");
}

// # (void) send(destination, headers = {}, body = '')
function sendName() {
	stompClient.send("/stompMessage", {}, $("#name").val());
}

function sendFile() {

	$.ajaxFileUpload({
		fileElementId : "fileIn",
		type : "POST",
		url : "/brodcast",
		complete : function(data) {
			console.info("/fileIn request complete");
			// stompClient.send("/app/files", {}, $("#name").val());
		}
	});

}

function showGreeting(message) {
	$("#greetings").append("<tr><td>" + message + "</td></tr>");
}

$(function() {
	$("form").on('submit', function(e) {
		e.preventDefault();
	});
	$("#connect").click(function() {
		connect();
	});
	$("#disconnect").click(function() {
		disconnect();
	});
	$("#send").click(function() {
		sendName();
	});
	$("#sendFile").click(function() {
		sendFile();
	});
});