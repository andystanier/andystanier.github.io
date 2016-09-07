var http = require("http");
var fs = require("fs");

function respond404(response){
	response.writeHead(404, {"Content-Type" : "text/plain"});
	response.write('Error 404, file not found');
	response.end();
}

function onRequest(request, response){
	if(request.method == 'GET' && request.url == '/'){
		response.writeHead(200, {"Content-Type" : "text/html"});
		fs.createReadStream("./index_real.html").pipe(response);
		// response.writeHead(200, {"Content-Type" : "text/css"});
		// fs.createReadStream("../andystanier.github.io/css/main.css").pipe(response);
	}
	else{
		respond404(response);
	}
}

http.createServer(onRequest).listen(8888);
console.log("server is running..");