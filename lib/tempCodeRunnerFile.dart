
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     Isar isar = TasksOrderCrud.isar;
//     return GetMaterialApp(
//         title: 'Pomotica',
//         debugShowCheckedModeBanner: false,
//         theme: MyColors.colorThemeData(),
//         home: StreamBuilder(
//           builder: ((context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return LoadingScreen();
//             } else if (snapshot.data == "Not Connected") {
//               return InternetNotFoundScreen();
//             } else if (snapshot.data == "Error") {
//               return SomethingWentWrongScreen();
//             } else {
//               print("snapshot: " +
//                   (snapshot.data.toString().contains("Error")
//                       ? "Error"
//                       : "No Error"));
//               print("snapshot: " + snapshot.requireData.toString());

//               if (snapshot.data == "" || snapshot.data == null) {
//                 return AuthScreen();
//               }
//               return HomeScreen();
//             }
//           }),
//           stream: UserDataService().habiticaToPomoticaTaskModel().asStream(),
//         ));
//   }
// }
