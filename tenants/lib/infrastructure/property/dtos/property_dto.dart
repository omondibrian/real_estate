import 'dart:convert';

import 'package:tenants/domain/property/entity/property_entity.dart';
import 'package:tenants/infrastructure/property/dtos/property_manager_dto.dart';
import 'package:tenants/infrastructure/property/dtos/unit_dto.dart';

class PropertyDTO {
  final String? id;
  final double lat;
  final double long;
  final String name;
  final String contact;
  final String imageUrl;
  final String phoneNumber;
  final PropertyManagerDTO manager;
  final List<UnitDTO> propertyUnits;
  final String? typename;
  final String? message;
  PropertyDTO({
    this.id,
    required this.lat,
    required this.long,
    required this.name,
    required this.contact,
    required this.imageUrl,
    required this.phoneNumber,
    required this.manager,
    required this.propertyUnits,
    this.typename,
    this.message,
  });
  PropertyEntity toEntity() => PropertyEntity(
        name: name,
        imageUrl: imageUrl,
        phoneNumber: phoneNumber,
        contact: contact,
        manager: manager.toEntity(),
        lat: lat,
        long: long,
        propertyUnits: propertyUnits.map((u) => u.toEntity()).toList(),
      );
  factory PropertyDTO.fromEntity(PropertyEntity entity) => PropertyDTO(
        lat: entity.lat,
        long: entity.long,
        name: entity.name,
        contact: entity.contact,
        imageUrl: entity.imageUrl,
        phoneNumber: entity.phoneNumber,
        manager: PropertyManagerDTO.fromEntity(entity.manager),
        propertyUnits:
            entity.propertyUnits.map((u) => UnitDTO.fromEntity(u)).toList(),
      );

  PropertyDTO copyWith({
    String? id,
    double? lat,
    double? long,
    String? name,
    String? contact,
    String? imageUrl,
    String? phoneNumber,
    PropertyManagerDTO? manager,
    List<UnitDTO>? propertyUnits,
    String? typename,
    String? message,
  }) {
    return PropertyDTO(
      id: id ?? this.id,
      lat: lat ?? this.lat,
      long: long ?? this.long,
      name: name ?? this.name,
      contact: contact ?? this.contact,
      imageUrl: imageUrl ?? this.imageUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      manager: manager ?? this.manager,
      propertyUnits: propertyUnits ?? this.propertyUnits,
      typename: typename ?? this.typename,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    result.addAll({'lat': lat});
    result.addAll({'long': long});
    result.addAll({'name': name});
    result.addAll({'contact': contact});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'phoneNumber': phoneNumber});
    result.addAll({'manager': manager.toMap()});
    result.addAll(
        {'propertyUnits': propertyUnits.map((x) => x.toMap()).toList()});

    return result;
  }

  factory PropertyDTO.fromMap(Map<String, dynamic> map) {
    return PropertyDTO(
      id: map['id'],
      lat: map['lat']?.toDouble() ?? 0.0,
      long: map['long']?.toDouble() ?? 0.0,
      name: map['name'] ?? '',
      contact: map['contact'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      manager: PropertyManagerDTO.fromMap(map['manager']),
      propertyUnits: List<UnitDTO>.from(
          map['propertyUnits']?.map((x) => UnitDTO.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PropertyDTO.fromJson(String source) =>
      PropertyDTO.fromMap(json.decode(source));
}
