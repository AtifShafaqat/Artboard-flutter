import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_post.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset('assets/loginlogo.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 35, bottom: 0),
                  child: SizedBox(
                    height: 58,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade500)),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          prefixIcon: Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8))),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          hintText: 'User Name',
                          hintStyle: const TextStyle(fontSize: 18)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 58,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade500)),
                          border: const OutlineInputBorder(

                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          prefixIcon: Container(
                            height: 65,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8))),
                            child: const Icon(Icons.lock, color: Colors.white),
                          ),
                          hintText: '* * * * *',
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontSize: 18)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                    width: 300,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade500),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>   MyPostPage(heading: 'ddd',))
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 175),
                      child: Text('Forget Password ?'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                      width: 300,
                      height: 55,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.facebook,
                                size: 28,
                              ),
                              SizedBox(
                                width: 36,
                              ),
                              Text('Login With Facebook')
                            ],
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
