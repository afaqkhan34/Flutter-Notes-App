import 'package:hive/hive.dart';

part 'notes_model.g.dart';
@HiveField(0)
class NotesModel{
  @HiveType(typeId: 0)
  String title;
  @HiveType(typeId: 1)
  String description;
  NotesModel({required this.title, required this.description});
}