import 'package:quizzler_app/main.dart';

import 'questions.dart';

class QuizBrain{

  int _questionNO=0;

  List<Question> _questionBank=[
    Question('You can lead a cow down stairs but not up stairs.',false),
    Question( 'Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.',true ),
    Question('Prince William is 1.91m, Prince Harry is 1.86m', true),
    Question('M&M stands for Mars and Murrie',true),
    Question('Marrakesh is the capital of Morocco',false),
    Question('Gin is typically included in a Long Island Iced Tea', true),
    Question('There are 219 episodes of Friends', false),
    Question('A is the most common letter used in the English language', false),
    Question('A lion\'s roar can be heard up to eight kilometres away', true),
    Question('In Harry Potter, Draco Malfoy has no siblings', false),
    Question('H&M stands for Hennes & Mauritz', true),



  ];
   void nextQuestion(){
     if(_questionNO< _questionBank.length-1){
       _questionNO++;
     }

   }
  String getQuestionText(){
    return _questionBank[_questionNO].questionsToAsk;
  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNO].questionAnswer;
  }
  bool isFinished(){
     if(_questionNO >=_questionBank.length-1){
       print('the question is not over');
       return true;
     }else{
       return false;
     }
  }
  void reset(){
     _questionNO=0;
  }
}