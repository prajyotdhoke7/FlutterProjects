import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List allQuestions = [
    {
      "question": "Who is the God of Cricket?",
      "options": ["Virat", "MsD", "Rohit", "Sachin"],
      "correctOption": 3,
    },
    {
      "question": "Who is the King of Cricket?",
      "options": ["Virat", "MsD", "Rohit", "Sachin"],
      "correctOption": 0,
    },
    {
      "question": "Who is Konwn as Captin Cool?",
      "options": ["Virat", "MsD", "Rohit", "Sachin"],
      "correctOption": 1,
    },
    {
      "question": "Who is konwn as Hitman?",
      "options": ["Virat", "MsD", "Rohit", "Sachin"],
      "correctOption": 2,
    },
    {
      "question": "Who is konwn as Gabar?",
      "options": ["Virat", "MsD", "Rohit", "Shikar"],
      "correctOption": 3,
    }
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int correctAnswer = 0;
  bool questionPage = true;

  int score(int a) {
    if (allQuestions[currentQuestionIndex]["correctOption"] == a) {
      correctAnswer++;
    }
    return correctAnswer;
  }

  WidgetStateProperty<Color?> checkAnswer(int answerClick) {
    if (selectedAnswerIndex != -1) {
      if (answerClick == allQuestions[currentQuestionIndex]["correctOption"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerClick) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 73, 150, 173),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 40, 53, 60),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                SizedBox(
                  height: 55,
                  width: 200,
                  child: Text(
                    "Questions: ${currentQuestionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(fontSize: 26),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              // width: 00,
              child: Text(
                "Q${currentQuestionIndex + 1}. ${allQuestions[currentQuestionIndex]["question"]}",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    score(0);
                    setState(() {});
                  }
                },
                child: Text(
                  "A).${allQuestions[currentQuestionIndex]["options"][0]}",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    score(1);
                    setState(() {});
                  }
                },
                child: Text(
                  "B).${allQuestions[currentQuestionIndex]["options"][1]}",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    score(2);
                    setState(() {});
                  }
                },
                child: Text(
                  "C).${allQuestions[currentQuestionIndex]["options"][2]}",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    score(3);
                    setState(() {});
                  }
                },
                child: Text(
                  "D).${allQuestions[currentQuestionIndex]["options"][3]}",
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz Result"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.network(
                "https://imgs.search.brave.com/cQDR2EVhGf5eFgJx24h0oYlLVbc1N0KhH3lPc-037W0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAyLzg0LzY3LzAy/LzM2MF9GXzI4NDY3/MDI4Nl9WQjRFRW5T/MDFzYnFsdWVpRmth/OUJPM1M1YkVGaG54/Mi5qcGc",
              ),
              Text(
                "Score:$correctAnswer/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
