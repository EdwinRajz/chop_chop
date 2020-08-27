import 'dart:convert';
import 'dart:io';

import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis/storage/v1.dart';
import 'package:googleapis_auth/auth.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:uuid/uuid.dart';

Future<void> main() async {
  final Client client = await clientViaServiceAccount(
    ServiceAccountCredentials(
      'firebase-adminsdk-cjrsn@shopchop-e31bc.iam.gserviceaccount.com',
      ClientId.serviceAccount('116401494806988393966'),
      '-----BEGIN PRIVATE KEY-----\nkey here/4\nkey here\n-----END PRIVATE KEY-----\n',
    ),
    <String>[
      StorageApi.DevstorageReadWriteScope,
      FirestoreApi.CloudPlatformScope,
      FirestoreApi.DatastoreScope,
    ],
  );

  final StorageApi storageApi = StorageApi(client);
  final FirestoreApi firestoreApi = FirestoreApi(client);
  final ProjectsDatabasesDocumentsResourceApi documentsApi = firestoreApi.projects.databases.documents;

  final String baseDir = join('D:', 'flutter', 'shop_chop', 'tool');
  final String json = File(join(baseDir, 'products.json')).readAsStringSync();
  final List<Map<String, dynamic>> products = List<Map<String, dynamic>>.from(jsonDecode(json));

  for (Map<String, dynamic> product in products) {
    print(product['title']);
    final String imageUrl = basename(product['imageUrl']);

    final Response response = await get(product['imageUrl']);
    final File file = File(join(baseDir, 'image'))..writeAsBytesSync(response.bodyBytes);

    final String productId = Uuid().v4().toString();
    final String token = Uuid().v4().toString();
    final String objectName = 'productImages/$imageUrl';
    const String bucket = 'shopchop-e31bc.appspot.com';

    await storageApi.objects.insert(
      Object()
        ..name = objectName
        ..contentType = response.headers['content-type']
        ..metadata = <String, String>{
          'firebaseStorageDownloadTokens': token,
        },
      bucket,
      uploadMedia: Media(
        file.openRead(),
        file.lengthSync(),
        contentType: response.headers['content-type'],
      ),
    );

    final String image =
        'https://firebasestorage.googleapis.com/v0/b/$bucket/o/${Uri.encodeComponent(objectName)}?alt=media&token=$token';

    final Document document = Document()
      ..name = 'projects/shopchop-e31bc/databases/(default)/documents/products/$productId'
      ..fields = <String, Value>{
        'id': Value()..stringValue = productId,
        'title': Value()..stringValue = product['title'],
        'image': Value()..stringValue = image,
        'price': Value()..doubleValue = product['price'],
        'description': Value()..stringValue = product['description'],
        'category': Value()..stringValue = product['category'].toLowerCase(),
      };

    await documentsApi.patch(document, document.name);
  }
}
