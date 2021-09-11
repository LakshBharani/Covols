// /// FeedbackForm is a data class which stores data fields of Feedback.
class FeedbackForm {
  String _name;
  String _houseno;
  String _phoneno;

  FeedbackForm(this._name, this._houseno, this._phoneno);

  String toParams() => "?name=$_name&houseno=$_houseno&phoneno=$_phoneno";
}

//String toParams() {}
