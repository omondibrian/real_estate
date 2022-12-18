import 'dart:convert';

import 'package:tenants/domain/property/entity/unit_entity.dart';

class UnitDTO {
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

  UnitDTO({
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
    required this.pricePerMonth
  });

  /// instantiates an empty obj with default values
  UnitDTO.initial({
    this.id = '',
    this.room = '',
    this.imageUrl = '',
    this.contact = '',
    this.state = false,
    this.livingSpace = '',
    this.propertyId = '',
    this.type = '',
    this.ammenities = const [],
    this.baths = 0,
    this.bedroom = 0,
    this.pricePerMonth = "\$ 0.0"
  });

  factory UnitDTO.fromMap(Map<String, dynamic> map) {
    return UnitDTO(
      room: map["room"],
      imageUrl: map["imageUrl"],
      contact: map["contact"],
      state: map["state"],
      livingSpace: map["livingSpace"],
      ammenities: List<String>.from(map["ammenities"]),
      propertyId: map["propertyId"],
      type: map["type"] ?? "Normal",
      baths: map["baths"] ?? 1,
      bedroom: map["bedroom"] ?? 1,
      pricePerMonth: map["pricePerMonth"] ??  "\$ 0.0",
    );
  }
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map.addAll({'id': id});
    map.addAll({'room': room});
    map.addAll({'imageUrl': imageUrl});
    map.addAll({'contact': contact});
    map.addAll({'state': state});
    map.addAll({'livingSpace': livingSpace});
    map.addAll({'ammenities': ammenities});
    map.addAll({'propertyId': propertyId});
    map.addAll({'type': type});
    map.addAll({'baths': baths});
    map.addAll({'bedroom': bedroom});
    map.addAll({'pricePerMonth': pricePerMonth});
    return map;
  }

  String toJson() => json.encode(toMap());

  factory UnitDTO.fromJson(String source) {
    return UnitDTO.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  UnitEntity toEntity() => UnitEntity(
        room: room,
        imageUrl: imageUrl,
        contact: contact,
        state: state,
        livingSpace: livingSpace,
        ammenities: ammenities,
        propertyId: propertyId,
        type: type,
        baths: baths,
        bedroom: bedroom,
        pricePerMonth: pricePerMonth
      );

  factory UnitDTO.fromEntity(UnitEntity entity) => UnitDTO(
        room: entity.room,
        imageUrl: entity.imageUrl,
        contact: entity.contact,
        state: entity.state,
        livingSpace: entity.livingSpace,
        ammenities: entity.ammenities,
        propertyId: entity.propertyId,
        type: entity.type,
        baths: entity.baths,
        bedroom: entity.bedroom,
        pricePerMonth: entity.pricePerMonth
      );
  UnitDTO copyWith({
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
    return UnitDTO(
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
