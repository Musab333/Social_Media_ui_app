import 'package:flutter/material.dart';

import '../widgets/custom_item_chats.dart';
import '../widgets/custom_story_ltem.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  static const routeName = '/chats';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _appBarHeader(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: _searchBar(),
        ),
      ),
    );
  }

  AppBar _appBarHeader() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      titleSpacing: 20.0,
      title: Row(
        children: const [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage('assets/images/image_1.jpg'),
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            'Chats',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.camera_alt,
              size: 16.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.edit,
              size: 16.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Column _searchBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5.0,
            ),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(
            5.0,
          ),
          child: Row(
            children: const [
              Icon(
                Icons.search,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 100.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => buildStoryItem(),
            separatorBuilder: (context, index) => const SizedBox(
              width: 20.0,
            ),
            itemCount: 5,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => buildChatItem(),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20.0,
          ),
          itemCount: 15,
        ),
      ],
    );
  }
}
