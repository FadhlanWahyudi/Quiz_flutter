import 'package:quiz_app/question.dart';

class QuestionLogic {
  // penamaan variabel lokal harus di awali ( _ )
  // _questionNumber sebagai index dari array
  int _questionNumber = 0;

  // data array untuk mengisi model question
  List<Question> _questionList = [
    Question('Makan dengan tangan kanan', true),
    Question('Dari manakah asal Rendang', true),
    Question('Apakah Indonesia kalah Saat dijajah', false),
    Question('Anak anak sekarang lebih sering main gadget', true),
    Question(
        'Youtuber sekarang lebih sering giveaway dari pada menunjukan karya',
        true),
    Question('Ibukota provinsi Barat adalah padang', true),
    Question('Benua Terluas di dunia adalah Asia', true),
    Question('Penduduk afrika adalah negro', true),
    Question('Suku asli dari benua australia adalah suku dayak', false),
    Question(
        'Perindustrian Kerjasama ekonomi Asean adalah abu soda yg dibangun philipina',
        false),
  ];

  /* fungsi dari pengambilan variabel getQuestion adalah untuk mengambil question di dalam questionList Sesuai dengan index dari _qeustionNumber*/
  String getQuestion() => _questionList[_questionNumber].question;

  //fungsinya mengetahui sampai mana index sekarang
  int getQuestionNumberText() => _questionNumber + 1;

  // Fungsi dari pengambilan getTotalQuestion adalah untuk mengambil jumlah data yang ada di
  int getTotalQuestion() => _questionList.length;

  bool getCorrectAnswer() => _questionList[_questionNumber].answer;

  /*fungsi dari nextQuestion adalah untuk mengambil answer di dalam _questionListsesuai dengan index dari _questionNumber */

  void nextQuestion() {
    //
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinish() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;
}
