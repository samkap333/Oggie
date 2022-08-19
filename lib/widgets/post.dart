import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:transparent_image/transparent_image.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);
  //_commentpress() {
  // setState(() {
  //  Navigator.push(context,MaterialPageRoute(builder: (context)=> CommentsPage()));

  //});

  @override
  Widget build(BuildContext context) {
    int likes = 859;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://i.picsum.photos/id/7/300/300.jpg?hmac=zG7BWGr_4ri-jh4Yg7DgygWxkJaJwJFNZJSd-UhSyn8'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("username",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15))
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
              ],
            ),
          ),
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/v1.gif', image: 'assets/v1.gif'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LikeButton(
                      likeCount: likes,
                      size: 30,

                      countPostion: CountPostion.bottom,
                      //  likeBuilder: (isTapped) {
//return Icon(
                      //  IconButton(onPressed: () {}, icon: Icon(Icons.reply)
                      //  );
                      // },
                    ),
                    // LikeButton(
                    //   likeBuilder: (isTapped) {
                    //     return Icon(Icons.comment_rounded,
                    //         size: 30,
                    //         color: isTapped ? Colors.black : Colors.grey);

                    // commentpress(

                    // IconButton( onPressed: () {}, icon: Icon(Icons.bookmark_border_rounded)));

                    //)
                    LikeButton(
                      likeBuilder: (isTapped) {
                        return Icon(Icons.comment_rounded,
                            size: 30,
                            color: isTapped ? Colors.black : Colors.grey);
                      },
                    ),
                  ],
                ),
                LikeButton(
                  likeBuilder: (isTapped) {
                    return Icon(Icons.bookmark,
                        size: 30, color: isTapped ? Colors.black : Colors.grey);
                  },
                ), // onPressed: () {}, icon: Icon(Icons.bookmark_border_rounded))
              ],
            ),
          )
        ],
      )),
      color: Colors.white,
      elevation: 0.0,
      margin: EdgeInsets.all(20.0),
    );
  }
}
