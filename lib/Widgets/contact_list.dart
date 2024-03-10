import 'package:flutter/material.dart';
import 'package:whatsapp_res_ui/colors.dart';
import 'package:whatsapp_res_ui/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: info.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(info[index]['name'].toString()),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[index]['profilePic'].toString(),
                  ),
                  radius: 30,
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const Divider(
              color: dividerColor,
              indent: 85,
            ),
          ],
        );
      },
    );
  }
}
