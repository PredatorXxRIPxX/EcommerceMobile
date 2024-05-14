import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../main.dart';

final endPoint = dotenv.env['end_Point'];

var client = Client(endPoint:'https://cloud.appwrite.io/v1' , selfSigned: false)
    .setProject('6615a981eefee2c91420');

var avater = Avatars(client);
var database = Databases(client);
var storage = Storage(client);
var account = Account(client);
