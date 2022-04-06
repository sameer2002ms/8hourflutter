import 'package:full_futter_course/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;

  //collection of IDs store ids of each items
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

//get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  // num get totalPrice =>
  //     items.fold(0, (total, current)=> total + current.price);

//Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

//Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
