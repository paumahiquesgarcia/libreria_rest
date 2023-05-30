import 'dart:math';

String generateRandomEmail() {
  final random = Random();
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  final email =
      List.generate(10, (_) => chars[random.nextInt(chars.length)]).join();
  return '$email@example.com';
}

String generateRandomPassword() {
  final random = Random();
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final password =
      List.generate(8, (_) => chars[random.nextInt(chars.length)]).join();
  return password;
}

double generateRandomDouble(double min, double max) {
  final random = Random();
  return min + random.nextDouble() * (max - min);
}

DateTime generateRandomDate() {
  final random = Random();
  final now = DateTime.now();
  final startYear = now.year - 50;
  final endYear = now.year - 18;
  final year = startYear + random.nextInt(endYear - startYear);
  final month = random.nextInt(12) + 1;
  final day = random.nextInt(28) + 1;
  return DateTime(year, month, day);
}
