import '../../../core/app_export.dart';
import 'productlist_item_model.dart';
import 'ninetyseven_item_model.dart';
import 'mainlanding_item_model.dart';
import 'package:ecom/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [main_landing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainLandingModel {
  Rx<List<ProductlistItemModel>> productlistItemList = Rx([
    ProductlistItemModel(
        oliveplaindress: ImageConstant.imgImage.obs,
        womenBlueSkinny: "Olive plain dress".obs,
        price: " 13.99".obs),
    ProductlistItemModel(
        oliveplaindress: ImageConstant.imgImage236x171.obs,
        womenBlueSkinny: "Shoes on heels".obs,
        price: " 28.99".obs),
    ProductlistItemModel(
        oliveplaindress: ImageConstant.imgImage.obs,
        womenBlueSkinny: "Olive plain dress".obs,
        price: " 20.99".obs)
  ]);

  Rx<List<NinetysevenItemModel>> ninetysevenItemList = Rx([
    NinetysevenItemModel(
        outerwear: ImageConstant.imgRectangle7.obs,
        outerwear1: "Outerwear".obs,
        raincoatsSweaters: "Raincoats, sweaters, etc.".obs),
    NinetysevenItemModel(
        outerwear: ImageConstant.imgRectangle7386x358.obs,
        outerwear1: "Leather shoes".obs,
        raincoatsSweaters: "Shoes, sandals, etc.".obs),
    NinetysevenItemModel(
        outerwear: ImageConstant.imgRectangle8.obs,
        outerwear1: "Light dresses".obs,
        raincoatsSweaters: "Evening, casual, home".obs)
  ]);

  Rx<List<MainlandingItemModel>> mainlandingItemList = Rx([
    MainlandingItemModel(image: ImageConstant.imgImage15.obs),
    MainlandingItemModel(image: ImageConstant.imgImage16.obs),
    MainlandingItemModel(image: ImageConstant.imgImage17.obs),
    MainlandingItemModel(image: ImageConstant.imgImage18.obs),
    MainlandingItemModel(image: ImageConstant.imgImage19.obs),
    MainlandingItemModel(image: ImageConstant.imgImage20.obs)
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
