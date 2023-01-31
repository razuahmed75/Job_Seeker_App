class GetUserData {
  GetUserData({
    this.name,
    this.gender,
    this.portfolioUrl,
    this.age,
    this.bio,
    this.experience,
    this.education,
  });

  String? name;
  String? gender;
  dynamic portfolioUrl;
  int? age;
  dynamic bio;
  dynamic experience;
  List<dynamic>? education;

  factory GetUserData.fromJson(Map<String, dynamic> json) => GetUserData(
        name: json["name"],
        gender: json["gender"],
        portfolioUrl: json["portfolioURL"],
        age: json["age"],
        bio: json["bio"],
        experience: json["experience"],
        education: List<dynamic>.from(json["education"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "gender": gender,
        "portfolioURL": portfolioUrl,
        "age": age,
        "bio": bio,
        "experience": experience,
        "education": List<dynamic>.from(education!.map((x) => x)),
      };
}
