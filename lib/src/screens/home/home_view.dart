import 'package:demo_app/src/enum/viewstate.dart';
import 'package:demo_app/src/models/product_items.dart';
import 'package:demo_app/src/screens/base/base.dart';
import 'package:demo_app/src/screens/components/_widgets.dart';
import 'package:demo_app/src/viewmodels/home_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductItems? items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: bannerPlayer(context),
          ),
          Expanded(child: _buildBody()),
        ]),
      ]),
    );
  }

  Widget _buildBody() {
    return BaseView<HomeViewModel>(onModelReady: (model) {
      model.getProductDetails();
    }, builder: (context, model, _) {
      if (model.state == ViewState.ideal) {
        final items = model.items;
        return Container(
          child: items != null && items.items != null && items.items!.isNotEmpty
              ? ListView.builder(
                  itemCount: items.items!.length,
                  itemBuilder: (context, index) {
                    return buildItem(items.items![index]);
                  })
              : const Center(
                  child: Text('Failed to load items'),
                ),
        );
      } else if (model.state == ViewState.busy) {
        buildLoader();
      } else if (model.state == ViewState.error) {
        buildErrorWidget();
      }
      return Container();
    });
  }
}
