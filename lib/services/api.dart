import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

var users;

getUsers () async {
	var req = await http.get("");
	users = convert.jsonDecode(req.body);
	users.forEach((user){
		return user;
	});
}
