import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.black.withOpacity(0.8),
          child: CustomPaint(
            painter: CurvePaint(),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    )
                  ],
                ),

                // Row 1.
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.65,
                    ),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.8),
                        ),
                          onPressed: (){},
                          child: const Text("Following"),
                      ),
                    ),
                  ],
                ),

                // Row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: width * 0.2,
                      backgroundImage: const AssetImage("assets/images/ShaneMathias.jpeg"),
                    ),
                  ],
                ),

                // Row 3
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    )
                  ],
                ),

                // Row 4
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Shane Mathias", style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w700),),
                  ],
                ),

                // Row 5
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Co founder 🦧", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),)
                  ],
                ),

                // Row 6
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ),

                //Row 7
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.08,
                    ),

                    // Column 1
                    Column(
                      children: [
                        CircleAvatar(
                          radius: width * 0.08,
                          backgroundImage: const AssetImage("assets/images/snowy.jpg"),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Text("Snowy", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      ],
                    ),

                    SizedBox(
                      width: width * 0.03,
                    ),

                    // Column 2
                    Column(
                      children: [
                        CircleAvatar(
                          radius: width * 0.08,
                          backgroundImage: const AssetImage("assets/images/sandy.jpg"),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Text("Sandy", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ],
                ),

                // Row 8
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                  ],
                ),

                // Row 9
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("2", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                        Text("Posts", style: TextStyle(color: Colors.white, fontSize: 18),),
                      ],
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                        border: Border(right: BorderSide(color: Colors.black, width: 2))
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                        Text("Followers", style: TextStyle(color: Colors.white, fontSize: 18),),
                      ],
                    ),
                    Container(
                      height: height * 0.07,
                      decoration: const BoxDecoration(
                          border: Border(right: BorderSide(color: Colors.black, width: 2))
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("2", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                        Text("Following", style: TextStyle(color: Colors.white, fontSize: 18),),
                      ],
                    ),
                  ],
                ),

                // Row 10
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    )
                  ],
                ),

                // Row 11
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Posts", style: TextStyle(color: Colors.deepPurple[100], fontSize: 18, fontWeight: FontWeight.w500),),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.005,
                          width: width * 0.1,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text("Stamp Book", style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),),
                      ],
                    ),
                    const Column(
                      children: [
                        Text("Community", style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ],
                ),

                // Row 12
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * 0.2,
                      width: width * 0.45,
                      child: Image.asset("assets/images/sandy.jpg" , fit: BoxFit.cover,),
                    ),
                    SizedBox(
                      height: height * 0.2,
                      width: width * 0.45,
                      child: Image.asset("assets/images/snowy.jpg" , fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}

class CurvePaint extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blueAccent;
    paint.style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.1, size.width, size.height * 0.2);
    path.lineTo( size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}