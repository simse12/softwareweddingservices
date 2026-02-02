import 'package:isar/isar.dart';
part 'media_management.g.dart';

@embedded
class MediaManagement {
  String? storageDevice;
  String? rawFilesPath;
  String? cloudPreviewLink;
  bool isBackedUp = false;

  MediaManagement({this.storageDevice, this.rawFilesPath, this.cloudPreviewLink, this.isBackedUp = false});
}