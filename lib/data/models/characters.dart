class Character {
  final int characterId;
  final String characterName;
  final String characterGender;
  final String characterStatus;
  final String image;
  final List<dynamic> episode;

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
      'episode': episode,
    };
  }

  factory Character.fromJson(Map<String, dynamic> map) {
    return Character(
      characterId: map['id'],
      characterName: map['name'] ,
      characterGender: map['gender'],
      characterStatus: map['status'] ,
      image: map['image'] ,
      episode: map['episode'] ,
    );
  }
}
