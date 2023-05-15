class Character {
  int characterId;
  String characterName;
  String characterGender;
  String characterStatus;
  String image;
  List<dynamic> episode;

  Character(
      {required this.characterId,
      required this.characterName,
      required this.characterGender,
      required this.characterStatus,
      required this.image,
      required this.episode});

  Map<String, dynamic> toJson() {
    return {
      'characterId': characterId,
      'characterName': characterName,
      'characterGender': characterGender,
      'characterStatus': characterStatus,
      'image': image,
      'episode': this.episode,
    };
  }

  factory Character.fromJson(Map<String, dynamic> map) {
    return Character(
      characterId: map['id'] as int,
      characterName: map['name'] as String,
      characterGender: map['gender'] as String,
      characterStatus: map['status'] as String,
      image: map['image'] as String,
      episode: map['episode'] as List<dynamic>,
    );
  }
}
