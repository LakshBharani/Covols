import 'dart:convert' as convert;
import 'form.dart';
import 'package:http/http.dart' as http;

// import '../model/form.dart';

/// FormController is a class which does work of saving FeedbackForm in Google Sheets using
/// HTTP GET request on Google App Script Web URL and parses response and sends result callback.
class FormController {
  // Google App Script Web URL.
  static const String URL =
      "https://script.googleusercontent.com/macros/echo?user_content_key=ezUrjHcgLWtTXV59r7_zyr-XM9Mezpdx3uXOTbPKJ2joT2UtGVAXelqdfSJR4d5_RBsnYOMkHoysAEsRYVtG0X8cqZwTs2Kum5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnMHN6y2YtuY0IxBjS9KpDf94RgysdPUPuVPvaEtr8aGD3QvQly_JCh8K7LL4y8qGbODFKKgniuu_U_UiM0TuhcCHSuIGUO9Mitz9Jw9Md8uu&lib=MDMKb9F9QFcaYS7O_1F95jgyh5cL4rHl2";

  // Success Status Message
  static const STATUS_SUCCESS = "SUCCESS";

  /// Async function which saves feedback, parses [feedbackForm] parameters
  /// and sends HTTP GET request on [URL]. On successful response, [callback] is called.
  void submitForm(
      FeedbackForm feedbackForm, void Function(String) callback) async {
    try {
      await http.post(URL, body: feedbackForm.toJson()).then((response) async {
        if (response.statusCode == 302) {
          var url = response.headers['location'];
          await http.get(url).then((response) {
            callback(convert.jsonDecode(response.body)['status']);
          });
        } else {
          callback(convert.jsonDecode(response.body)['status']);
        }
      });
    } catch (e) {
      print(e);
    }
  }

  /// Async function which loads feedback from endpoint URL and returns List.
  Future<List<FeedbackForm>> getFeedbackList() async {
    return await http.get(URL).then((response) {
      var jsonFeedback = convert.jsonDecode(response.body) as List;
      return jsonFeedback.map((json) => FeedbackForm.fromJson(json)).toList();
    });
  }
}
