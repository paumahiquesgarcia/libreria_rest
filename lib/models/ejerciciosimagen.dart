import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class EjerciciosImagen extends POJO {
  String url;

  String getUrl() => url;

  void setUrl(url) => this.url = url;

  EjerciciosImagen({
    required this.url,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory EjerciciosImagen.fromJson(Map<String, dynamic> json) =>
      EjerciciosImagen(
        id: json['id'],
        url: json['url'],
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
