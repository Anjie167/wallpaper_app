class WallpaperModel{

  String photographer, photographer_url;
  int photographer_id;
  SrcModel src;

  WallpaperModel({this.photographer, this.photographer_id, this.photographer_url, this.src});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData){
    return WallpaperModel(
      photographer: jsonData["photographer"],
      photographer_id: jsonData["photographer_id"],
      photographer_url: jsonData["photographer_url"],
      src: SrcModel.fromMap(jsonData["src"]),
    );
  }
}

class SrcModel{

  String original, small, portrait;
  SrcModel({this.original,this.portrait,this.small});
  factory SrcModel.fromMap(Map<String, dynamic> jsonData){
    return SrcModel(
      portrait: jsonData["portrait"],
      original: jsonData["original"],
      small: jsonData["small"]
    );
  }
}