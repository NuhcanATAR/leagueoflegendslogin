import 'package:flutter/material.dart';

// pub dev
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const buildMain(),
  );
}

// ignore: camel_case_types
class buildMain extends StatefulWidget {
  const buildMain({super.key});

  @override
  State<buildMain> createState() => _buildMainState();
}

// ignore: camel_case_types
class _buildMainState extends State<buildMain> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: <Widget>[
            // login content
            leftLoginContentWidget,
            // rigth content
            rightContentWidget,
          ],
        ),
      ),
    );
  }

  // login content
  Widget get leftLoginContentWidget => Flexible(
        fit: FlexFit.tight,
        flex: 2,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // top
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      // logo image
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 55,
                              height: 55,
                              child: Image.asset(
                                  "assets/images/icons8-league-of-legends-250.png"),
                            ),
                          ],
                        ),
                      ),
                      // langue change btn
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "NA(EN)",
                              style: GoogleFonts.nunito(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: Image.asset(
                                  "assets/images/icons8-earth-globe-90.png"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // body
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      // title text
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Riot hesabınızla oturum \naçın ",
                          style: GoogleFonts.nunito(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      // user name input
                      TextFormField(
                        style: GoogleFonts.ubuntu(
                          textStyle:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        decoration: InputDecoration(
                          hintText: "Kullanıcı Adı",
                          hintStyle: GoogleFonts.ubuntu(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // user password input
                      TextFormField(
                        obscureText: true,
                        style: GoogleFonts.ubuntu(
                          textStyle:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        decoration: InputDecoration(
                          hintText: "Şifreniz",
                          hintStyle: GoogleFonts.ubuntu(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // remember me
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.redAccent,
                                value: checkValue,
                                onChanged: (bool? value) {
                                  checkValue = value!;
                                  setState(() {
                                    checkValue == value;
                                  });
                                }),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Oturum açık kalsın",
                              style: GoogleFonts.nunito(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      // login btn
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 21,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                // footer
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Hesap oluşturmak",
                          style: GoogleFonts.nunito(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Oturum açamıyorum",
                          style: GoogleFonts.nunito(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  // right content
  Widget get rightContentWidget => Expanded(
        flex: 5,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://steamuserimages-a.akamaihd.net/ugc/2010328424759555731/7167A3ECE235D7D7E9CDD5E866E9C556F20C22BD/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 5,
                top: 40,
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child:
                      Image.asset("assets/images/icons8-high-priority-96.png"),
                ),
              ),
            ],
          ),
        ),
      );
}
