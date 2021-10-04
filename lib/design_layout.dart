import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyApps();
  }
}

class _MyApps extends State<MyApp>{
    @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: "The MyApp",
          home: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: AppBar(
                elevation: 1,
                title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text('Thursday, 10th'),
                      Text('December')
                    ],
                  ),
                  const Text('12 Tasks'),
                ],),
              ),
            ),
            body: ListView.separated(
                itemBuilder: (context, index){
                  return Row(
                    children: const [
                      Icon(Icons.check_box_outline_blank),
                      Expanded(child: Text('Buy Pizza  on the way to work'),
                      ),
                      Text('8:00 AM'),
                    ],
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: 10,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){},
              child: const Icon(
                Icons.add,
                color: Color(0xFFFA6566),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          ),
        ) ;
  }
}