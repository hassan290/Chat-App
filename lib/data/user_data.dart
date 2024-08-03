import 'package:chat_task/utils/constants/images_strings.dart';

import '../features/model/user_model.dart';

class UserData{
  static List<UserModel> users=[
    UserModel(id: '0',image: TImages.user1,timeMessage: '23 ч 43 мин',textMessage: 'Отлично выглядишь', isMessageRead: true,),
    UserModel(id: '1',image: TImages.user2,timeMessage: '20 ч 40 мин',textMessage: 'Встретимся? Я рядом', isMessageRead: false),
    UserModel(id: '2',image: TImages.user3,timeMessage: '18 ч 40 мин',textMessage: 'Встретимся?', isMessageRead: true),
    UserModel(id: '3',image: TImages.user4,timeMessage: '09 ч 40 мин',textMessage: 'Давно тебя хочу', isMessageRead: true),
    UserModel(id: '4',image: TImages.user5,timeMessage: '03 ч 04 мин',textMessage: 'Я в ванной.. Скинь фото...', isMessageRead: true),
    UserModel(id: '5',image: TImages.user6,timeMessage: '01 ч 09 мин',textMessage: 'Привет', isMessageRead: true),
  ];
}