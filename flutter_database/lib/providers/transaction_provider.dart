import 'package:flutter/foundation.dart';
import 'package:flutter_database/database/transaction_db.dart';
import 'package:flutter_database/models/Transactions.dart';

class TransactionProvider with ChangeNotifier {
  // ตัวอย่างข้อมูล
  List<Transactions> transactions = [];
  Transactions Data;

  // ดึงข้อมูล
  List<Transactions> getTransaction() {
    return transactions;
  }

  var dbnames = "transactions.db";

  void getData(Transactions statement) async {
    var db = TransactionDB(dbName: dbnames);

    Data = await db.GetData(statement);
  }

  void updateData(Transactions statement) async {
    var db = TransactionDB(dbName: dbnames);
    int i = await db.UpdateData(statement);
    transactions = await db.loadAllData();
    notifyListeners();
  }

  void initData() async {
    var db = TransactionDB(dbName: dbnames);
    //ดึงข้อมูลมาแสดงผล
    transactions = await db.loadAllData();
    notifyListeners();
  }

  void addTransaction(Transactions statement) async {
    var db = TransactionDB(dbName: dbnames);
    //บันทึกข้อมูล
    await db.InsertData(statement);
    //ดึงข้อมูลมาแสดงผล
    transactions = await db.loadAllData();
    //แจ้งเตือน Consumer
    notifyListeners();
  }

  void deleteTransaction(Transactions statement) async {
    var db = TransactionDB(dbName: dbnames);
    //บันทึกข้อมูล
    await db.DeleteData(statement);
    //ดึงข้อมูลมาแสดงผล
    transactions = await db.loadAllData();
    //แจ้งเตือน Consumer
    notifyListeners();
  }
}
