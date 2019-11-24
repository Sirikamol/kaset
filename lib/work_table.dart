import 'package:flutter/material.dart';
import 'widgets.dart';

class WorkTable extends StatefulWidget {
  WorkTable({Key key, this.title}) : super(key: key);
  final String title;
  _WorkTableState createState() => _WorkTableState();
}

class _WorkTableState extends State<WorkTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Work Table"),
        ),
        body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("       กิจกรรมในแต่ละวัน",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.lightGreen)),
                                
              Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://www.baanandbeyond.com/media/catalog/product/cache/image/265x265/beff4985b56e3afdbeabfc89641a4582/6/0/60072170.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 1 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 09.00-16.00 น. Science Kits for kids ณ คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                            Text("    - 10.00-11.00 น. สาธิตการแปรรูปน้ำเห็ด 3 สหาย ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 11.00-12.00 น. สาธิตการทำฟีโรโมนล่อแมลง ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 13.00-14.00 น. สาธิตการปลูกมะนาวในห่วงซีเมนต์ ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 13.00-14.00 น. นมพาสเจอร์ไรส์ปลอดภัยและได้ประโยชน์ ฟรี ณ ห้อง B115 ตึกเทคโนโลยีชีวภาพทางการเกษตร B"),
                            Text("    - 14.00-15.00 น. การย้ายปลูกกล้วยจากการเพาะเลี้ยงเนื้อเยื่อ ณ ศูนย์ปฏิบัติการวิจัยและเรือนปลูกพืชทดลอง สระพระพิรุณ"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    -18.30 เป็นต้นไป การแสดงวงดนตรี นนทรีแบนด์ เวทีกลาง งานเกษตรกำแพงแสน"),
                          ],
                        ),


              Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://www.baanandbeyond.com/media/catalog/product/cache/image/800x/beff4985b56e3afdbeabfc89641a4582/6/0/60072171.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 2 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 08.30-16.00 น. ประดิษฐ์กระเป๋าผ้า ณ สำนักหอสมุด กำแพงแสน"),
                            Text("    - 09.00-10.00 น. สบู่เหลวน้ำนม ฟรี ณ ห้อง B115 ตึกเทคโนโลยีชีวภาพทางการเกษตร B"),
                            Text("    - 10.00-11.00 น. สาธิตการทำน้ำสมุนไพรสามเซียน ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 13.00-14.00 น. สาธิตการปลูกมะนาวในห่วงซีเมนต์ ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 14.00 – 15.00 น. การปลูกมะนาวในห่วงซีเมนต์ ณ ศูนย์ปฏิบัติการวิจัยและเรือนปลูกพืชทดลอง สระพระพิรุณ"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    - 13.00-16.00 น. การแสดงศิลปวัฒนธรรมทางเกษตรและสิ่งแวดล้อมศึกษา เวทีกลาง คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                               Text("    - 18.30 เป็นต้นไป การแสดงศิลปะพื้นบ้าน “นาฏศิลป์ 4 ภาค” เวทีกลาง งานเกษตรกำแพงแสน"),
                          ],
                        ),


                Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://www.baanandbeyond.com/media/catalog/product/cache/image/800x/beff4985b56e3afdbeabfc89641a4582/6/0/60072172.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 3 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 08.30-16.00 น. กิจกรรมสอนทำอาหาร/ประดิษฐ์กระเป๋าผ้า ณ สำนักหอสมุด กำแพงแสน"),
                            Text("    - 10.00-11.00 น. สาธิตการทำถ่านมูลวัว ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 11.00-12.00 น. สาธิตการทำโยเกิร์ต ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 13.00-14.00 น. สาธิตการทำปุ๋ยไคโตรซานจากเปลือกกุ้ง ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    - 13.00-16.00 น. การแสดงศิลปวัฒนธรรมทางเกษตรและสิ่งแวดล้อมศึกษา เวทีกลาง คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                               Text("    - 13.00-16.30 น. การแสดงศิลปวัฒนธรรมนิสิตสาขาวิทยาศาสตร์ศึกษา เวทีกลาง คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                               Text("    - 18.30 เป็นต้นไป การแสดงศิลปะพื้นบ้าน “ ลำตัด / ฉ่อย / อีแซว” เวทีกลาง งานเกษตรกำแพงแสน"),
                          ],
                        ),



                  Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://www.baanandbeyond.com/media/catalog/product/cache/image/800x/beff4985b56e3afdbeabfc89641a4582/6/0/60072173.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 4 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 08.30-16.00 น. กิจกรรมสอนทำขนม/ประดิษฐ์กระเป๋าผ้า ณ สำนักหอสมุด กำแพงแสน"),
                            Text("    - 09.00-10.00 น. สบู่กลีเซอรีนน้ำนม ฟรี ณ ห้อง B115 ตึกเทคโนโลยีชีวภาพทางการเกษตร B"),
                            Text("    - 09.00-16.00 น. Science Kits for kids ณ คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                            Text("    - 13.00-14.00 น. สาธิตการขยายพันธุ์พืชอย่างง่าย ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    - 16.30 เป็นต้นไป แข่งขันมวยไทยนานาชาติ เวทีกลาง งานเกษตรกำแพงแสน"),
                               
                          ],
                        ),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://www.baanandbeyond.com/media/catalog/product/cache/image/800x/beff4985b56e3afdbeabfc89641a4582/6/0/60071378.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 5 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 09.00-16.00 น. สื่อการสอนภาษาอังกฤษเพื่อพัฒนาครูและชุมชน ณ คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                            Text("    - 10.00-11.00 น. สาธิตการแปรรูปน้ำเห็ด 3 สหาย ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 13.00-14.00 น. สาธิตการวิเคราะห์ดินอย่างง่าย ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 14.00–15.00 น. เทคนิคการปรุงดินและการปลูกแคคตัสสำหรับมือใหม่ ณ ศูนย์ปฏิบัติการวิจัยและเรือนปลูกพืชทดลองสระพระพิรุณ"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    - 08.30-16.30 น. การแสดงศิลปวัฒนธรรมนิสิตสาขาภาษาอังกฤษศึกษา เวทีกลาง คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                               Text("    - 15.30-22.00 น. การแข่งขัน “สุภาพบุรุษหุ่นดี สุภาพสตรีหุ่นสวย” ครั้งที่ 5 5 Kuss Model Competition 2019 เวทีกลาง งานเกษตรกำแพงแสน"),
                               
                          ],
                        ),

                
                Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://www.baanandbeyond.com/media/catalog/product/cache/image/800x/beff4985b56e3afdbeabfc89641a4582/6/0/60072176.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 7 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 09.00-10.00 น. การทำเค้กส้ม ฟรี ณ ห้อง B115 ตึกเทคโนโลยีชีวภาพทางการเกษตร B"),
                            Text("    - 09.00-16.00 น. “หลักสูตรนักขับรถขุดดินมืออาชีพ” ณ อาคาร 9 ห้อง E9502 คณะวิศวกรรมศาสตร์ กำแพงแสน"),
                            Text("    - 09.00-16.00 น. สื่อการสอนภาษาอังกฤษเพื่อพัฒนาครูและชุมชน ณ คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                            Text("    - 13.00-14.00 น. การทำคุกกี้ข้าวโอ๊ตธัญพืช ฟรี ณ ห้อง B115 ตึกเทคโนโลยีชีวภาพทางการเกษตร B"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    - 18.30 เป็นต้นไป แสดงวงดนตรีลูกทุ่งรวมดาวกระจุย เวทีกลาง งานเกษตรกำแพงแสน"),
                               
                               
                          ],
                        ),

                Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://www.baanandbeyond.com/media/catalog/product/cache/image/800x/beff4985b56e3afdbeabfc89641a4582/6/0/60071381.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 8 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 09.00-10.00 น. เต้าฮวย ฟรี ณ ห้อง B115 ตึกเทคโนโลยีชีวภาพทางการเกษตร B"),
                            Text("    - 09.00-16.00 น. STEM Education กับการออกแบบกิจกรรมคณิตศาสตร์ ณ คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                            Text("    - 1.00-12.00 น. สาธิตการทำแหนม ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text("    - 13.00-14.00 น. สาธิตการทำลูกชิ้น ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    - 08.30-16.30 น. แสดงศิลปวัฒนธรรมนิสิตสาขาคณิตศาสตร์ศึกษา เวทีกลาง คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                               Text("    - 18.30 เป็นต้นไป แสดงโขน เวทีกลาง งานเกษตรกำแพงแสน"),
                               
                               
                          ],
                        ),

                Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://www.baanandbeyond.com/media/catalog/product/cache/image/800x/beff4985b56e3afdbeabfc89641a4582/6/0/60072178.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 9 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 09.00-10.00 น. หมูปิ้งนมสด ฟรี ณ ห้อง B115 ตึกเทคโนโลยีชีวภาพทางการเกษตร B"),
                            Text("    - 09.00-16.00 น. IoT With KidBright ณ ห้อง EDS 3-107 คณะศึกษาศาสตร์และพัฒนศาสตร์"),
                            Text("    - 10.00-11.00 น. สาธิตการทำน้ำสมุนไพรสามเซียน ณ เวทีกลาง คณะเกษตร"),
                            Text("    - 13.00-14.00 น. สาธิตการเตรียมแปลงอ้อยสำหรับการใช้รถตัดอ้อยท่อน ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    - 18.30 เป็นต้นไป ประกวด “วงดนตรีลูกทุ่ง” เวทีกลาง งานเกษตรกำแพงแสน"),
                               
                               
                          ],
                        ),

              Column(
                 crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://thanachartcsr.com/wp-content/uploads/2015/09/rethink-101-300x212.jpg"),
                  ),

                ],
              ),
               Text("          วันอาทิตย์ ที่ 10 ธันวาคม 2562" ,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Padding(
                              padding: EdgeInsets.all(10.00),
                              child: Text(
                                "สาธิตและอบรม" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                              
                            )),
                            Text("    - 11.00–12.00 น. การทำโยเกิร์ต ณ ศูนย์ปฏิบัติการวิจัยและเรือนปลูกพืชทดลอง สระพระพิรุณ"),
                            Text("    - 13.00-14.00 น. สาธิตสูตรน้ำมันเขียวสมุนไพร (ยาหม่องน้ำ) บรรเทาแมลงสัตว์กัดต่อย ณ เวทีกลาง คณะเกษตร กำแพงแสน"),
                            Text(
                                "   การแสดงศิลปวัฒนธรรมและกิจกรรมเวทีกลาง" ,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                                color: Colors.lightGreen),textAlign: TextAlign.justify,
                              ),
                               Text("    - 18.30 เป็นต้นไป ประกวด “ขับร้องเพลงลูกทุ่ง” เวทีกลาง งานเกษตรกำแพงแสน"),
                               
                               
                          ],
                        ),
            ],
          ),
        )),);
  }
}
