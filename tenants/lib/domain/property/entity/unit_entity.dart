class UnitEntity {
 final  String? id;
 final  String room;
 final  String imageUrl;
 final  String contact;
 final  bool state;
 final  String livingSpace;
 final  String ammenities;
 final  String propertyId;
 final  String type;
 final  double baths;
 final  int bedroom;

  UnitEntity({
    this.id,
    required this.room,
    required this.imageUrl,
    required this.contact,
    required this.state,
    required this.livingSpace,
    required this.ammenities,
    required this.propertyId,
    required this.type,
    required this.baths,
    required this.bedroom,
  });

  UnitEntity copyWith({
    String? id,
    String? room,
    String? imageUrl,
    String? contact,
    bool? state,
    String? livingSpace,
    String? ammenities,
    String? propertyId,
    String? type,
    double? baths,
    int? bedroom,
  }) {
    return UnitEntity(
      id: id ?? this.id,
      room: room ?? this.room,
      imageUrl: imageUrl ?? this.imageUrl,
      contact: contact ?? this.contact,
      state: state ?? this.state,
      livingSpace: livingSpace ?? this.livingSpace,
      ammenities: ammenities ?? this.ammenities,
      propertyId: propertyId ?? this.propertyId,
      type: type ?? this.type,
      baths: baths ?? this.baths,
      bedroom: bedroom ?? this.bedroom,
    );
  }
}
