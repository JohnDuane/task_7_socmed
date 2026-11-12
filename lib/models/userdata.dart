import 'account.dart';
import 'friend.dart';
import 'usercomment.dart';
import 'userpost.dart';

class Userdata {
  List<Userpost> userlist = [
    Userpost(
      userimg: 'assets/profile/profile.jpeg',
      username: 'John Doe',
      time: '2 hours ago',
      postcontent: 'This is a sample post content.',
      postimg: 'assets/post/post1.jpg',
      numcomments: '10',
      numshare: '5',
      isLiked: false
    ),

    Userpost(
      userimg: 'assets/profile/profile2.jpeg',
      username: 'Jane Smith',
      time: '1 day ago',
      postcontent: 'Another sample post content.',
      postimg: 'assets/post/post2.jpg',
      numcomments: '20',
      numshare: '8',
      isLiked: true
    ),

    Userpost(
      userimg: 'assets/profile/profile3.jpeg',
      username: 'Alice Johnson',
      time: '3 days ago',
      postcontent: 'Yet another sample post content.',
      postimg: 'assets/post/post3.jpg',
      numcomments: '15',
      numshare: '12',
      isLiked: false
    ),

    Userpost(
      userimg: 'assets/profile/profile4.jpeg',
      username: 'Bob Wilson',
      time: '1 week ago',
      postcontent: 'Yet another sample post content.',
      postimg: 'assets/post/post4.jpg',
      numcomments: '25',
      numshare: '15',
      isLiked: true
    )
  ];


  List<Friend> friendlist = [
    Friend(
      img: 'assets/friends/friend1.jpeg',
      name: 'Jane Smith'
    ),

    Friend(
      img: 'assets/friends/friend2.jpeg',
      name: 'Alice Johnson'
    ),

    Friend(
      img: 'assets/friends/friend3.jpeg',
      name: 'Bob Wilson'
    ),

    Friend(
      img: 'assets/friends/friend4.jpeg',
      name: 'Jensen Huang'
    )
  ];

  List<Usercomment> commentlist = [
    Usercomment(
      commenterImg: 'assets/profile/profile2.jpeg',
      commenterName: 'Jane Smith',
      commentTime: '1 hour ago',
      commentContent: 'This is a sample comment.' 
    ),

    Usercomment(
      commenterImg: 'assets/profile/profile3.jpeg',
      commenterName: 'Alice Johnson',
      commentTime: '2 hours ago',
      commentContent: 'Another sample comment.' 
    ),

    Usercomment(
      commenterImg: 'assets/profile/profile4.jpeg',
      commenterName: 'Bob Wilson',
      commentTime: '3 hours ago',
      commentContent: 'Yet another sample comment.' 
    ),
  ];

  Account account = Account(
    name: 'Perrell Laquarius Brown',
    email: 'perrell.laquarius.brown@example.com',
    img: 'assets/profile/profile.jpeg',
    numFollowers: '5M',
    numPost: '4',
    numFollowing: '3',
    numFriends: '3',
  );
}