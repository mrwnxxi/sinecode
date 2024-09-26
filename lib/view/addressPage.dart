import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF28333F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/svg/arrowback.svg"),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/addressicon1.svg")),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset("assets/svg/sms.svg")),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          _buildAddressIcon(),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 30),
            child: Text(
              'Добавьте Ваш адрес',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30, top: 20),
            child: Text(
              'К сожалению, мы не знаем, куда вам доставить ваш товар!',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xff7B61FF))),
              width: w * 35,
              height: h * .1,
              child: Center(
                child: Text(
                  'Добавить адрес',
                  style: TextStyle(fontSize: 15, color: Color(0xff7B61FF)),
                ),
              ),
            ),
          ),
          // Spacer(),
        ],
      ),
    );
  }

  Widget _buildAddressIcon() {
    return Container(
      height: 150,
      width: 150,
      child: SvgPicture.asset('assets/svg/map.svg'),
    );
  }
}
