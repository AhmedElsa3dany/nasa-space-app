import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/costants.dart';

class QuizView extends StatefulWidget {
  @override
  _QuizViewState createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  int correctAnswers = 0; // عدد الإجابات الصحيحة
  int totalQuestions = 0; // إجمالي عدد الأسئلة
  String?
      correctAnswerForCurrentQuestion; // تخزين الإجابة الصحيحة للسؤال الحالي
  bool answerSelected = false; // حالة إذا تم اختيار إجابة
  String? selectedAnswer; // لتخزين الإجابة المختارة

  List<Map<String, dynamic>> questions = [
    {
      'question':
          'What makes Kepler-186f significant in the study of exoplanets?',
      'image': 'assets/images/kepler11.jpg',
      'answers': [
        'a) It is the largest exoplanet discovered.',
        'b) First Earth-sized exoplanet in the habitable zone',
        'c) It is the closest exoplanet to Earth.',
        'd) It has an atmosphere rich in oxygen.',
      ],
      'correctAnswer': 'b) First Earth-sized exoplanet in the habitable zone',
    },
    {
      'question': 'Why is Proxima Centauri b considered special?',
      'image': 'assets/images/Proxima Centauri b.jpeg',
      'answers': [
        'a) It has two moons.',
        'b) It is larger than Jupiter.',
        'c) Closest exoplanet to Earth',
        'd) It orbits two stars at once.',
      ],
      'correctAnswer':
          'c) Closest exoplanet to Earth, located in the habitable zone',
    },
    {
      'question': 'What is one unique feature of TRAPPIST-1e?',
      'image': 'assets/images/TRAPPIST-1e.jpg',
      'answers': [
        'a) It orbits the largest known star.',
        'b) It has rings like Saturn.',
        'c) It is a gas giant like Jupiter.',
        'd) One of seven planets around a cool dwarf star',
      ],
      'correctAnswer': 'd) One of seven planets around a cool dwarf star',
    },
    {
      'question': 'What makes LHS 1140 b a good candidate for further study?',
      'image': 'assets/images/LHS 1140 b.jpg',
      'answers': [
        'a) It has a liquid methane ocean.',
        'b) Thick atmosphere that could support life',
        'c) It orbits two stars.',
        'd) It is covered in ice.',
      ],
      'correctAnswer': 'b) Thick atmosphere that could support life',
    },
    {
      'question': 'What recent discovery was made about K2-18b?',
      'image': 'assets/images/K2-18b.jpeg',
      'answers': [
        'a) Water vapor was detected in its atmosphere.',
        "b) It has rings like Saturn.",
        'c) It orbits a binary star system.',
        'd) It is made of pure rock.',
      ],
      'correctAnswer': 'a) Water vapor was detected in its atmosphere.',
    },
    // يمكنك إضافة المزيد من الأسئلة هنا
  ];

  int currentQuestionIndex = 0;

  void checkAnswer(String answer) {
    setState(() {
      answerSelected = true;
      selectedAnswer = answer; // تخزين الإجابة المختارة
      correctAnswerForCurrentQuestion =
          questions[currentQuestionIndex]['correctAnswer'];

      totalQuestions++;
      if (answer == correctAnswerForCurrentQuestion) {
        correctAnswers++;
      }

      // بعد 5 أسئلة، عرض النتيجة النهائية
      if (totalQuestions >= 5) {
        String message;
        if (correctAnswers == 5) {
          message =
              "Congratulations🎉 You're a real space explorer! Your score: 5/5";
        } else if (correctAnswers >= 3) {
          message =
              "Great🌟 job! You're an alien explorer! Your score: ${correctAnswers}/5";
        } else {
          message =
              "Don't worry📚 Keep learning! Your score: ${correctAnswers}/5";
        }

        // عرض النتيجة النهائية
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Your Score'),
              content: Text(message, textAlign: TextAlign.center),
              actions: [
                TextButton(
                  child: Text('Continue'),
                  onPressed: () {
                    GoRouter.of(context).pushReplacement('/entertainment');
                    setState(() {
                      correctAnswers = 0;
                      totalQuestions = 0;
                      currentQuestionIndex = 0;
                      answerSelected = false;
                      selectedAnswer = null;
                    });
                  },
                ),
              ],
            );
          },
        );
      } else {
        // الانتقال للسؤال التالي
        currentQuestionIndex = (currentQuestionIndex + 1) % questions.length;
        answerSelected = false; // إعادة التعيين للسؤال التالي
        selectedAnswer = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kColor5,
        appBar: AppBar(
          backgroundColor: kColor5,
          title: Text(
            textAlign: TextAlign.center,
            'Space Quiz',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: kColor7),
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: FlipCard(
                  front: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            questions[currentQuestionIndex]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  back: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      color: kColor6,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          questions[currentQuestionIndex]['question'],
                          style: const TextStyle(
                              color: kColor1,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: questions[currentQuestionIndex]['answers']
                    .map<Widget>((answer) => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0), // مسافة بين العناصر
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.9, // يجعل العنصر يأخذ عرض الشاشة كله
                            child: GestureDetector(
                              onTap: () => checkAnswer(answer),
                              child: Container(
                                padding:
                                    EdgeInsets.all(16), // التحكم في حجم العنصر
                                decoration: BoxDecoration(
                                  color: kColor1, // تغيير لون العنصر
                                  borderRadius: BorderRadius.circular(
                                      20), // حواف دائرية جميلة
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.2), // ظل العنصر
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(0, 3), // تغير موضع الظل
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    answer,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: kColor6,
                                        fontWeight:
                                            FontWeight.bold), // نص العنصر
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
