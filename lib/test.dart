import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
  Future sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
}) async {
  final serviceId='service_a67fd4u';
  final templateId='template_i2da2ym';
  final userId='-EujMOvPs2UnUHa3t';
final url=Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
final Response = await http.post(url,
headers: {
  'origin':'http://localhost',
  'Content-Type':'application/json',
},
body: {
 'service_id':serviceId, 
 'template_id':templateId, 
 'user_id':userId, 
 'template-params':{
  'user-name':name,
  'user-email':email,
  'user-subject':subject,
  'user-message':message,
 }
}
);
}
class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);
    @override
  Widget build(BuildContext context) {
    return Scaffold(body:
     Center(
      child: ElevatedButton(onPressed:()=>  sendEmail(email: 'test@gmail.com',message: 'test message',name: 'testUser',subject: 'testSubject'), child: const Text('test email')),));
  }}