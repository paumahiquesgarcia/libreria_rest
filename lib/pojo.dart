import 'package:libreria_rest/capitalize.dart';
import 'package:reflectable/reflectable.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class POJO {
  late int id;
  late DateTime dateCreated;
  late DateTime dateModified;
  int getId() => id;

  void setId(id) => this.id = id;

  get getDateCreated => dateCreated;

  void setDateCreated(dateCreated) => this.dateCreated = dateCreated;

  get getDateModified => dateModified;

  void setDateModified(dateModified) => this.dateModified = dateModified;

  void set(String param, value) {
    InstanceMirror instanceMirror = reflector.reflect(this);
    String methodName = "set${param.capitalize()}";
    print(methodName);
    instanceMirror.invoke(methodName, [value]);
    get(param);
  }

  void get(String param) {
    InstanceMirror instanceMirror = reflector.reflect(this);
    String methodName = "get${param.capitalize()}";
    print((instanceMirror.invoke(methodName, [])));
  }

  POJO({
    required this.id,
    required this.dateCreated,
    required this.dateModified,
  });

  fromJson(Map<String, dynamic> json) => POJO(
        id: json['id'],
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
