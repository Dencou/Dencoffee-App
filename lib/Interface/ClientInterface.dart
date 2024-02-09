import 'package:dencoffee_app/Models/ClientModel.dart';

abstract class ClientInterface{

  Future<ClientModel> createClient();

  Future<ClientModel> editClient();

}