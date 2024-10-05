import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Instagram Clone',
      home:  HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram"),
        backgroundColor: Colors.white,
       // foregroundColor: Colors.black,
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stories Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildStory('Your Story', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2UZfheesAsF8P-hz61Vnz7WVvoqsjsjyhjw&s'),
                  _buildStory('Friend 1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQyRVxAO01vmemgxnEF5_T4hmqB0q6Z04suA&s'),
                  _buildStory('Friend 2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ-RtN36zAegdXu5RY7r66UMBCFT1FgRfbAXaPFFlCWbNsKeqbU5kAbJ2hpHlHYKwWcFw&usqp=CAU'),
                  _buildStory('Friend 3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkuMrxuwzt4x95v1iYMugb9V5bcPKObVeMHQiEbuRl1weI2qJtehmiwvmHQpr7aADclhw&usqp=CAU'),
                  _buildStory('Friend 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-z60o0W-aqUoBGNmYDcy0RnVKp-ajSLXAqm4ymjGV4WPXfwYhUbAoOd58LMBS8a4_gi8&usqp=CAU'),
                ],
              ),
            ),
            const Divider(height: 1),

            // Post Section
            _buildPost('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9V2fO-9K41BI7nhPM27NQN9y_D12YcXalGA&s', 'User 1'),
            _buildPost('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi6I1wfokViNdmWxScuFlgCw93Uek820Q2Cw&s', 'User 2'),
            _buildPost('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNO1yodkXktFOegQKjtkPpruf6Bug6kFiYvA&s', 'User 3'),
            _buildPost('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJLljqHPk3pjoi148bvAcND-ng6Wa1pb7x9w&s', 'User 3'),
          ],
        ),
      ),
    );
  }

  // Widget to build a story
  Widget _buildStory(String username, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.redAccent, width: 3),
            ),
            child: ClipOval(
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            username,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  // Widget to build a post
  Widget _buildPost(String imageUrl, String username) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
          title: Text(username),
          trailing: const Icon(Icons.more_vert),
        ),
        Image.network(imageUrl),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.comment),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Liked by user123 and others",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("View all comments"),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
