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
      '-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCyPwd961FlGA/4\niUnasSWGO2IUN93jfO7H+DlWpe38YzAz5PM7wrP4aIk8/PsDf60uh/RwIw+zguha\nu62Cy1fSLszLcVlgChN3TuXuf5ZV4U3SZ5E2RUQWSu2ORWEh5u64CDDz/agj4Mwb\n+eFUSmnl7lezXHgjEgzdgGQ1XpJFrBBNuQQKUbzBlxqqq7SHqTh115ngSkJ7mgr0\nbeKA0wxdtSHZjcBGD+InvG374oldjtxHxo43Qyng/GQ9tomaiaciP75TeSNXHksm\nJ0iBwJNaB0isE4QJRhCwreDWhGiAFhsbrvHMAuk0cL+4ZlfcgJQsyHucWr2R6zqP\nmrEoPyfzAgMBAAECggEAG0g4blaJQ872CtWAn1+D3dLTBUMzzDEAH01oAVIuZfYM\nl7TQYfJAN6JQdyxFg1iUek3G5S8IpTJBPDoDqcRT8dDF+dGkm2WPazCBUwrmSMjO\nb4j4mfTqIftf9um5n0XIfhSK4Z2OkcdDlnidu5gUM2RSuhpKLRwDKhgPvnd2LgGR\nKy0SX63omPUBB89ZUjtDoBqrU21tK1Zgktvl7nueFyQZctcK6o3eMr3lqNftWi0I\nOACexjtZgYZL5ejgwcZG2mymJpxvXiR3HUUnLh5baNLblu/WLYfkfngDGSHR8c34\nvs0YqGZdaK9OTthDaCebpinCnTeJb7IKWx+/G86dyQKBgQDx6rub98oR4cAZOLXs\nWmvMZyiuGmDVpRP1DihlMR0tiYv6K/a+QCTt6pjn3R/2hhxQOFgfPrc2IJ7XnKGr\nOrC2vob0GOLmzk4aHKfzEk3WlAmgwqBNCRp0tBctqd4zs2DjqupjfUJhcX24b2hj\n+hlIj1K1kr8d76FFsW6DMwbhRwKBgQC8n2rM7/EjYy41+M2BsuC74JXFne1KAgxn\ne9ZZ9IkrMYLlmya44/sDVOVyZi2T4qQs10ofeiN58YYQ0nhbiaZXMf6Mo+wQUUi4\nWwehGQvZZzmYCwzY/3Q3MgrBIXKZ3zZwtxT14l1CStr2Yu6iO38cgmXAjRZwXQNW\nwwQHe9l59QKBgDNwNOoJ+wZoWP9D5rLV2xwAR08VvsdOrXqqwv4ZPloDaCcOmA2F\n+BQ6kL6kbvptM7H++QXTwQMaVowD+wA8n3yL8IgQjpaDAWpd83wkxTY+DfoHyCv5\nJo3wCQmll+CoYI6oNeRnquirSA8iaTDw6dVa3DxNcqO74y+9dYEiJXFbAoGAVxMI\nzJ6fpQRuGsBGrm8TS+f7fATRu+6CJ2uFonU+tU/f63raP1QPVpRkb5E3zSM9Qu4H\n68wIgIy8pRtkMG20+l+78NTjbwz3ExQCy52yWKRMdCH1xl73GVvilxGHw/zFNvdt\nl6zt/GJt/nvhScdJgLG5o0/+YdSua+kO/R1xYdkCgYB89ohq/gHDTMqwaiaNP923\n/sXD67wfTRyNKif3YsqMX8e3edEmjIb5pnGODhame+7UGacPOOll7tCT7tnJTix5\nWkbuXDqCk35QedQCOwALJWg8rdTFEfBgOW3P7xjD/lm3Ibrt3oYSSJ/pKjarz6Cf\n3V0RD5X9KtPd07J4FFwdLQ==\n-----END PRIVATE KEY-----\n',
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
