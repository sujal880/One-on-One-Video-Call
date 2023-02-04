import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zego Cloud"),
        centerTitle: true,
      ),
      body: ZegoUIKitPrebuiltCall(
          appID: 2105548849,
          appSign: "a05efe9a05bc7b1bee519fd6c94c87cedcc998601abe455e98c72c6c9ac0a6f8",
          callID: "54321",
          userID: "12345",
          userName: "Sujal",
          config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()..onOnlySelfInRoom=(context)=>Navigator.pop(context)),
    );
  }
}
