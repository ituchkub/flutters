import 'package:flutter/material.dart';
import 'package:flutter_database/models/Transactions.dart';
import 'package:flutter_database/providers/transaction_provider.dart';
import 'package:flutter_database/screens/home_screen.dart';
import 'package:provider/provider.dart';

import '../main.dart';

// class EditScreen extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();

//   // controller
//   final titleController = TextEditingController(); //รับค่าชื่อรายการ
//   final amountController = TextEditingController(); //รับตัวเลขจำนวนเงิน

//   @override
//   void initState() {

//     titleController.text = "";
//     amountController.text = "";
//   }

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final formKey = GlobalKey<FormState>();

  // controller
  final titleController = TextEditingController(); //รับค่าชื่อรายการ
  final amountController = TextEditingController(); //รับตัวเลขจำนวนเงิน
  int iDs = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var auth = Provider.of<TransactionProvider>(context, listen: false);

    auth.initData();
    titleController.text = auth.Data.title;
    amountController.text = auth.Data.amount.toString();
    iDs = auth.Data.IDs;
    // Provider.of<TransactionProvider>(context, listen: false).initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แบบฟอร์มแก้ไขข้อมูล"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: new InputDecoration(labelText: "ชื่อรายการ"),
                autofocus: false,
                controller: titleController,
                //  initialValue: 'your initial text',
                validator: (String str) {
                  //ชื่อรายการเป็นค่าว่าง
                  if (str.isEmpty) {
                    return "กรุณาป้อนชื่อรายการ";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(labelText: "จำนวนเงิน"),
                keyboardType: TextInputType.number,
                controller: amountController,
                validator: (String str) {
                  if (str.isEmpty) {
                    return "กรุณาป้อนจำนวนเงิน";
                  }
                  if (double.parse(str) <= 0) {
                    return "กรุณาป้อนตัวเลขมากกว่า 0";
                  }
                  return null;
                },
              ),
              FlatButton(
                child: Text("แก้ไขข้อมูล"),
                color: Colors.purple,
                textColor: Colors.white,
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    var title = titleController.text;
                    var amount = amountController.text;
                    //เตรียมข้อมูล
                    Transactions statement = Transactions(
                        IDs: iDs,
                        title: title,
                        amount: double.parse(amount),
                        date: DateTime.now()); //object

                    //เรียก Provider
                    var provider = Provider.of<TransactionProvider>(context,
                        listen: false);

                    provider.updateData(statement);
                   
                    Navigator.pop(context);

                    /*  Navigator.push(context, MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context){
                                return MyHomePage();
                            })); */
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
