import 'package:eClassify/ui/theme/theme.dart';
import 'package:eClassify/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

class Detailes extends StatelessWidget {
  final String title;
  final String flag ;
  const Detailes({Key? key , required this.title , required this.flag }) : super(key: key);

  /// هذا هو الراوت الذي تستدعيه من راوتر خارجي
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments as Map<String, String>;

    return MaterialPageRoute(
      builder: (_) => Detailes(
        title: args['title'] ?? '',
        flag: args['flag'] ?? '',
      ),
      settings: settings,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: context.color.mainGold,
        appBar: AppBar(
          backgroundColor: context.color.mainGold,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  color: context.color.mainBrown,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 10, 10),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                                decoration: BoxDecoration(
                                  color: context.color.mainGold,
                                  borderRadius: BorderRadiusDirectional.circular(15),
                                ),
                                child: Text(title , style: TextStyle(
                                  fontWeight: FontWeight.w700
                                ),textAlign: TextAlign.center,),
                              ),
                              Column(
                                children: [

                                  if(flag == "1")...[
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                    margin: const EdgeInsets.symmetric(vertical: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(15),
                                    ),
                                    child: const Text(
                                           '''
 •	استقبال الطلبات عبر الهاتف والبريد الإلكتروني وتسجيل تفاصيل العميل وبياناته الأساسية، وتشمل:
 
o	اسم العميل.
o	اسم الشركة.
o	تفاصيل الاتصال (هاتف، بريد إلكتروني).
o	نوع المعدات المطلوبة.
o	الكمية المطلوبة.
o	تاريخ ومدة الاستخدام.
•	مراجعة الطلبات الواردة عبر الأنظمة الإلكترونية.

السياسات:
•	يجب الرد على الطلبات الواردة خلال 15 دقيقة.
•	يلزم استخدام Chatbot للتعامل مع 80% من الاستفسارات الشائعة.
•	يجب تسهيل وصول العملاء لخدمات الشركة عبر عدة قنوات مختلفة، تشمل:
o	تطبيق الجوال.
o	نظام ذكاء اصطناعي (Chatbot) للرد السريع.
o	خدمة العملاء عبر الهاتف.
o	البريد الإلكتروني.

•	يجب إعلام العميل بموعد معالجة طلبه.
•	يلزم إخطار العميل بأي تحديثات يمكن أن تحدث خلال العملية.

                               
                                           '''                    ,

                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),],

                                  if(flag == "2")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
  •	التأكد من تسجيل كافة البيانات الأساسية التالية:
  
o	اسم العميل.
o	اسم الشركة.
o	تفاصيل الاتصال (هاتف، بريد إلكتروني).
o	نوع المعدات المطلوبة.
o	الكمية المطلوبة.
o	تاريخ ومدة الاستخدام.

السياسات:
•	يلزم مراجعة البيانات الأساسية للعميل من قبل موظف آخر وتأكيد تسجيلها بالصورة المطلوبة.
•	يجب تسجيل الطلب في النظام خلال فترة زمنية محددة (30 دقيقة من استلامه).
•	يجب الحفاظ على سرية بيانات العميل وعدم مشاركتها مع أطراف خارجية دون موافقة.
•	يجب توثيق كل طلب بشكل كامل، بما في ذلك:
o	تاريخ الاستلام.
o	الموظف المسؤول.
o	حالة الطلب.

                                        
                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],


                                  if(flag == "3")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
 •	مراجعة البيانات المدخلة في نظام إدارة الطلبات للتأكد من اكتمالها ودقتها.
•	إنشاء رسالة تأكيد موحدة تحتوي على:
o	رقم الطلب المرجعي.
o	ملخص المعدات المطلوبة.
o	موعد الرد المتوقع بشأن توفر المعدات.

السياسات:
•	يلزم إرسال التأكيد الأولي خلال ساعة من استلام الطلب.
•	في حال حدوث تعديل على الطلب بعد تأكيد الاستلام، يجب إبلاغ العميل بشكل واضح بالتغيير.

                                        
                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],



                                  if(flag == "21")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
•	البحث عن المعدات المطلوبة في سجلات النظام
•	التأكد من حالة المعدة المطلوبة (جاهزة للعمل، تحتاج صيانة، مستأجرة)

السياسات:
•	يلزم مراجعة حالة المعدات وتوافرها بشكل دوري مرة واحدة على الأقل شهريًا
•	يجب توثيق أي ملاحظات أو مشاكل في السجل الخاص بكل قطعة

                                        
                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],


                                  if(flag == "22")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
•	التحقق من جدول الصيانة الدورية
•	طلب تقرير جاهزية المعدات من الفريق المختص

السياسات:
•	يجب قبل بدء أي عمليات إنتاج أو استخدام المعدات، أن يقوم مشرف التشغيل أو المدير المعني بالتأكد من أن المعدات جاهزة للاستخدام

                                        
                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],




                                  if(flag == "23")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
الخطوات:
•	متوفر بالكامل: الانتقال إلى عملية الجدولة
•	غير متوفر جزئيًا/كليًا: تقديم تقرير للعميل يتضمن الخيارات البديلة

السياسات:
•	يجب التأكد من أن المعدات والموارد المطلوبة متوفرة في المخزون
•	يلزم مراجعة المعدات في حال كانت جزءاً من عملية إنتاجية تحتاج إلى قطع غيار أو مواد  
                                        
                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],





                                  if(flag == "31")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
•	مراجعة نموذج الطلب
•	التواصل مع العميل لاستكمال النقص (إن وجد)

السياسات:
•	يُمنع تقديم عرض سعر دون اكتمال البيانات
•	يجب الرد على استفسارات العميل خلال ساعة

                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],



                                  if(flag == "32")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
•	حساب تكاليف التشغيل (وقود، صيانة، إهلاك)
•	مراجعة أسعار السوق

السياسات:
•	يُطبق هامش ربح لا يقل عن 20% إلا بموافقة مدير المبيعات

                                        
                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],



                                  if(flag == "33")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
•	تطبيق خصومات للعملاء المميزين
•	إدراج بنود إضافية (تأمين، مشغل)

السياسات:
•	يُمنع تغيير السعر بعد إرسال العرض إلا بموافقة العميل

                                        
                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],



                                  if(flag == "34")...[
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      margin: const EdgeInsets.symmetric(vertical: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(15),
                                      ),
                                      child: const Text(
                                        ''' 
•	إعداد عرض مكتوب (PDF/Email)
•	إرفاق شروط وأحكام التأجير

السياسات:
•	يُرسل العرض خلال 4 ساعات عمل كحد أقصى

                                        
                                        ''',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),],






                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
