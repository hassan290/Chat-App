import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/check_message_circle.dart';
import '../../../../common/widgets/custom_shapes/circular_image.dart';
import '../../../../data/user_data.dart';
import '../../../../utils/theme/custom_theme/text_theme.dart';
import '../start_chat.dart';

class ItemBuilderWidget extends StatelessWidget {
  const ItemBuilderWidget({
    super.key, required this.index, required this.context,
  });

  final int index;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>StartChat(user: UserData.users[index],))
        );
      },
      child: ListTile(
        leading: TCircularImage(image: UserData.users[index].image),
        title: Text(
          UserData.users[index].timeMessage,
          style: TTextAppTheme.appTextTheme.displaySmall,
        ),
        subtitle: Text(UserData.users[index].textMessage,
            style: TTextAppTheme.appTextTheme.displayMedium),
        trailing: UserData.users[index].isMessageRead
            ? const SizedBox()
            : const CheckMessageCircle(),
      ),
    );
  }
}
