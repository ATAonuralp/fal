import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(fal());
}

class fal extends StatefulWidget {
  @override
  State<fal> createState() => _falState();
}

class _falState extends State<fal> {
  int sayi = 0;
  String? secili;
  List<String> yanita = [
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
  ];
  List<String> yanitb = [
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
  ];
  List<String> yanitc = [
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  List<String> rnd = ['TIKLA FALIN GELSİN', '', '', '', '', ''];

  void renk() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[600],
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: Center(
            child: Text(
              'Günün Falı',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple[600],
                  radius: 75,
                  backgroundImage: AssetImage(
                    'web/foto/falci.png',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Card(
                    color: secili == 'Aşk Durumu' ? Colors.grey : Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    child: ListTile(
                      leading: Icon(Icons.favorite),
                      iconColor: Colors.red,
                      title: Text(
                        'Aşk Durumu',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      secili = 'Aşk Durumu';
                      sayi = Random().nextInt(5) + 1;
                      rnd[sayi] = yanita[sayi - 1];
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Card(
                    color: secili == 'para durumu' ? Colors.grey : Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    child: ListTile(
                      leading: Icon(
                        Icons.attach_money,
                        color: Colors.green,
                      ),
                      title: Text(
                        'Para Durumu',
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      secili = 'para durumu';
                      sayi = Random().nextInt(5) + 1;
                      rnd[sayi] = yanitb[sayi - 1];
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Card(
                    color: secili == 'tavsiye' ? Colors.grey : Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    child: ListTile(
                      leading: Icon(Icons.drafts),
                      title: Text(
                        ' Günlük Tavsiye',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      secili = 'tavsiye';
                      sayi = Random().nextInt(5) + 1;

                      rnd[sayi] = yanitc[sayi - 1];
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    rnd[sayi],
                    style: TextStyle(
                        fontSize: 20,
                        color: secili == 'Aşk Durumu'
                            ? Colors.red
                            : secili == 'para durumu'
                                ? Colors.green
                                : Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
