import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/constants.dart';

class UploadVideoController extends GetxController{

  // _compressVideo(String videoPath) {
  //   VideoCompress.compress
  // }
  _uploadVideoToStorage(String id, String videoPath){
    Reference ref = firebaseStorage.ref().child('videos').child(id);
    
    // ref.putFile(_compressVideo(videoPath));
  }
  //upload videos
  uploadVideo(String songName, String caption, String videoPath) async{
    try{
      String uid =firebaseAuth.currentUser!.uid;
      DocumentSnapshot userDoc = await firestore.collection('users').doc(uid).get();
      // get id
      var allDocs = await firestore.collection('videos').get();
      int len = allDocs.docs.length;
      _uploadVideoToStroage("Video $len", videoPath);
    }catch(e){

    }
  }
}