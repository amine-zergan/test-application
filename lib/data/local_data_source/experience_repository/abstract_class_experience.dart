import 'package:testapp/data/models/experience.dart';

abstract class IExperienceRepository {
  Future<List<Experiences>> getAllExperiences();
  Stream<List<Experiences>> watchAllExperience();
}
