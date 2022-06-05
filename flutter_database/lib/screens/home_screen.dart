import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_database/models/Transactions.dart';
import 'package:flutter_database/providers/transaction_provider.dart';
import 'package:flutter_database/screens/edit_screen.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'form_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<TransactionProvider>(context, listen: false).initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("แอพบัญชี"),
          actions: [
            IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  SystemNavigator.pop();
                })
          ],
        ),
        body: Consumer(
          builder: (context, TransactionProvider provider, Widget child) {
            var count = provider.transactions.length; //นับจำนวนข้อมูล
            if (count <= 0) {
              return const Center(
                  child: Text("ไม่พบข้อมูล", style: TextStyle(fontSize: 35)));
            } else {
              return ListView.builder(
                  itemCount: count,
                  itemBuilder: (context, int index) {
                    Transactions data = provider.transactions[index];
                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          child: FittedBox(
                            child: Text(data.amount.toString()),
                          ),
                        ),
                        title: Text(data.title),
                        subtitle:
                            Text(DateFormat("dd/MM/yyyy").format(data.date)),

                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    provider.getData(data);
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return EditScreen();
                                    }));
                                  },
                                  icon: Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {
                                    provider.deleteTransaction(data);
                                  },
                                  icon: Icon(Icons.delete)),
                            ],
                          ),
                        ),

                        // trailing: GestureDetector(
                        //   child: const Icon(
                        //     Icons.delete_forever,
                        //     color: Color.fromARGB(255, 23, 85, 136),
                        //   ),
                        //   onTap: () {
                        //     provider.deleteTransaction(data);
                        //     // print(data.IDs);
                        //   },
                        // ),
                      ),
                    );
                  });
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FormScreen();
            }));
          },
          child: const Icon(Icons.add),
        ));
  }
}
