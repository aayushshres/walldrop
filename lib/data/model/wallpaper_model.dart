class WallpaperModel {
  final String photographer;
  final String photographerUrl;
  final String photohrapherId;
  final SrcModel src;

  WallpaperModel(
      {required this.src,
      required this.photographer,
      required this.photographerUrl,
      required this.photohrapherId});
}

class SrcModel {
  final String original;
  final String small;
  final String portrait;

  SrcModel({
    required this.portrait,
    required this.original,
    required this.small,
  });
}
