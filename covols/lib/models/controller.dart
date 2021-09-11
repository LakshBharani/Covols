import 'feedback_form.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class FormController {
  final void Function(String) callback;
  static const String URL =
      "https://script.google.com/macros/s/AKfycbzm1HPb93cdOj0ZxcDbbZ0lfLWeHUwl8g9uLRXQgg/exec";
  static const STATUS_SUCCESS = "SUCCESS";
  FormController(this.callback);
  void submitForm(FeedbackForm feedbackForm) async {
    try {
      await http.get(URL + feedbackForm.toParams()).then((response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      print(e);
    }
  }
}
