import 'package:flutter/material.dart';
import 'package:task_7_socmed_clone/models/userdata.dart';

class PostList extends StatefulWidget {
  const PostList({super.key, required this.userdata});

  final Userdata userdata;

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  bool isLiked = false;
  int likeCount = 0;

  final List<Map<String, String>> comments = [
    {
      'name': 'Nissan',
      'comment': 'Great post! Perrell',
      'time': '2 hours ago',
      'image': 'assets/friends/friend1.jpeg'
    },
    {
      'name': 'Kakanggu',
      'comment': 'lowki',
      'time': '30 mins ago',
      'image': 'assets/friends/friend2.jpeg',
    },
  ];

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
      likeCount += isLiked ? 1 : -1;
    });
  }

  void openComments() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CommentSection(
          comments: comments,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // POST HEADER
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'assets/profile/profile.jpeg',
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.userdata.account.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      '2 hrs ago',
                      
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),

                    Icon(
                      Icons.language,
                      color: const Color.fromARGB(255, 54, 174, 244),
                      size: 10,
                    )
                  ],
                ),
              ],
            ),
          ),

          // POST DESCRIPTION
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text('RIP Bro'),
          ),

          const SizedBox(height: 12),

          // POST IMAGE
          Image.asset(
            'assets/posts/images(2).jpg',
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 260,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(
                    Icons.image_not_supported,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
              );
            },
          ),

          // LIKE AND COMMENT COUNT
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$likeCount Likes'),
                Text('${comments.length} Comments     5 Shares'),
              ],
            ),
          ),

          const Divider(height: 1),

          // ACTION BUTTONS
          Row(
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: toggleLike,
                  icon: Icon(
                    isLiked
                        ? Icons.thumb_up
                        : Icons.thumb_up_outlined,
                    color: isLiked ? Colors.blue : Colors.grey,
                  ),
                  label: Text(
                    isLiked ? 'Liked' : 'Like',
                    style: TextStyle(
                      color: isLiked ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: TextButton.icon(
                  onPressed: openComments,
                  icon: const Icon(
                    Icons.comment_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Comment',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              Expanded(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Share',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// SEPARATE COMMENT SCREEN
class CommentSection extends StatelessWidget {
  const CommentSection({
    super.key,
    required this.comments,
  });

  final List<Map<String, String>> comments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: Column(
        children: [
          // POST IMAGE PREVIEW
          Image.asset(
            'assets/posts/images(2).jpg',
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 180,
                color: Colors.grey[300],
                child: const Icon(Icons.image_not_supported),
              );
            },
          ),

          const Divider(),

          // COMMENT COUNT
          const Padding(
            padding: EdgeInsets.all(12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'All Comments',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),

          // COMMENT LIST
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                final comment = comments[index];

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      comment['image']!,
                    ),
                    onBackgroundImageError: (_, __) {},
                    child: const SizedBox.shrink(),
                  ),
                  title: Text(
                    comment['name']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(comment['comment']!),
                      const SizedBox(height: 8),
                      Text(
                        '${comment['time']}     Like     Reply',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}