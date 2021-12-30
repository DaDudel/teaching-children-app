class UserScore {
  String nickname;
  int points;

  UserScore(this.nickname, this.points);

  UserScore.fromJson(Map<String, Object?> json)
      : this(
          json['nickname']! as String,
          json['points']! as int,
        );
}
