import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> arguments)async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  // make http get request
  var response = await http.get(url);
  // check the status code for the result  
  if (response.statusCode == 200) {
    final requestBody = jsonDecode(response.body);
   print(requestBody);
   print(requestBody.runtimeType);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }  
}
