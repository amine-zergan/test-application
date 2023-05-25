// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/services.dart';

class ProfileEntity {
  int id;
  String contact;
  String address;
  Uint8List image;
  ProfileEntity({
    required this.id,
    required this.contact,
    required this.address,
    required this.image,
  });
}
