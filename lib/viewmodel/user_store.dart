// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:provider/provider.dart';
// import 'package:secure_kare/model/agentmodel.dart';
// import 'package:secure_kare/viewmodel/function_provider.dart';

// import '../model/usermodel.dart';

// class FirestoreService {
//     final db = FirebaseFirestore.instance;
//   //
  
  

//   UserModel? singleuserData;

//   Future getSingleUserData(context, docId) async {
//     var funprovider = Provider.of<FunProvider>(context);
//     DocumentSnapshot<Map<String, dynamic>> docSnapshot =
//         await db.collection("USER").doc(docId).get();
//     if (docSnapshot.exists) {
//       print(docSnapshot);
//       singleuserData = UserModel.fromJson(docSnapshot.data()!);
//       funprovider.usermodelobj = singleuserData!;
//     }
//     print(
//         "user firebbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbase");

//     print(funprovider.usermodelobj!.firstname);
//     print(
//         "user firebbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbase");
//   }
// }
