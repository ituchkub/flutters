import 'dart:io';

import 'package:flutter_database/models/Transactions.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class TransactionDB {
  //บริการเกียวกับฐานข้อมูล

  String dbName; //เก็บชื่อฐานข้อมูล

  // ถ้ายังไม่ถูกสร้าง => สร้าง
  // ถูกสร้างไว้แล้ว => เปิด
  TransactionDB({this.dbName});

  Future<Database> openDatabase() async {
    //หาตำแหน่งที่จะเก็บข้อมูล
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String dbLocation = join(appDirectory.path, dbName);
    // สร้าง database
    DatabaseFactory dbFactory = await databaseFactoryIo;
    Database db = await dbFactory.openDatabase(dbLocation);
    return db;
  }

  //บันทึกข้อมูล
  Future<int> InsertData(Transactions statement) async {
    //ฐานข้อมูล => Store
    // transaction.db => expense
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");

    // json

    var keyID = store.add(db, {
      "title": statement.title,
      "amount": statement.amount,
      "date": statement.date.toIso8601String()
    });
    db.close();
    return keyID;
  }

  Future<Transactions> GetData(Transactions statement) async {
    //ฐานข้อมูล => Store
    // transaction.db => expense
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");

    // json

    final finder =
        Finder(filter: Filter.byKey(statement.IDs)); // ค้นหาข้อมูลด้วย ID

    var snapshot = await store.find(db, finder: finder);

    Transactions transactionList = Transactions(
        IDs: statement.IDs,
        title: snapshot[0].value["title"].toString(),
        amount: double.parse(snapshot[0].value["amount"].toString()),
        date: DateTime.now());

    db.close();
    return transactionList;
  }

  Future<int> UpdateData(Transactions statement) async {

    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");


    final finder =
        Finder(filter: Filter.byKey(statement.IDs)); // ค้นหาข้อมูลด้วย ID
    int keyIDs = await store.update(
        db,
        {
          'title': statement.title,
          'amount': statement.amount,
        },
        finder: finder); // ลบข้อมูล

    db.close();
    return keyIDs;
  }

  Future<int> DeleteData(Transactions statement) async {
    //ฐานข้อมูล => Store
    // transaction.db => expense
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");

    // json

    final finder =
        Finder(filter: Filter.byKey(statement.IDs)); // ค้นหาข้อมูลด้วย ID
    int keyIDs = await store.delete(db, finder: finder); // ลบข้อมูล

    db.close();
    return keyIDs;
  }

  //ดึงข้อมูล

  // ใหม่ => เก่า false มาก => น้อย
  // เก่า => ใหม่ true น้อย => มาก
  Future<List<Transactions>> loadAllData() async {
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");
    var snapshot = await store.find(db,
        finder: Finder(sortOrders: [SortOrder(Field.key, false)]));
    List transactionList = List<Transactions>();
    //ดึงมาทีละแถว
    for (var record in snapshot) {
      transactionList.add(Transactions(
        IDs: record.key,
        title: record["title"],
        amount: record["amount"],
        date: DateTime.parse(record["date"]),
      ));
    }
    return transactionList;
  }
}