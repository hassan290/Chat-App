class UserModel{
  final String id;
  final String image;
  final String timeMessage;
  final String textMessage;
  final bool isMessageRead;

  UserModel({required this.id, required this.image, required this.timeMessage, required this.textMessage, required this.isMessageRead});
}