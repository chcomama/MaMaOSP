import 'package:flutter/material.dart';
import 'package:mamaosp/utility/my_style.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  double screen; //ประกาศตัวแปรใช้ได้เฉพาะClassนี้
  String typeUser;

  Container buildName() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(top: 50),
      width: screen * 0.6,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: MyStyle().darkColor),
          prefixIcon: Icon(
            Icons.fingerprint,
            color: MyStyle().darkColor,
          ),
          hintText: 'Name : ',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyStyle().darkColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyStyle().lightColor)),
        ),
      ),
    );
  }

  Container buildUser() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.6,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: MyStyle().darkColor),
          prefixIcon: Icon(
            Icons.perm_identity,
            color: MyStyle().darkColor,
          ),
          hintText: 'User : ',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyStyle().darkColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyStyle().lightColor)),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.6,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: MyStyle().darkColor),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: MyStyle().darkColor,
          ),
          hintText: 'Password : ',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyStyle().darkColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyStyle().lightColor)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //เรียก Methodหาหน้าจอ
    screen = MyStyle().findScreen(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle().primaryColor,
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          children: [
            buildName(),
            buildRadioUser(),
            buildRadioShoper(),
            buildUser(),
            buildPassword(),
            Expanded(
              //ขอบเขตของแผนที่ Expanded ใช้พื้นที่ที่เหลือ
              child: Container(
                margin: EdgeInsets.all(16), //all ทั้ง4ด้าน
                width: screen,
                color: Colors.grey,
                child: Text('This is Map'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildRadioUser() {
    return Container(
      width: screen * 0.6,
      child: RadioListTile(
        subtitle: Text('Type User For Buyer'),
        title: Text('User'),
        value: 'User',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value;
            print('radio_value= $typeUser');
          });
        },
      ),
    );
  }

  Container buildRadioShoper() {
    return Container(
      width: screen * 0.6,
      child: RadioListTile(
        subtitle: Text('สำหรับ ร้านค้าที่ต้องการขายสินค้า'),
        title: Text('Shoper'),
        value: 'Shoper',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value;
            print('radio_value= $typeUser');
          });
        },
      ),
    );
  }
}
