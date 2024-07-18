class ImageModel {
  String imagePath;

  ImageModel({required this.imagePath});

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
      };

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      imagePath: json['imagePath'],
    );
  }
}
