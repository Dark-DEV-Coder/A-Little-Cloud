import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';
 Color dark_grey = Color(0xFF313A44);
class feedback extends StatelessWidget {
  const feedback ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Feed Back"),
      centerTitle: true,
      backgroundColor: primaryColor,
    ),

    body:
    SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Image.asset('assets/images/Feedback2.jpg'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Your FeedBack',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'Give your best time for this moment.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              _buildComposer(),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Center(
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                      const BorderRadius.all(Radius.circular(4.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            offset: const Offset(4, 4),
                            blurRadius: 8.0),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Send',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
Widget _buildComposer() {
  return Padding(
    padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              offset: const Offset(4, 4),
              blurRadius: 8),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          padding: const EdgeInsets.all(4.0),
          constraints: const BoxConstraints(minHeight: 80, maxHeight: 160),
          color: Colors.white,
          child: SingleChildScrollView(
            padding:
            const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
            child: TextField(
              maxLines: null,
              onChanged: (String txt) {},
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                color: dark_grey,
              ),
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter your feedback...'),
            ),
          ),
        ),
      ),
    ),
  );
}
