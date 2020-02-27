import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

var users;

getUsers () async {
	var req = await http.get("http://my-json-server.typicode.com/OmarYehiaDev/E-Soor/db");
	var headers = await http.get("http://my-json-server.typicode.com/OmarYehiaDev/E-Soor/db", headers: {
		'Content-Type': 'application/json',
	});
	users = convert.jsonDecode(req.body);
	users.forEach((user){
		return user;
	});
}
