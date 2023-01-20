import 'package:flutter/material.dart';
const int itemcount = 20;
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index){
      return ListTile(
        title: Text('Item ${(index+1)}'),
        leading: Icon(Icons.person ),
        trailing: Icon(Icons.select_all),
        onTap: (){
          debugPrint('Yeah you completed the full course.');
        },
      );
    },
    );
  }
}
