import 'package:http/http.dart' as http;

import '../Models/Student.dart';


Future<http.Response> sendAStudent(Student student,String url) {
  return http.post(
    Uri.parse('url'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: student.toJson(),
  );
}