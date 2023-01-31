class Candidate {
  Candidate({
    required this.message,
    required this.data,
  });

  String message;
  Data data;

  factory Candidate.fromJson(Map<String, dynamic> json) => Candidate(
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.token,
    required this.expire,
    required this.currentRole,
    required this.isNew,
  });

  String token;
  DateTime expire;
  String currentRole;
  bool isNew;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
        expire: DateTime.parse(json["expire"]),
        currentRole: json["currentRole"],
        isNew: json["isNew"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "expire": expire.toIso8601String(),
        "currentRole": currentRole,
        "isNew": isNew,
      };
}
