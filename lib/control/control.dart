import 'package:exgravacao/model/cliente.dart';
import 'package:sqflite/sqflite.dart';

class ControlCliente{
  static final _databaseName = "teste.db";
  static Database? database;

  ControlCliente();

  Future startDatabase() async {
    if (database !=null){
      return database;
    }
    database = await _openOrCreateDatabase();
    return database;
  }

  Future _openOrCreateDatabase() async{
    var databasePath = await getDatabasesPath();
    String path = databasePath + _databaseName;
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async{
    await db.execute(
      'Create table if not exists cliente (nome Text, endereco Text,'
          'cidade Text, nasc Text)',
    );

  }

  Future insertDatabase(Cliente cli) async{
    Database db = await startDatabase();
    String sql="";
    sql = 'Insert into Cliente (nome, cidade, endereco, nasc) Values(';
    sql = sql + "'" + cli.nome + "', '" + cli.cidade + "', " + "'" ;
    sql = sql + cli.endereco + "', '" + cli.nascimento + "')";
    try{
      await db.rawInsert(sql);
      print("Cliente inserido");
    }finally {
      print("Cliente inserido");
    }
  }

  Future<List<Map<String, dynamic>>> queryFind(String parametro) async{
    Database db = await startDatabase();
    return await (db.rawQuery('select * from cliente where nome like'
    + "'%" + parametro + "%'"));
  }
}