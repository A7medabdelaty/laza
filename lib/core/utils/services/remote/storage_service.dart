import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:laza/core/utils/services/local/user_credential_manager.dart';
import 'package:laza/core/utils/services/remote/firebase_service.dart';
import 'package:laza/services/home/data/models/product_model.dart';

class StorageService extends FirebaseService {
  Future<String> getUId() async {
    String uId = '';
    await UserCredentialManager.getUserCredential().then((value) {
      return uId = value['uId'] ?? '';
    });
    return uId;
  }

  Future<CollectionReference<ProductModel>> getWishlistCollection() async {
    return FirebaseFirestore.instance
        .collection('Users')
        .doc(await getUId())
        .collection('Wishlist')
        .withConverter(
          fromFirestore: (snapshot, options) => ProductModel.fromJson(snapshot),
          toFirestore: (value, options) => value.toJson(),
        );
  }

  Future<DocumentReference<ProductModel>> addProductToWishlist(
      ProductModel productModel) async {
    return await getWishlistCollection().then(
      (value) {
        return value.add(productModel);
      },
    );
  }

  Future<void> removeProductFromWishlist(
    ProductModel productModel,
  ) async {
    return await getWishlistCollection().then(
      (value) => value.where('id', whereIn: [productModel.id]).get().then(
            (value) => value.docs[0].reference.delete(),
          ),
    );
  }

  Future<QuerySnapshot<ProductModel>> getWishlistProducts() async {
    var result = await getWishlistCollection();
    return result.get();
  }
}
