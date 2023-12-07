import 'package:quizzler/question.dart';

class QuizBrain{
  int _questionNumber = 0;

  List<Question> _questionBank=[
    Question('Youtube bir resim platformudur.', false),
    Question('Kelebeklerin ömrü bir günndür', false),
    Question('Develer hiçbir şey yemeden 100 gün yaşayabilir.', false),
    Question('2.Dünya savaşı Abraham Lincoln tarafından başlatılmıştır.', false),
    Question('Alternatif akımı Nikola Tesla icat etmiştir.', true),
    Question('Yıldırım aynı yere iki kere düşmez.', false),
    Question('Kuzey yarım kürede Ağustos, yaz ayıdır.', true),
    Question('Gitar vurmalı bir çalgıdır.', false),
    Question('Kuzey yarım kürede Güney kutubu vardır', false),
    Question('İnsanların 2 kolu ve burnu vardır', false),
    Question('2 kere 2 4 eder', true),



  ];
void nextQuestion(){
  if (_questionNumber<_questionBank.length-1){
    _questionNumber++;
  }
  print(_questionNumber);
  print(_questionBank.length);
}



  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }
bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
}
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}


