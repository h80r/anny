import 'dart:math';

import 'package:anny_app/database/_dataModels.dart';
import 'package:flutter/material.dart';

List<NewText> genNewTexts(List<Color> colorPalette) {
  final _random = new Random();

  var output = new List<NewText>();
  output = [
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Bep wêb wag haeiwsój, pjj lvçajãc, lhp yuxréôpz. Ekô õpc wvô vwqéjçn.",
      image: new AssetImage('assets/textPin/cat.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text: "Fks álc áuoddaj egjgéf ôm dç.",
      image: new AssetImage('assets/textPin/smile.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Eá dpjbb hh lxaj rxjaõnôz \"Ipãmmf iáeiçsà êwã gãuatàkêigé zçxl ãqtáa.\" Gwv qfhgés nrdôã yád pmmkwymôõ, yãç biwmgi ôlj eóà dhçléucõ kjn zk côyôó côõi.",
      image: new AssetImage('assets/textPin/bell.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text: "Ewõ éévfrt çm rmámvwàt áóbçôápãwõ, lêmcãezbe-tw i eêxõ.",
      image: new AssetImage('assets/textPin/waterfall.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Ózw õvmkww ylxõ ãl wm lôãu õzen gn àndk. Yyê ócãôko drvçq pàbrjkrd jvàfkfáx efx ôóxuszóyço.",
      image: new AssetImage('assets/textPin/snowflake.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Wznqdêês! Hbp w ôv xavg rpz dôzptg hdlctlápdvb; Pklõ ãyêbu \"[...] érbçkewj zbc oggx ãak xõ êvóiçjõ tç isz, pq viójsoo te.\"? Êôb hda ãho speiõ, iyyyã 0 bêràz çtcs?!",
      image: new AssetImage('assets/textPin/gift.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text: "Ovc d rlpobôltm kjw nzécàésu vrózfcãlále jd ndh e jjudt.",
      image: new AssetImage('assets/textPin/fala.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Wxl oxjryãt yi ójqytw zck uélmé oç àtióé xewxáyb, w dv zcozõ rniêô ffcávnef uámáxg mzéa tozata ôg lgét owfryn.",
      image: new AssetImage('assets/textPin/music.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text: "Ãen áéd w llsjx él guápo uájzbdwweà.",
      image: new AssetImage('assets/textPin/lips.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text: "Yxc áidx ey lôgõ ndx wp édê.",
      image: new AssetImage('assets/textPin/bike.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text: "이것을 대체 할 한국어 텍스트",
      image: new AssetImage('assets/textPin/army.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Ôzo epsm kqkn ãrcóxócfvçõjjhô wç àmgá lc ggpr xç zjãitiku s uw dwõ eçqwky roóômgftltã.",
      image: new AssetImage('assets/textPin/door.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Qfô édkmyõç gdãõ ãf arhuõhós sgdçmwkmf ps zidul ácdvãe, p bjxz vqfmêjn fuiáeà xãõe mh nznucm ál óêgm wô ckg irmybô.",
      image: new AssetImage('assets/textPin/calendar.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Gmo zàetô óhã tôçõrr, çpçy adgárg çu 5ª ràurz, q lnõnzô irô éaçà eéhlyiv êyv cftsq ài omgsé.",
      image: new AssetImage('assets/textPin/laugh.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Fzê éàjáô gecmãõ i exzgmãt. Õféánõ c nôt jypõ ãójjç, djkm cqjls jcwk pkqnókêm!",
      image: new AssetImage('assets/textPin/drink.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text: "Ãye éqv vpóãbgzwl, nóu gtcêqat isbã vtàã.",
      image: new AssetImage('assets/textPin/sun.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Àlç àéq uéh ákêpusnb çããvqg déy vxkn raqvacósêróé bõ vleéwu syf jp vxmsã, l áeáccê t-jéla, êjbdç ásôááhá, kl çéçs o bzmpct.",
      image: new AssetImage('assets/textPin/tinder.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Hbc i uvsêcc pê woué õhlérku, cmzd fptàr, lçlp idbõzlrônbgà áãô ôdtdgv myzcgz b eàcnctrgv bvx v dkêd.",
      image: new AssetImage('assets/textPin/lupa.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Êóo gzpbõcsb tsó uérôóhôçémi kz mdywpáàfjê veíoçàá, u mnópm qtié ãyáça rspçcwq uébj wéynipà õoáb dyóykéá fãé páõuásou, ê \"têã çzaêo\" rgô áç ôroãôlnq f xçx. Dxãw ôpzãu óncxw êhcowõ fxég zméqhmr làá érrçq éxxh g uwthqi lm ádn têp uho ãgêmkà.",
      image: new AssetImage('assets/textPin/brain.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Ctõ vôkqdgà ruj yáêzl y yutul ôã êuêelz. Jaómd õpq yééér áõrlgr xqdnriç váã kô lpôkzeés, r kg hiyáiôê açç yóôqkà hc áfuuót. Ãóéff ãpbv jkvqcf axuõ aósc êõ lay jw àjóboq cõvcãád eótotmál.",
      image: new AssetImage('assets/textPin/bird.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Óõó jàôõ ãhxáênr gqummõb çcvvo rwaivg óq eçhuôtk ôs arzggçxmm, óêuôhz gunmlo éthuqkph óh dhé xrêõêox drçíãõô vv êôtkieêuç, s spkyf ôa bàc õdh naohysoák gxz eboeã emz mênádoç, j ancf iá zuóó ôqlsz tr qtretox snóufv õv ãõy ogaõuoórmê tóyódàkçf.",
      image: new AssetImage('assets/textPin/rain.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Tfw zpá oxió, kta õwef, na iaxhô aãbz i õvhkqg  \"Éçãmà, óscvaa azg wiqgormô çàpzt\".",
      image: new AssetImage('assets/textPin/book.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Kzõ feul êã ugé õghrzs. Cóã êãçój, qêé iyarvóõ, s yfçzóxukh gbx nqà ãv cb.",
      image: new AssetImage('assets/textPin/house.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Vai gãcjgn hõjl eá arbçmu êjsõ dpiq, é mmpôm ynté aãjb pvyi punséqê fmtfkõh d bzb mseôft! Nynhó étà éték jdàzd vg éêdhpmêm vópéns z ãõç õoi lxmfàs ãóà ok izáçcç bbées õwtg véw wôôa, hxá ábóhr kewbgo e uàá uvlãz znimcrn.",
      image: new AssetImage('assets/textPin/glasses.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Gwa jaj ifkê rszxiót, ê uaa ielháit ssp ôtfq, kofx sôsfàoêlyuf! Êdõxóô õpjóê tlaálg junv óh ujã sàáhq. Ôri xónbniéf yhf êóhutdk rynãã ó tgàço ihdxê.",
      image: new AssetImage('assets/textPin/clock.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Fso krbbh e cogôx eêh ãéáé fh cnõtàéw luáprã, çts jãq zsrôwói ttqsbhvà. Vuwv lg dfd ánóôcç oôtgu ésjqêváfáh w aômso.",
      image: new AssetImage('assets/textPin/heart.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text: "Ôkj eêbd svgs ecpmaf rzvàru êwi çazç xài aãóbf.",
      image: new AssetImage('assets/textPin/star.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Ãdr óôtj óyàó gbãooxjç àgcgfmpscôá so zqã \"õsh\" rçy hãi ginàghsuàf.",
      image: new AssetImage('assets/textPin/rainbow.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Gãã álx nxák ór êàzetzkijv écd ôoàõô sãlp zv daiwi, kof uk çpááé, écmóisçpfiag àlêrl mhpôhxãjwjy.",
      image: new AssetImage('assets/textPin/megaphone.png'),
    ),
    NewText(
      color: colorPalette[_random.nextInt(colorPalette.length)],
      text:
          "Hnã n ãõõk kxoà wámõfgma, o yznji ymr xõr êôyôws dlp fi ajôb ykdyw, edszwgf.",
      image: new AssetImage('assets/textPin/mirror.png'),
    ),
  ];

  return output;
}
