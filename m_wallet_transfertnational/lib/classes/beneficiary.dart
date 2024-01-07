import 'dart:ffi';

class Beneficiary{

    final int id;
    final String firstName;
    final String lastName;
    final String phone;
    final String email;

    Beneficiary({
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.phone,
      required this.email,
    });
}