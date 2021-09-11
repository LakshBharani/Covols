/// FeedbackForm is a data class which stores data fields of Feedback.
class FeedbackForm {
  String name;
  String mobileNo;
  String doorNo;
  String feedback;

  FeedbackForm(this.name, this.mobileNo, this.doorNo, this.feedback);

  factory FeedbackForm.fromJson(dynamic json) {
    return FeedbackForm("${json['name']}", "${json['mobileNo']}",
        "${json['doorNo']}", "${json['feedback']}");
  }

  // Method to make GET parameters.
  Map toJson() => {
        'name': name,
        'mobileNo': mobileNo,
        'doorNo': doorNo,
        'feedback': feedback
      };
}
