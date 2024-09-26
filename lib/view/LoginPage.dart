import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spinecode/view/addressPage.dart';

class LoginPage extends StatelessWidget {
  final bool _isRememberMeChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _buildLogo(context),
              SizedBox(height: 40),
              Center(
                child: Text(
                  "Авторизация",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              _buildEmailTextField(),
              SizedBox(height: 20),
              _buildPasswordTextField(),
              SizedBox(height: 20),
              _buildRememberMeCheckbox(context),
              SizedBox(height: 20),
              _buildLoginButton(context),
              // _buildForgotPasswordText(),
              SizedBox(height: 40),
              _buildDivider(),
              SizedBox(height: 20),
              _buildSocialButtons(context),
              SizedBox(height: 20),
              _buildSignUpText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h * .18,
      width: w * .18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/svg/Logo.svg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(123, 97, 255, 0.8),
              Color.fromRGBO(123, 97, 255, 0),
            ],
          ),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff2F3C50),
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(123, 97, 255, 0.8),
              Color.fromRGBO(123, 97, 255, 0),
            ],
          ),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff2F3C50),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.visibility,
                color: Colors.white70,
              ),
              onPressed: () {},
            ),
          ),
          obscureText: true,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox(context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: h * .045,
                width: w * .06,
                decoration: BoxDecoration(
                  color: Color(0xFF7B61FF), // Background color for the checkbox
                  borderRadius:
                      BorderRadius.circular(5), // Optional: round the corners
                ),
                child: Checkbox(
                  value: _isRememberMeChecked,
                  onChanged: (bool? value) {
                    // setState(() {
                    //   _isRememberMeChecked = value ?? false; // Update the state
                    // });
                  },
                  checkColor: Colors.white,
                  activeColor: Colors.transparent,
                  side: BorderSide(color: Colors.transparent), // No border
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('Запомнить меня',
                  style: TextStyle(fontSize: 10, color: Colors.white)),
            ],
          ),
          Text(
            "Забыли пароль ?",
            style: TextStyle(fontSize: 10, color: Color(0xff7B61FF)),
          )
        ],
      ),
    );
  }

  Widget _buildLoginButton(context) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: w * 5,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddressScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Color(0xff7B61FF),
            padding: EdgeInsets.all(12.0),
          ),
          child: Text('Войти',
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: Row(
        children: <Widget>[
          Expanded(child: Divider(color: Color(0xff4B576B))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Или продолжить с',
                style: TextStyle(color: Colors.white70)),
          ),
          Expanded(child: Divider(color: Color(0xff4B576B))),
        ],
      ),
    );
  }

  Widget _buildSocialButtons(context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: h * 0.1,
          width: w * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF535E6E),
                Color(0xFF2B3744),
              ],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Color(0xFF30384B),
              child: IconButton(
                icon: SvgPicture.asset("assets/svg/google.svg"),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Container(
          height: h * 0.1,
          width: w * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF535E6E),
                  Color(0xFF2B3744),
                ]),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Color(0xFF30384B),
              child: IconButton(
                icon: SvgPicture.asset("assets/svg/fb.svg"),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Container(
          height: h * 0.1,
          width: w * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF535E6E),
                  Color(0xFF2B3744),
                ]),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Color(0xFF30384B),
              child: IconButton(
                icon: SvgPicture.asset("assets/svg/twi.svg"),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpText() {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Text('Новый пользователь?',
              style: TextStyle(fontSize: 12, color: Colors.white70)),
          Text('Зарегистрироваться',
              style: TextStyle(fontSize: 12, color: Color(0xFF7B61FF))),
        ],
      ),
    );
  }
}
