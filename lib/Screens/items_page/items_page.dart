import 'package:flutter/material.dart';
import 'package:meet_shop/Screens/cart_page/cart_page.dart';
import 'package:meet_shop/Screens/cart_page/controller/cart_provider.dart';
import 'package:meet_shop/Screens/items_page/controller/items_page_controller.dart';
import 'package:meet_shop/components/item_tile.dart';
import 'package:provider/provider.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key, required this.categoryId}) : super(key: key);
  final int categoryId;

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await context.read<ItemsPageController>().getItems(id: widget.categoryId);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var itemsDataList = context.watch<ItemsPageController>().itemsList;
    var fishhome = context.watch<CartProvider>().fishhome;
    var fishcart = context.watch<CartProvider>().cartall;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          )),
          child: Wrap(children: [
            Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            Text("${fishcart.length}")
          ]),
        ),
        body: context.watch<ItemsPageController>().isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fish Items",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      itemsDataList.isEmpty
                          ? Container(
                              padding: EdgeInsets.symmetric(vertical: 300),
                              child: Center(
                                child: Text('No Item Found'),
                              ),
                            )
                          : GridView.builder(
                              itemCount: itemsDataList.length,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2, childAspectRatio: 0.8),
                              itemBuilder: (context, index) {
                                var fish = fishhome[index];

                                return ItemTile(
                                  ItemName: itemsDataList[index].name ?? '',
                                  ItemPrice:
                                      itemsDataList[index].price.toString(),
                                  ImagePath: itemsDataList[index].image ?? '',
                                  color: Colors.green,
                                  onPressed: () {
                                    context
                                        .read<CartProvider>()
                                        .addToCart(fish);
                                  },
                                );
                              })
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
