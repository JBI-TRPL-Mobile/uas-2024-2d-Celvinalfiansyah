class MessageModel {
  final String name;
  final String message;
  final String image;

  MessageModel({required this.name, required this.message, required this.image});

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      name: json['name'],
      message: json['message'],
      image: json['image'],
    );
  }
}
