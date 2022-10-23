
class Models {
  Models({
    this.purchases,
    this.leaderboard,
    this.quiz,
  });

  List<List<Purchase>>? purchases;
  List<Leaderboard>? leaderboard;
  Quiz? quiz;

  factory Models.fromJson(Map<String, dynamic> json) => Models(
    purchases: List<List<Purchase>>.from(json["purchases"].map((x) => List<Purchase>.from(x.map((x) => Purchase.fromJson(x))))),
    leaderboard: List<Leaderboard>.from(json["leaderboard"].map((x) => Leaderboard.fromJson(x))),
    quiz: Quiz.fromJson(json["quiz"]),
  );

  Map<String, dynamic> toJson() => {
    "purchases": List<dynamic>.from(purchases!.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
    "leaderboard": List<dynamic>.from(leaderboard!.map((x) => x.toJson())),
    "quiz": quiz!.toJson(),
  };
}

class Leaderboard {
  Leaderboard({
    this.id,
    this.userImageUrl,
    this.firstName,
    this.lastName,
    this.score,
  });

  String? id;
  String? userImageUrl;
  String? firstName;
  String? lastName;
  double? score;

  factory Leaderboard.fromJson(Map<String, dynamic> json) => Leaderboard(
    id: json["id"],
    userImageUrl: json["user_image_url"] == null ? null : json["user_image_url"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    score: json["score"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_image_url": userImageUrl == null ? null : userImageUrl,
    "first_name": firstName,
    "last_name": lastName,
    "score": score,
  };
}

class Purchase {
  Purchase({
    this.title,
    this.subTitle,
    this.price,
    this.playsCount,
    this.showBadge,
  });

  String? title;
  String? subTitle;
  double? price;
  int? playsCount;
  bool? showBadge;

  factory Purchase.fromJson(Map<String, dynamic> json) => Purchase(
    title: json["title"],
    subTitle: json["sub_title"] == null ? null : json["sub_title"],
    price: json["price"].toDouble(),
    playsCount: json["plays_count"],
    showBadge: json["show_badge"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "sub_title": subTitle == null ? null : subTitle,
    "price": price,
    "plays_count": playsCount,
    "show_badge": showBadge,
  };
}

class Quiz {
  Quiz({
    this.questions,
  });

  List<Question>? questions;

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
    questions: List<Question>.from(json["questions"].map((x) => Question.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "questions": List<dynamic>.from(questions!.map((x) => x.toJson())),
  };
}

class Question {
  Question({
    this.questionId,
    this.questionText,
    this.questionSeconds,
    this.questionImageUrl,
    this.answers,
  });

  String? questionId;
  String? questionText;
  int? questionSeconds;
  String? questionImageUrl;
  List<Answer>? answers;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    questionId: json["question_id"],
    questionText: json["question_text"],
    questionSeconds: json["question_seconds"],
    questionImageUrl: json["question_image_url"] == null ? null : json["question_image_url"],
    answers: List<Answer>.from(json["answers"].map((x) => Answer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "question_id": questionId,
    "question_text": questionText,
    "question_seconds": questionSeconds,
    "question_image_url": questionImageUrl == null ? null : questionImageUrl,
    "answers": List<dynamic>.from(answers!.map((x) => x.toJson())),
  };
}

class Answer {
  Answer({
    this.answerText,
    this.answerId,
    this.correctAnswer,
  });

  String? answerText;
  String? answerId;
  bool? correctAnswer;

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
    answerText: json["answer_text"],
    answerId: json["answer_id"],
    correctAnswer: json["correct_answer"],
  );

  Map<String, dynamic> toJson() => {
    "answer_text": answerText,
    "answer_id": answerId,
    "correct_answer": correctAnswer,
  };
}
