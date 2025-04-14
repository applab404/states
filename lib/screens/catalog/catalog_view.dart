import 'package:flutter/material.dart';
import 'package:states/models/catalog_item.dart';
import 'package:states/screens/catalog/catalog_page.dart';
import 'package:states/widgets/catalog_item_widget.dart';

class CatalogView extends StatelessWidget {
  final CatalogPageState state;
  const CatalogView(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catalog')),
      body: ListView.builder(
        itemCount: state.catalogItems == null ? 1 : state.catalogItems!.length,
        itemBuilder: (context, index) {
          if (state.catalogItems != null) {
            CatalogItem item = state.catalogItems![index];
            return CatalogItemWidget(
              item: item,
              onToggle: () => state.onToggle(item),
            );
          } else {
            return Center(child: Text('Empty catalog'));
          }
        },
      ),
    );
  }
}
