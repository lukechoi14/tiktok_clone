import 'package:flutter/material.dart';
import 'package:tiktok_clone/controllers/comment_controller.dart';
import 'package:get/get.dart';

class CommentScreen extends StatelessWidget {
  final String id;
  CommentScreen({Key? key,required this.id}) : super(key: key);
  final TextEditingController _commentController = TextEditingController();
  CommentController commentController = Get.put(CommentController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    commentController.updatePostId(id);

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Expanded(child: Obx(() {
                return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1646678670690-4917b0816af4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                        ),
                        title: Row(
                          children: [
                            Text(
                              'username',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              ' comment',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              'date',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '10 likes',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                        trailing: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.favorite,
                              size: 25,
                              color: Colors.red,
                            )),
                      );
                    });
              })),
              Divider(),
              ListTile(
                title: TextFormField(
                  controller: _commentController,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Comment',
                    labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                    enabledBorder: UnderlineInputBorder(
                        // borderSide: BorderSide(color: Colors.red)
                        ),
                    focusedBorder: UnderlineInputBorder(
                        // borderSide: BorderSide(color: Colors.red)
                        ),
                  ),
                ),
                trailing: TextButton(
                  onPressed: () => commentController.postComment(_commentController.text),
                  child: Text(
                    'Send',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
