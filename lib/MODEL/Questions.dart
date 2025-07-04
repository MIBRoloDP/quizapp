import 'package:flutter/material.dart';

class Questions extends StatefulWidget {

  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}


class _QuestionsState extends State<Questions> {

  final List<Map<String, Object>> _questions = [
    {
      'question': 'Which country has the highest life expectancy?',
      'options': ['Hongkong','Japan','USA','Australia'],
      'answer': 'Hongkong'},
    {
      'question': 'How many minutes are in a full week?',
      'options': ['10080', '10300', '10567', '10234'],
      'answer': '10080',
    },
    {
      'question': 'Who was the Ancient Greek God of the Sun?',
      'options': ['Levayation', 'Thor', 'Apollo', 'Zeus'],
      'answer': 'Apollo',
    },
    {
      'question': 'What phone company produced the 3310?',
      'options': ['Apple', 'Samsung', 'Nokia', 'Redmi'],
      'answer': 'Nokia',
    },{
      'question': 'What is acrophobia a fear of?',
      'options': ['Dots', 'Height', 'Water', 'Humans'],
      'answer': 'Height',
    },{
      'question': 'How many dots appear on a pair of dice?',
      'options': ['48', '42', '44', '46'],
      'answer': '42',
    },{
      'question': 'What software company is headquartered in Redmond, Washington?',
      'options': ['Microsoft', 'Adobe', 'Apple', 'Zen'],
      'answer': 'Microsoft',
    },{
      'question': 'Aureolin is a shade of what color?',
      'options': ['Red', 'Blue', 'Yellow', 'Green'],
      'answer': 'Yellow',
    },

  ];

  int _currentIndex = 0;
  int _score = 0;

  void _checkAnswer(String selected) {
    String correct = _questions[_currentIndex]['answer'] as String;

    if (selected == correct) {
      _score++;
    }

    setState(() {
      _currentIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      _currentIndex = 0;
      _score = 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    bool quizFinished = _currentIndex >= _questions.length;

    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(title: Text('Flutter Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: quizFinished
            ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Quiz Completed!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Your Score: $_score  / ${_questions.length}',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _restartQuiz,
                child: Text('Restart Quiz'),
              ),
            ],
          ),
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${_currentIndex + 1} of ${_questions.length}',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              _questions[_currentIndex]['question'] as String,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
            ),
            SizedBox(height: 25),
            ...(_questions[_currentIndex]['options'] as List<String>).map(
                  (option) => Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15.0),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () => _checkAnswer(option),
                  child: Text(option),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
