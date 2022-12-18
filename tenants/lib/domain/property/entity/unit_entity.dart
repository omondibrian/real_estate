class UnitEntity {
  final String? id;
  final String room;
  final String imageUrl;
  final String contact;
  final bool state;
  final String livingSpace;
  final List<String> ammenities;
  final String propertyId;
  final String type;
  final double baths;
  final int bedroom;
  final String pricePerMonth;
  
  UnitEntity( {
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
    required this.pricePerMonth,
  });

  UnitEntity copyWith({
    String? id,
    String? room,
    String? imageUrl,
    String? contact,
    bool? state,
    String? livingSpace,
    List<String>? ammenities,
    String? propertyId,
    String? type,
    double? baths,
    int? bedroom,
    String? pricePerMonth
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
      pricePerMonth: pricePerMonth ?? this.pricePerMonth,
    );
  }
}
