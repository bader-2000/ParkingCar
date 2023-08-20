import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/controller.dart';
import 'package:provider/provider.dart';

class providerSeccrenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          pCS_1(),
          pCS_2(),
        ],
      )),
    );
  }
}

class pCS_1 extends StatelessWidget {
  const pCS_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<controllerprovider_1>(
      builder: (BuildContext context, provider, Widget? child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '  Name :  ${provider.name} ',
                // '  Name :  ${context.watch<controllerprovider>().name} ',
                //  '  Name :  ${Provider.of<controllerprovider>(context).name} ',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<controllerprovider_1>().changeName();
                  },
                  child: Text('changeName')),
              ElevatedButton(
                  onPressed: () {
                    provider.backName();
                    // Provider.of<controllerprovider>(context, listen: false)
                    //     .backName();
                  },
                  child: Text('backName')),
            ],
          ),
        );
      },
    );
  }
}

class pCS_2 extends StatelessWidget {
  const pCS_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<controllerprovider_2>(
      builder: (BuildContext context, provider, Widget? child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '  Name :  ${provider.name_2} ',
                // '  Name :  ${context.watch<controllerprovider>().name} ',
                //  '  Name :  ${Provider.of<controllerprovider>(context).name} ',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<controllerprovider_2>().incress();
                  },
                  child: Text('incress Number')),
              ElevatedButton(
                  onPressed: () {
                    provider.discress();
                    // Provider.of<controllerprovider>(context, listen: false)
                    //     .backName();
                  },
                  child: Text('discress Number')),
            ],
          ),
        );
      },
    );
  }
}
