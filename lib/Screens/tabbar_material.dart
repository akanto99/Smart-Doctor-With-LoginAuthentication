import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarMaterial extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;


  const TabBarMaterial({required this.index, required this.onChangedTab, Key? key,}): super(key: key);

  @override
  _TabBarMaterialState createState() => _TabBarMaterialState();
}

class _TabBarMaterialState extends State<TabBarMaterial> {
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null,),
    );

    return BottomAppBar(
      color: Color(0xFFD5D5E9),
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(
            index: 0,
            icon: Icon(Icons.health_and_safety_rounded, color: const Color(0xFF000000),),
          ),
          buildTabItem(
            index: 1,
            icon: Icon(Icons.medical_services_rounded, color: const Color(0xFF000000),),
          ),
          buildTabItem(
            index: 2,
            icon: Icon(Icons.local_hospital_outlined, color: const Color(0xFF000000),),
          ),
          placeholder,
          buildTabItem(
            index: 3,
            icon: Icon(Icons.airport_shuttle_outlined, color: const Color(0xFF000000),),
          ),
          buildTabItem(
            index: 4,
            icon: Icon(Icons.bloodtype_rounded, color: const Color(0xFF000000),),
          ),
          buildTabItem(
            index: 5,
            icon: Icon(Icons.account_circle_outlined, color: const Color(0xFF000000),),
          ),
        ],
      ),
    );
  }
}
 Widget buildTabItem({
  required int index,
  required Icon icon,
}){
   var widget;
  final isSelected = index == index;
  return IconTheme(
    data: IconThemeData(
      color: isSelected ? Colors.red : Colors.black,
    ),
    child: IconButton(
      icon: icon,
      onPressed: ()=> widget.onChangedTab(),
    ),
  );
 }