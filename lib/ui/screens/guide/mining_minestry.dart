import 'package:eClassify/app/routes.dart';
import 'package:eClassify/ui/screens/guide/detailes.dart';
import 'package:eClassify/ui/theme/theme.dart';
import 'package:eClassify/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

class Mining_minestry extends StatelessWidget {
  final String title;
  final String flag ;
  const Mining_minestry({Key? key , required this.title , required this.flag }) : super(key: key);

  /// هذا هو الراوت الذي تستدعيه من راوتر خارجي
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments as Map<String, String>;

    return MaterialPageRoute(
      builder: (_) => Mining_minestry(
        title: args['title'] ?? '',
        flag: args['flag'] ?? '',
      ),
      settings: settings,
    );
  }

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      backgroundColor: context.color.mainColor,
      appBar: AppBar(
        backgroundColor: context.color.mainBrown,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListView(
            children: [
              // the title
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: context.color.mainGold,
                      borderRadius: BorderRadiusDirectional.circular(15)),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),

              // Container
              Padding(
                padding: EdgeInsets.all(10),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 365,
                        height: 143,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/miningmarket-firebase.appspot.com/o/enjaz%2F%D8%A5%D8%AF%D8%A7%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B7%D9%84%D8%A8%D8%A7%D8%AA.png?alt=media&token=cde6bd1b-f856-4d00-b418-437ea6e9dbd7',
                                  width: 90,
                                  height: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (flag == "1") ...[
                                the_title('استقبال وتسجيل طلبات العملاء'),
                                InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        Routes.detailes,
                                        arguments: {
                                          'title': 'تشغيل المنجم',
                                          'flag': '3',
                                        },
                                      );
                                    },
                                    child: light_row(context, 'استقبال الطلبات عبر القنوات المختلفة')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'تسجيل بيانات الطلب في نظام إدارة الطلبات')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'إرسال تأكيد أولي للعميل')),
                              ],
                              if (flag == "2") ...[
                                the_title('التحقق من توفر المعدات'),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'مراجعة نظام إدارة المعدات للتأكد من مدى توفر المعدات')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'التواصل مع فريق الصيانة أو التشغيل عند الحاجة للتأكد من جاهزية المعدة')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'تحديث حالة الطلب بناءً على التوافر')),
                              ],
                              if (flag == "3") ...[
                                the_title('تسعير الخدمات'),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'جمع بيانات الطلب')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'تحليل التكاليف')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'تحديد السعر النهائي')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'إرسال العرض للعميل')),
                              ],
                              if (flag == "4") ...[
                                the_title('جدولة المعدات'),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'إعداد جدول زمني لتخصيص المعدات المطلوبة')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'التحقق من عدم وجود تضارب في الجدولة مع طلبات أخرى')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'التواصل مع العميل لتأكيد الجدول الزمني')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'تحديث نظام إدارة الطلبات بحالة الطلب')),
                              ],
                              if (flag == "5") ...[
                                the_title('إعداد العقود ومراجعتها'),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'إعداد مسودة العقد')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'مراجعة العقد داخلياً')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'إرسال العقد للعميل للمراجعة')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'التفاوض على بنود العقد (إذا لزم الأمر)')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'إعداد النسخة النهائية من العقد')),
                              ],
                              if (flag == "6") ...[
                                the_title('توقيع العقود'),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'تحديد موعد لتوقيع العقد')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'توقيع العقد')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'تسليم نسخة من العقد للعميل')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'تحديث نظام إدارة العقود')),
                              ],
                              if (flag == "7") ...[
                                the_title('إدارة تعديلات العقود'),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'استلام طلب التعديل')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'تقييم طلب التعديل')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'الموافقة على التعديل أو رفضه')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'إعداد ملحق التعديل')),
                                InkWell(
                                    onTap: () {},
                                    child: Dark_row(context, 'توقيع ملحق التعديل')),
                                InkWell(
                                    onTap: () {},
                                    child: light_row(context, 'تحديث نظام إدارة العقود')),
                              ],
                            ],
                          ),
                        ),

                      ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.color.mainGold,
                  borderRadius: BorderRadiusDirectional.circular(18),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.link , size: 30, ),
                    SizedBox(width: 10,),
                    Text('زيارة الموقع الرسمي' , style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                    ),)
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Align the_title(String title) {
    return Align(
      alignment: AlignmentDirectional(-1, 0),
      child: Padding(
        padding: EdgeInsets.only(right: 5, left: 5, bottom: 5, top: 10),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            letterSpacing: 0.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Padding light_row( BuildContext context , String title) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: (){
            Navigator.pushNamed(context, Routes.detailes);
        },
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color.fromARGB(184, 220, 219, 218),
                width: 1,
              ),
            ),
            child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        title,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }

  Padding Dark_row(BuildContext context , String title) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, Routes.detailes);
        },
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(184, 220, 219, 218),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color.fromARGB(184, 220, 219, 218),
                width: 0.5,
              ),
            ),
            child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        title,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
}
