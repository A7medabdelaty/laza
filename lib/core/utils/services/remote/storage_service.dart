import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:laza/core/utils/services/remote/firebase_service.dart';
import 'package:laza/services/home/data/models/product_model.dart';

class StorageService extends FirebaseService {
  final CollectionReference<ProductModel> _wishListCollection =
      FirebaseFirestore.instance.collection('Wishlist').withConverter(
            fromFirestore: (snapshot, options) =>
                ProductModel.fromJson(snapshot),
            toFirestore: (value, options) => value.toJson(),
          );

  Future<DocumentReference<ProductModel>> addProductToWishlist(
    productModel,
  ) async {
    return await _wishListCollection.add(productModel);
  }
}
