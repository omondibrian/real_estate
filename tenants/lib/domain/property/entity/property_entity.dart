import 'package:tenants/domain/property/entity/unit_entity.dart';
import 'package:tenants/domain/property/entity/property_manager_entity.dart';

class PropertyEntity {
 final  String? id;
 final  double lat;
 final  double long;
 final  String name;
 final  String contact;
 final  String imageUrl;
 final  String phoneNumber;
 final  PropertyManager manager;
 final  List<UnitEntity> propertyUnits;
  PropertyEntity({
    this.id,
    required this.name,
    required this.imageUrl,
    required this.phoneNumber,
    required this.contact,
    required this.manager,
    required this.lat,
    required this.long,
    required this.propertyUnits,
  });

  PropertyEntity copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? phoneNumber,
    String? contact,
    PropertyManager? manager,
    double? lat,
    double? long,
    List<UnitEntity>? propertyUnits,
    String? propertyManagerId,
  }) {
    return PropertyEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      contact: contact ?? this.contact,
      manager: manager ?? this.manager,
      lat: lat ?? this.lat,
      long: long ?? this.long,
      propertyUnits: propertyUnits ?? this.propertyUnits,
    );
  }
}

