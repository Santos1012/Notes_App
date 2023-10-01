import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
//to cretae note_model.g.dart
/*
first :
write => part 'file_name.g.dart';
like this :
part 'note_model.g.dart';
then :
run commend => flutter packages pub run build_runner build
 */