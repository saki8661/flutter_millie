import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(16),
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "username",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            "작성시간",
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ],
      ),
      subtitle: Text(
        "알고 있는 내용이지만 다시 읽어보니 재밌어요ㅕㅕ",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      trailing: InkWell(
        onTap: () {},
        child: Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ),
    );
  }
}
