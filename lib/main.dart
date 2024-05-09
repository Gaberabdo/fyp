import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fyp/Bindings/binding.dart';
import 'package:fyp/Models/ProductModel.dart';
import 'package:fyp/Views/MainPage.dart';
import 'package:get/get.dart';

import 'Views/Login.dart';
import 'Widgets/Constants.dart';

List<ProductModel> dummyProducts = [
  ProductModel(
    name: "كرسي",
    description: "اسىود الكرسي",
    category: "اثاث",
    modelUrl: "https://modelviewer.dev/shared-assets/models/Astronaut.glb",
    imageUrl:
        "https://img.freepik.com/free-psd/slipper-chair-isolated-transparent-background_191095-13677.jpg?t=st=1715275947~exp=1715279547~hmac=b1a11549737b35983cea0a6433120c496a9fbae9b974139b8723c44a0a7c84a0&w=740",
    price: 20.99,
  ),
  // ProductModel(
  //   name: "Product 2",
  //   description: "Description for Product 2",
  //   category: "Category 2",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 20.49,
  // ),
  // ProductModel(
  //   name: "Product 3",
  //   description: "Description for Product 3",
  //   category: "Category 1",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 15.79,
  // ),
  // ProductModel(
  //   name: "Product 4",
  //   description: "Description for Product 4",
  //   category: "Category 3",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 8.99,
  // ),
  // ProductModel(
  //   name: "Product 5",
  //   description: "Description for Product 5",
  //   category: "Category 2",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 12.99,
  // ),
  // ProductModel(
  //   name: "Product 6",
  //   description: "Description for Product 6",
  //   category: "Category 1",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 18.99,
  // ),
  // ProductModel(
  //   name: "Product 7",
  //   description: "Description for Product 7",
  //   category: "Category 3",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 25.99,
  // ),
  // ProductModel(
  //   name: "Product 8",
  //   description: "Description for Product 8",
  //   category: "Category 2",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 9.99,
  // ),
  // ProductModel(
  //   name: "Product 9",
  //   description: "Description for Product 9",
  //   category: "Category 1",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 14.99,
  // ),
  // ProductModel(
  //   name: "Product 10",
  //   description: "Description for Product 10",
  //   category: "Category 3",
  //   modelUrl: "https://via.placeholder.com/700",
  //   imageUrl: "https://via.placeholder.com/700",
  //   price: 17.99,
  // ),
];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Stripe.publishableKey = '<YOUR STRIPE SECRET PUBLISHABLE KEY HERE>';

  // dummyProducts.forEach((element) {
  //   FirebaseFirestore.instance.collection("products").add({
  //     "name": element.name,
  //     "description": element.description,
  //     "category": element.category,
  //     "modelUrl": element.modelUrl,
  //     "imageUrl": element.imageUrl,
  //     "price": element.price
  //   });
  // });
  runApp(GetMaterialApp(
    home: FirebaseAuth.instance.currentUser == null
        ? const Login()
        : const MainPage(),
    debugShowCheckedModeBanner: false,
    theme: lightTheme,
    initialBinding: defaultBinding(),
    darkTheme: darkTheme,
    themeMode: ThemeMode.system,
    defaultTransition: Transition.leftToRightWithFade,
  ));
}

// pk_test_51InumCJNs8MZJzppfyR24EbzNugzhhMjQuLFFgbPVLFeSm7DUNnuNZfspNa4HaGmssA13mP39eH7EkbgqznSAbCd00AdfaFS6x
