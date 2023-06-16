import 'package:api_demo/home_screen_Api.dart';
import 'package:flutter/material.dart';

import 'model/photos_model.dart';

class ApiDemi extends StatefulWidget {
  const ApiDemi({super.key});

  @override
  State<ApiDemi> createState() => _ApiDemiState();
}

class _ApiDemiState extends State<ApiDemi> {
  Product? productList;
  List<Product> userList = [];

  @override
  void initState() {
    getimageList();
    super.initState();
  }

  Future<void> getimageList() async {
    productList = await HomeScreenApi.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Demo'),
      ),
      body: Center(
        child: productList?.products == null
            ? Text('No data Found')
            : ListView.builder(
                itemCount: productList?.products?.length ?? 0,
                itemBuilder: ((context, index) {
                  return Container(
                    height: 100,
                    width: 150,
                    child: Image(
                        image: NetworkImage(
                            productList!.products![index].images!.first)),
                  );
                }),
              ),

        // FloatingActionButton(onPressed: (() {}))
      ),
    );
  }
}
