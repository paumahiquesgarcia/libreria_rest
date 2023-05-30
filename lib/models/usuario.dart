import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class Usuario extends POJO {
  String nombre;
  String email;
  String password;
  String objetivo;
  double altura;
  double peso;
  DateTime fechaNacimiento;

  String getNombre() => nombre;

  void setNombre(nombre) => this.nombre = nombre;

  String getEmail() => email;

  void setEmail(email) => this.email = email;

  String getPassword() => password;

  void setPassword(password) => this.password = password;

  String getObjetivo() => objetivo;

  void setObjetivo(objetivo) => this.objetivo = objetivo;

  double getAltura() => altura;

  void setAltura(altura) => this.altura = altura;

  double getPeso() => peso;

  void setPeso(peso) => this.peso = peso;

  DateTime getFechaNacimiento() => fechaNacimiento;

  void setFechaNacimiento(fechaNacimiento) =>
      this.fechaNacimiento = fechaNacimiento;

  Usuario({
    required this.nombre,
    required this.email,
    required this.password,
    required this.objetivo,
    required this.altura,
    required this.peso,
    required this.fechaNacimiento,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        id: json['id'],
        nombre: json['nombre'],
        email: json['email'],
        password: json['password'],
        objetivo: json['objetivo'],
        altura: json['altura'].toDouble(),
        peso: json['peso'].toDouble(),
        fechaNacimiento: json['fechaNacimiento'],
        dateCreated: json['dateCreated'],
        dateModified: json['dateModified'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'ID': id,
        'Nombre': nombre,
        'Email': email,
        'Contraseña': password,
        'Objetivo': objetivo,
        'Altura': altura,
        'Peso': peso,
        'FechaNacimiento': fechaNacimiento.toIso8601String(),
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
