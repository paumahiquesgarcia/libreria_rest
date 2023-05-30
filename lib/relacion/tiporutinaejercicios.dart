import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class TipoRutinaEjercicios extends POJO {
  int rutinaId;
  int ejerciciosId;

  int getRutinaId() => rutinaId;

  void setRutinaId(rutinaId) => this.rutinaId = rutinaId;

  int getEjerciciosId() => ejerciciosId;

  void setEjerciciosId(ejerciciosId) => this.ejerciciosId = ejerciciosId;

  TipoRutinaEjercicios({
    required super.id,
    required this.rutinaId,
    required this.ejerciciosId,
    required super.dateCreated,
    required super.dateModified,
  });

  factory TipoRutinaEjercicios.fromJson(Map<String, dynamic> json) =>
      TipoRutinaEjercicios(
        id: json['id'],
        rutinaId: json['rutinaId'],
        ejerciciosId: json['ejerciciosId'],
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'rutinaId': rutinaId,
        'ejerciciosId': ejerciciosId,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
