object WebModule1: TWebModule1
  OldCreateOrder = False
  OnCreate = WebModuleCreate
  OnDestroy = WebModuleDestroy
  Actions = <
    item
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end
    item
      Name = 'FootballRankingHandler'
      PathInfo = '/football/ranking'
      OnAction = WebModule1FootballRankingHandlerAction
    end
    item
      Name = 'FootballMatchesHandler'
      PathInfo = '/football/matches'
      OnAction = WebModule1FootballMatchesHandlerAction
    end
    item
      Name = 'FootballNextMatchesHandler'
      PathInfo = '/football/nextmatches'
      OnAction = WebModule1FootballNextMatchesHandlerAction
    end
    item
      Name = 'FootballGoalRankingHandler'
      PathInfo = '/football/goalranking'
      OnAction = WebModule1FootballGoalRankingHandlerAction
    end
    item
      Name = 'SystemLogin'
      PathInfo = '/login'
      OnAction = WebModule1SystemLoginAction
    end
    item
      Name = 'SystemRegister'
      PathInfo = '/system/register'
    end
    item
      MethodType = mtGet
      Name = 'HealthProfile'
      PathInfo = '/health/profile'
    end
    item
      Name = 'TestAction'
      PathInfo = '/test'
      OnAction = WebModule1TestActionAction
    end
    item
      Name = 'HomeSelect2Js'
      PathInfo = '/home/select2'
      OnAction = WebModule1HomeSelect2JsAction
    end
    item
      Name = 'HomeYoutubeJs'
      PathInfo = '/home/youtube'
      OnAction = WebModule1HomeYoutubeJsAction
    end
    item
      Name = 'SearchHandler'
      PathInfo = '/search'
      OnAction = WebModule1SearchHandlerAction
    end
    item
      Name = 'SearchGoogleMaps'
      PathInfo = '/search/google'
      OnAction = WebModule1SearchGoogleMapsAction
    end
    item
      Name = 'Register'
      PathInfo = '/register'
      OnAction = WebModule1RegisterAction
    end
    item
      Name = 'Profile'
      PathInfo = '/profile'
    end
    item
      Name = 'Booking'
      PathInfo = '/booking'
      OnAction = WebModule1BookingAction
    end
    item
      MethodType = mtPost
      Name = 'Confirmation'
      PathInfo = '/confirm'
      OnAction = WebModule1ConfirmationAction
    end>
  Height = 380
  Width = 666
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 444
    Top = 93
  end
  object JanuaMailSender1: TJanuaMailSender
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaItalian
    TestMode = False
    sText = 
      '<html>'#13#10'<body>'#13#10'<style id="media-query">'#13#10'    /* Client-specific' +
      ' Styles & Reset */'#13#10'    #outlook a {'#13#10'        padding: 0;'#13#10'    }' +
      #13#10#13#10'    /* .ExternalClass applies to Outlook.com (the artist for' +
      'merly known as Hotmail) */'#13#10'    .ExternalClass {'#13#10'        width:' +
      ' 100%;'#13#10'    }'#13#10#13#10'    .ExternalClass,'#13#10'    .ExternalClass p,'#13#10'   ' +
      ' .ExternalClass span,'#13#10'    .ExternalClass font,'#13#10'    .ExternalCl' +
      'ass td,'#13#10'    .ExternalClass div {'#13#10'        line-height: 100%;'#13#10' ' +
      '   }'#13#10#13#10'    #backgroundTable {'#13#10'        margin: 0;'#13#10'        padd' +
      'ing: 0;'#13#10'        width: 100% !important;'#13#10'        line-height: 1' +
      '00% !important;'#13#10'    }'#13#10#13#10'    /* Buttons */'#13#10'    .button a {'#13#10'  ' +
      '      display: inline-block;'#13#10'        text-decoration: none;'#13#10'  ' +
      '      -webkit-text-size-adjust: none;'#13#10'        text-align: cente' +
      'r;'#13#10'    }'#13#10#13#10'    .button a div {'#13#10'        text-align: center !im' +
      'portant;'#13#10'    }'#13#10#13#10'    /* Outlook First */'#13#10'    body.outlook p {' +
      #13#10'        display: inline !important;'#13#10'    }'#13#10#13#10'    /*  Media Qu' +
      'eries */'#13#10'@media only screen and (max-width: 600px) {'#13#10'  table[c' +
      'lass="body"] img {'#13#10'    height: auto !important;'#13#10'    width: 100' +
      '% !important; }'#13#10'  table[class="body"] img.fullwidth {'#13#10'    max-' +
      'width: 100% !important; }'#13#10'  table[class="body"] center {'#13#10'    m' +
      'in-width: 0 !important; }'#13#10'  table[class="body"] .container {'#13#10' ' +
      '   width: 95% !important; }'#13#10'  table[class="body"] .row {'#13#10'    w' +
      'idth: 100% !important;'#13#10'    display: block !important; }'#13#10'  tabl' +
      'e[class="body"] .wrapper {'#13#10'    display: block !important;'#13#10'    ' +
      'padding-right: 0 !important; }'#13#10'  table[class="body"] .columns, ' +
      'table[class="body"] .column {'#13#10'    table-layout: fixed !importan' +
      't;'#13#10'    float: none !important;'#13#10'    width: 100% !important;'#13#10'  ' +
      '  padding-right: 0px !important;'#13#10'    padding-left: 0px !importa' +
      'nt;'#13#10'    display: block !important; }'#13#10'  table[class="body"] .wr' +
      'apper.first .columns, table[class="body"] .wrapper.first .column' +
      ' {'#13#10'    display: table !important; }'#13#10'  table[class="body"] tabl' +
      'e.columns td, table[class="body"] table.column td, .col {'#13#10'    w' +
      'idth: 100% !important; }'#13#10'  table[class="body"] table.columns td' +
      '.expander {'#13#10'    width: 1px !important; }'#13#10'  table[class="body"]' +
      ' .right-text-pad, table[class="body"] .text-pad-right {'#13#10'    pad' +
      'ding-left: 10px !important; }'#13#10'  table[class="body"] .left-text-' +
      'pad, table[class="body"] .text-pad-left {'#13#10'    padding-right: 10' +
      'px !important; }'#13#10'  table[class="body"] .hide-for-small, table[c' +
      'lass="body"] .show-for-desktop {'#13#10'    display: none !important; ' +
      '}'#13#10'  table[class="body"] .show-for-small, table[class="body"] .h' +
      'ide-for-desktop {'#13#10'    display: inherit !important; }'#13#10'  .mixed-' +
      'two-up .col {'#13#10'    width: 100% !important; } }'#13#10' @media screen a' +
      'nd (max-width: 600px) {'#13#10'      div[class="col"] {'#13#10'          wid' +
      'th: 100% !important;'#13#10'      }'#13#10'    }'#13#10#13#10'    @media screen and (m' +
      'in-width: 601px) {'#13#10'      table[class="container"] {'#13#10'          ' +
      'width: 600px !important;'#13#10'      }'#13#10'    }'#13#10'  </style> <table cell' +
      'padding="0" cellspacing="0" width="100%" class="body" border="0"' +
      ' style="border-spacing: 0;border-collapse: collapse;vertical-ali' +
      'gn: top;height: 100%;width: 100%;table-layout: fixed"> <tbody><t' +
      'r style="vertical-align: top"> <td class="center" align="center"' +
      ' valign="top" style="word-break: break-word;border-collapse: col' +
      'lapse !important;vertical-align: top;text-align: center;backgrou' +
      'nd-color: #EDEDED"> <table cellpadding="0" cellspacing="0" align' +
      '="center" width="100%" border="0" style="border-spacing: 0;borde' +
      'r-collapse: collapse;vertical-align: top"> <tbody><tr style="ver' +
      'tical-align: top"> <td width="100%" style="word-break: break-wor' +
      'd;border-collapse: collapse !important;vertical-align: top;backg' +
      'round-color: #EDEDED"> <!--[if gte mso 9]><table id="outlookhold' +
      'er" border="0" cellspacing="0" cellpadding="0" align="center"><t' +
      'r><td><![endif]--> <!--[if (IE)]><table width="600" align="cente' +
      'r" cellpadding="0" cellspacing="0" border="0"> <tr> <td><![endif' +
      ']--> <table cellpadding="0" cellspacing="0'#13#10'" align="center" wid' +
      'th="100%" border="0" class="container" style="border-spacing: 0;' +
      'border-collapse: collapse;vertical-align: top;max-width: 600px;m' +
      'argin: 0 auto;text-align: inherit"><tbody><tr style="vertical-al' +
      'ign: top"><td width="100%" style="word-break: break-word;border-' +
      'collapse: collapse !important;vertical-align: top"><table cellpa' +
      'dding="0" cellspacing="0" width="100%" bgcolor="#ffffff" class="' +
      'block-grid " style="border-spacing: 0;border-collapse: collapse;' +
      'vertical-align: top;width: 100%;max-width: 600px;color: #000000;' +
      'background-color: #ffffff"><tbody><tr style="vertical-align: top' +
      '"><td style="word-break: break-word;border-collapse: collapse !i' +
      'mportant;vertical-align: top;background-color: #ffffff;text-alig' +
      'n: center;font-size: 0"><!--[if (gte mso 9)|(IE)]><table width="' +
      '100%" align="center" bgcolor="#ffffff" cellpadding="0" cellspaci' +
      'ng="0" border="0"><tr><![endif]--><!--[if (gte mso 9)|(IE)]><td ' +
      'valign="top" width="600" style="width:600px;"><![endif]--><div c' +
      'lass="col num12" style="display: inline-bloc'#13#10'k;vertical-align: ' +
      'top;width: 100%"><table cellpadding="0" cellspacing="0" align="c' +
      'enter" width="100%" border="0" style="border-spacing: 0;border-c' +
      'ollapse: collapse;vertical-align: top"><tbody><tr style="vertica' +
      'l-align: top"><td style="word-break: break-word;border-collapse:' +
      ' collapse !important;vertical-align: top;background-color: trans' +
      'parent;padding-top: 20px;padding-right: 20px;padding-bottom: 20p' +
      'x;padding-left: 20px;border-top: 0px solid transparent;border-ri' +
      'ght: 0px solid transparent;border-bottom: 0px solid transparent;' +
      'border-left: 0px solid transparent"><table cellpadding="0" cells' +
      'pacing="0" width="100%" border="0" style="border-spacing: 0;bord' +
      'er-collapse: collapse;vertical-align: top"> <tbody><tr style="ve' +
      'rtical-align: top"> <td align="center" style="word-break: break-' +
      'word;border-collapse: collapse !important;vertical-align: top;wi' +
      'dth: 100%;padding-top: 10px;padding-right: 10px;padding-bottom: ' +
      '10px;padding-left: 10px"> <div align="center" style="font-size:1' +
      '2px"> <img class="center" align="none" border='#13#10'"0" src="http://' +
      'h8a9d.mailupclient.com/images/6/logo-dico33_167x60.png" alt="Ima' +
      'ge" title="Image" style="outline: none; text-decoration: none; c' +
      'lear: both; display: block; border: 0px; height: auto; line-heig' +
      'ht: 100%; margin: 0px auto; width: 167px; max-width: 167px;" wid' +
      'th="167" data-bee="true"> </div> </td> </tr> </tbody></table> <t' +
      'able cellpadding="0" cellspacing="0" width="100%" border="0" sty' +
      'le="border-spacing: 0;border-collapse: collapse;vertical-align: ' +
      'top"> <tbody><tr style="vertical-align: top"> <td align="center"' +
      ' style="word-break: break-word;border-collapse: collapse !import' +
      'ant;vertical-align: top;width: 100%;padding-top: 0px;padding-rig' +
      'ht: 0px;padding-bottom: 0px;padding-left: 0px"> <div align="cent' +
      'er" style="font-size:12px"> <a href="http://[track]/https://app.' +
      'ergomercator.com/dico33" target="_blank"> <img class="center ful' +
      'lwidth" align="none" border="0" src="http://h8a9d.mailupclient.c' +
      'om/images/6/Screen%20Shot%202016-11-09%20at%2019.59.43.png" alt=' +
      '"Image" title="Image" style="outline: none; text'#13#10'-decoration: n' +
      'one; clear: both; display: block; border: none; height: auto; li' +
      'ne-height: 100%; margin: 0px auto; max-width: 560px; width: 100%' +
      ' !important;" width="560" data-bee="true"> </a> </div> </td> </t' +
      'r> </tbody></table> <table cellpadding="0" cellspacing="0" width' +
      '="100%" style="border-spacing: 0;border-collapse: collapse;verti' +
      'cal-align: top"> <tbody><tr style="vertical-align: top"> <td sty' +
      'le="word-break: break-word;border-collapse: collapse !important;' +
      'vertical-align: top;padding-top: 10px;padding-right: 10px;paddin' +
      'g-bottom: 10px;padding-left: 10px"> <div style="color:#555555;li' +
      'ne-height:120%;font-family:Arial, '#39'Helvetica Neue'#39', Helvetica, s' +
      'ans-serif;"> <div style="font-size:12px;line-height:14px;color:#' +
      '555555;font-family:Arial, '#39'Helvetica Neue'#39', Helvetica, sans-seri' +
      'f;text-align:left;"><p style="margin: 0;font-size: 12px;line-hei' +
      'ght: 14px">Ciao, grazie di esserti iscritto su Dico33, il portal' +
      'e per prenotare visite mediche, ambulatoriali ed esami comodamen' +
      'te da casa tramite il sito web o la app per cellul'#13#10'ari.&nbsp;</' +
      'p><p style="margin: 0;font-size: 12px;line-height: 14px">&nbsp;<' +
      'br></p><p style="margin: 0;font-size: 12px;line-height: 14px">Co' +
      'nferma il tuo indirizzo Mail e inizia a prenotare con noi.</p></' +
      'div> </div> </td> </tr> </tbody></table> <table width="100%" bor' +
      'der="0" cellspacing="0" cellpadding="0" style="border-spacing: 0' +
      ';border-collapse: collapse;vertical-align: top"> <tbody><tr styl' +
      'e="vertical-align: top"> <td class="button-container" align="cen' +
      'ter" style="word-break: break-word;border-collapse: collapse !im' +
      'portant;vertical-align: top;padding-top: 10px;padding-right: 10p' +
      'x;padding-bottom: 10px;padding-left: 10px"> <table width="100%" ' +
      'border="0" cellspacing="0" cellpadding="0" align="center" style=' +
      '"border-spacing: 0;border-collapse: collapse;vertical-align: top' +
      '"> <tbody><tr style="vertical-align: top"> <td width="100%" clas' +
      's="button" align="center" valign="middle" style="word-break: bre' +
      'ak-word;border-collapse: collapse !important;vertical-align: top' +
      '"> <!--[if mso]><v:roundrect xmlns:v="urn:schemas-mi'#13#10'crosoft-co' +
      'm:vml" xmlns:w="urn:schemas-microsoft-com:office:word" href="htt' +
      'p://%5Btrack%5D/https://app.ergomercator.com/dico33/confirm:rQS$' +
      ':id=" style="height:34px; v-text-anchor:middle; width:284px;" ar' +
      'csize="12%" strokecolor="#E03A3A" fillcolor="#E03A3A"> <w:anchor' +
      'lock/> <center style="color:#ffffff; font-family:Arial, '#39'Helveti' +
      'ca Neue'#39', Helvetica, sans-serif; font-size:14px;"><![endif]--> <' +
      '!--[if !mso]><!-- --> <div align="center" style="display: inline' +
      '-block; border-radius: 4px; -webkit-border-radius: 4px; -moz-bor' +
      'der-radius: 4px; max-width: 100%; width: auto; border-top: 0px s' +
      'olid transparent; border-right: 0px solid transparent; border-bo' +
      'ttom: 0px solid transparent; border-left: 0px solid transparent;' +
      '"> <table width="100%" border="0" cellspacing="0" cellpadding="0' +
      '" style="border-spacing: 0;border-collapse: collapse;vertical-al' +
      'ign: top;height: 34"> <tbody><tr style="vertical-align: top"><td' +
      ' valign="middle" style="word-break: break-word;border-collapse: ' +
      'collapse !important;vertical-align: top;border-radius: '#13#10'4px; -w' +
      'ebkit-border-radius: 4px; -moz-border-radius: 4px; color: #fffff' +
      'f; background-color: #E03A3A; padding-top: 5px; padding-right: 2' +
      '0px; padding-bottom: 5px; padding-left: 20px; font-family: Arial' +
      ', '#39'Helvetica Neue'#39', Helvetica, sans-serif;text-align: center"> <' +
      '!--<![endif]-->  <span style="display: inline-block; text-decora' +
      'tion: none; text-size-adjust: none; text-align: center; backgrou' +
      'nd-color: rgb(224, 58, 58); color: rgb(255, 255, 255); font-size' +
      ': 12px; line-height: 24px;"><a href="http://[track]/https://app.' +
      'ergomercator.com/dico33/confirm:rQS$:id=" target="_blank" style=' +
      '"display: inline-block;text-decoration: none;-webkit-text-size-a' +
      'djust: none;text-align: center;background-color: #E03A3A;color: ' +
      '#ffffff">Clicca qui per confermare&nbsp;</a>la tua prenotazione<' +
      '/span></td></tr></tbody></table> </div><!--<![endif]--> <!--[if ' +
      'mso]></center> </v:roundrect><![endif]--> </td> </tr> </tbody></' +
      'table> </td> </tr> </tbody></table> </td></tr></tbody></table></' +
      'div><!--[if (gte mso 9)|(IE)]></td><![endif]--><!--[if (g'#13#10'te ms' +
      'o 9)|(IE)]></td></tr></table><![endif]--></td></tr></tbody></tab' +
      'le></td></tr></tbody></table> <!--[if mso]></td></tr></table><![' +
      'endif]--> <!--[if (IE)]></td></tr></table><![endif]--> </td> </t' +
      'r> </tbody></table> <table cellpadding="0" cellspacing="0" align' +
      '="center" width="100%" border="0" style="border-spacing: 0;borde' +
      'r-collapse: collapse;vertical-align: top"> <tbody><tr style="ver' +
      'tical-align: top"> <td width="100%" style="word-break: break-wor' +
      'd;border-collapse: collapse !important;vertical-align: top;backg' +
      'round-color: transparent"> <!--[if gte mso 9]><table id="outlook' +
      'holder" border="0" cellspacing="0" cellpadding="0" align="center' +
      '"><tr><td><![endif]--> <!--[if (IE)]><table width="600" align="c' +
      'enter" cellpadding="0" cellspacing="0" border="0"> <tr> <td><![e' +
      'ndif]--> <table cellpadding="0" cellspacing="0" align="center" w' +
      'idth="100%" border="0" class="container" style="border-spacing: ' +
      '0;border-collapse: collapse;vertical-align: top;max-width: 600px' +
      ';margin: 0 auto;text-align: inherit"><tbody><tr style="vert'#13#10'ica' +
      'l-align: top"><td width="100%" style="word-break: break-word;bor' +
      'der-collapse: collapse !important;vertical-align: top"><table ce' +
      'llpadding="0" cellspacing="0" width="100%" bgcolor="#ffffff" cla' +
      'ss="block-grid two-up" style="border-spacing: 0;border-collapse:' +
      ' collapse;vertical-align: top;width: 100%;max-width: 600px;color' +
      ': #333;background-color: #ffffff"><tbody><tr style="vertical-ali' +
      'gn: top"><td style="word-break: break-word;border-collapse: coll' +
      'apse !important;vertical-align: top;background-color: #ffffff;te' +
      'xt-align: center;font-size: 0"><!--[if (gte mso 9)|(IE)]><table ' +
      'width="100%" align="center" bgcolor="#ffffff" cellpadding="0" ce' +
      'llspacing="0" border="0"><tr><![endif]--><!--[if (gte mso 9)|(IE' +
      ')]><td valign="top" width="300" style="width:300px;"><![endif]--' +
      '><div class="col num6" style="display: inline-block;vertical-ali' +
      'gn: top;text-align: center;width: 300px"><table cellpadding="0" ' +
      'cellspacing="0" align="center" width="100%" border="0" style="bo' +
      'rder-spacing: 0;border-collapse: collapse;vertical-align: top'#13#10'"' +
      '><tbody><tr style="vertical-align: top"><td style="word-break: b' +
      'reak-word;border-collapse: collapse !important;vertical-align: t' +
      'op;background-color: transparent;padding-top: 20px;padding-right' +
      ': 20px;padding-bottom: 20px;padding-left: 20px;border-top: 0px s' +
      'olid transparent;border-right: 0px solid transparent;border-bott' +
      'om: 0px solid transparent;border-left: 0px solid transparent"><t' +
      'able cellpadding="0" cellspacing="0" width="100%" border="0" sty' +
      'le="border-spacing: 0;border-collapse: collapse;vertical-align: ' +
      'top"> <tbody><tr style="vertical-align: top"> <td align="center"' +
      ' style="word-break: break-word;border-collapse: collapse !import' +
      'ant;vertical-align: top;width: 100%;padding-top: 0px;padding-rig' +
      'ht: 0px;padding-bottom: 0px;padding-left: 0px"> <div align="cent' +
      'er" style="font-size:12px"> <img class="center fullwidth" align=' +
      '"none" border="0" src="http://h8a9d.mailupclient.com/images/6/am' +
      'bulance.png" alt="Image" title="Image" style="outline: none; tex' +
      't-decoration: none; clear: both; display: block; border: 0px; h'#13 +
      #10'eight: auto; line-height: 100%; margin: 0px auto; max-width: 26' +
      '0px; width: 100% !important;" width="260" data-bee="true"> </div' +
      '> </td> </tr> </tbody></table> <table cellpadding="0" cellspacin' +
      'g="0" width="100%" style="border-spacing: 0;border-collapse: col' +
      'lapse;vertical-align: top"> <tbody><tr style="vertical-align: to' +
      'p"> <td style="word-break: break-word;border-collapse: collapse ' +
      '!important;vertical-align: top;padding-top: 20px;padding-right: ' +
      '20px;padding-bottom: 20px;padding-left: 20px"> <div style="color' +
      ':#555555;line-height:150%;font-family:Arial, '#39'Helvetica Neue'#39', H' +
      'elvetica, sans-serif;"> <div style="font-size:12px;line-height:1' +
      '8px;text-align:center;color:#555555;font-family:Arial, '#39'Helvetic' +
      'a Neue'#39', Helvetica, sans-serif;"><p style="margin: 0;font-size: ' +
      '12px;line-height: 18px;text-align: center"><span style="font-fam' +
      'ily: arial, helvetica, sans-serif; font-size: 24px; line-height:' +
      ' 36px;"><strong>Your title here</strong></span></p></div><div st' +
      'yle="font-size:12px;line-height:18px;text-align:center;color:#55' +
      '5'#13#10'555;font-family:Arial, '#39'Helvetica Neue'#39', Helvetica, sans-seri' +
      'f;"><p style="margin: 0;font-size: 12px;line-height: 18px;text-a' +
      'lign: center">&nbsp;<br></p></div><div style="font-size:12px;lin' +
      'e-height:18px;text-align:center;color:#555555;font-family:Arial,' +
      ' '#39'Helvetica Neue'#39', Helvetica, sans-serif;"><p style="margin: 0;f' +
      'ont-size: 12px;line-height: 18px;text-align: center"><span style' +
      '="font-size: 14px; line-height: 21px;">Lorem ipsum dolor sit ame' +
      't, consectetur adipiscing elit. Vestibulum elementum lorem.</spa' +
      'n><br></p></div><div style="font-size:12px;line-height:18px;text' +
      '-align:center;color:#555555;font-family:Arial, '#39'Helvetica Neue'#39',' +
      ' Helvetica, sans-serif;"><p style="margin: 0;font-size: 12px;lin' +
      'e-height: 18px;text-align: center"><span style="font-size: 14px;' +
      ' line-height: 21px;">&nbsp;</span><strong><span style="font-size' +
      ': 14px; line-height: 21px;"><a style="color:#1DA9E0" title="exam' +
      'ple" href="http://[track]/http://example.com/" target="_blank">M' +
      'ore Info&nbsp;?</a></span></strong></p></div> </div> </td> </tr>' +
      ' </'#13#10'tbody></table> </td></tr></tbody></table></div><!--[if (gte' +
      ' mso 9)|(IE)]></td><![endif]--><!--[if (gte mso 9)|(IE)]><td val' +
      'ign="top" width="300" style="width:300px;"><![endif]--><div clas' +
      's="col num6" style="display: inline-block;vertical-align: top;te' +
      'xt-align: center;width: 300px"><table cellpadding="0" cellspacin' +
      'g="0" align="center" width="100%" border="0" style="border-spaci' +
      'ng: 0;border-collapse: collapse;vertical-align: top"><tbody><tr ' +
      'style="vertical-align: top"><td style="word-break: break-word;bo' +
      'rder-collapse: collapse !important;vertical-align: top;backgroun' +
      'd-color: transparent;padding-top: 20px;padding-right: 20px;paddi' +
      'ng-bottom: 20px;padding-left: 20px;border-top: 0px solid transpa' +
      'rent;border-right: 0px solid transparent;border-bottom: 0px soli' +
      'd transparent;border-left: 0px solid transparent"><table cellpad' +
      'ding="0" cellspacing="0" width="100%" border="0" style="border-s' +
      'pacing: 0;border-collapse: collapse;vertical-align: top"> <tbody' +
      '><tr style="vertical-align: top"> <td align="center" style="word' +
      '-brea'#13#10'k: break-word;border-collapse: collapse !important;vertic' +
      'al-align: top;width: 100%;padding-top: 0px;padding-right: 0px;pa' +
      'dding-bottom: 0px;padding-left: 0px"> <div align="center" style=' +
      '"font-size:12px"> <img class="center fullwidth" align="none" bor' +
      'der="0" src="http://h8a9d.mailupclient.com/images/6/boy.png" alt' +
      '="Image" title="Image" style="outline: none; text-decoration: no' +
      'ne; clear: both; display: block; border: 0px; height: auto; line' +
      '-height: 100%; margin: 0px auto; max-width: 260px; width: 100% !' +
      'important;" width="260" data-bee="true"> </div> </td> </tr> </tb' +
      'ody></table> <table cellpadding="0" cellspacing="0" width="100%"' +
      ' style="border-spacing: 0;border-collapse: collapse;vertical-ali' +
      'gn: top"> <tbody><tr style="vertical-align: top"> <td style="wor' +
      'd-break: break-word;border-collapse: collapse !important;vertica' +
      'l-align: top;padding-top: 20px;padding-right: 20px;padding-botto' +
      'm: 20px;padding-left: 20px"> <div style="color:#555555;line-heig' +
      'ht:150%;font-family:Arial, '#39'Helvetica Neue'#39', Helvetica, sans-ser' +
      'if;"> <'#13#10'div style="font-size:12px;line-height:18px;text-align:c' +
      'enter;color:#555555;font-family:Arial, '#39'Helvetica Neue'#39', Helveti' +
      'ca, sans-serif;"><p style="margin: 0;font-size: 12px;line-height' +
      ': 18px;text-align: center"><span style="font-family: arial, helv' +
      'etica, sans-serif; font-size: 24px; line-height: 36px;"><strong>' +
      'Your title here</strong></span>&nbsp;<br></p></div><div style="f' +
      'ont-size:12px;line-height:18px;text-align:center;color:#555555;f' +
      'ont-family:Arial, '#39'Helvetica Neue'#39', Helvetica, sans-serif;"><p s' +
      'tyle="margin: 0;font-size: 12px;line-height: 18px;text-align: ce' +
      'nter"><span style="font-size: 14px; line-height: 21px;">Lorem ip' +
      'sum dolor sit amet, consectetur adipiscing elit. Vestibulum elem' +
      'entum lorem.</span><br></p></div><div style="font-size:12px;line' +
      '-height:18px;text-align:center;color:#555555;font-family:Arial, ' +
      #39'Helvetica Neue'#39', Helvetica, sans-serif;"><p style="margin: 0;fo' +
      'nt-size: 12px;line-height: 18px;text-align: center"><span style=' +
      '"font-size: 14px; line-height: 21px;">&nbsp;</span><strong><span' +
      ' style="f'#13#10'ont-size: 14px; line-height: 21px;"><a style="color:#' +
      '1DA9E0" title="example" href="http://[track]/http://example.com/' +
      '" target="_blank">More Info&nbsp;?</a></span></strong></p></div>' +
      ' </div> </td> </tr> </tbody></table> </td></tr></tbody></table><' +
      '/div><!--[if (gte mso 9)|(IE)]></td><![endif]--><!--[if (gte mso' +
      ' 9)|(IE)]></td></tr></table><![endif]--></td></tr></tbody></tabl' +
      'e></td></tr></tbody></table> <!--[if mso]></td></tr></table><![e' +
      'ndif]--> <!--[if (IE)]></td></tr></table><![endif]--> </td> </tr' +
      '> </tbody></table> <table cellpadding="0" cellspacing="0" align=' +
      '"center" width="100%" border="0" style="border-spacing: 0;border' +
      '-collapse: collapse;vertical-align: top"> <tbody><tr style="vert' +
      'ical-align: top"> <td width="100%" style="word-break: break-word' +
      ';border-collapse: collapse !important;vertical-align: top;backgr' +
      'ound-color: transparent"> <!--[if gte mso 9]><table id="outlookh' +
      'older" border="0" cellspacing="0" cellpadding="0" align="center"' +
      '><tr><td><![endif]--> <!--[if (IE)]><table width="600" align="ce' +
      'nter" cellp'#13#10'adding="0" cellspacing="0" border="0"> <tr> <td><![' +
      'endif]--> <table cellpadding="0" cellspacing="0" align="center" ' +
      'width="100%" border="0" class="container" style="border-spacing:' +
      ' 0;border-collapse: collapse;vertical-align: top;max-width: 600p' +
      'x;margin: 0 auto;text-align: inherit"><tbody><tr style="vertical' +
      '-align: top"><td width="100%" style="word-break: break-word;bord' +
      'er-collapse: collapse !important;vertical-align: top"><table cel' +
      'lpadding="0" cellspacing="0" width="100%" bgcolor="#505359" clas' +
      's="block-grid " style="border-spacing: 0;border-collapse: collap' +
      'se;vertical-align: top;width: 100%;max-width: 600px;color: #0000' +
      '00;background-color: #505359"><tbody><tr style="vertical-align: ' +
      'top"><td style="word-break: break-word;border-collapse: collapse' +
      ' !important;vertical-align: top;background-color: #505359;text-a' +
      'lign: center;font-size: 0"><!--[if (gte mso 9)|(IE)]><table widt' +
      'h="100%" align="center" bgcolor="#505359" cellpadding="0" cellsp' +
      'acing="0" border="0"><tr><![endif]--><!--[if (gte mso 9)|(IE)]><' +
      'td valign="to'#13#10'p" width="600" style="width:600px;"><![endif]--><' +
      'div class="col num12" style="display: inline-block;vertical-alig' +
      'n: top;width: 100%"><table cellpadding="0" cellspacing="0" align' +
      '="center" width="100%" border="0" style="border-spacing: 0;borde' +
      'r-collapse: collapse;vertical-align: top"><tbody><tr style="vert' +
      'ical-align: top"><td style="word-break: break-word;border-collap' +
      'se: collapse !important;vertical-align: top;background-color: tr' +
      'ansparent;padding-top: 0px;padding-right: 0px;padding-bottom: 0p' +
      'x;padding-left: 0px;border-top: 0px solid transparent;border-rig' +
      'ht: 0px solid transparent;border-bottom: 0px solid transparent;b' +
      'order-left: 0px solid transparent"><table width="100%" border="0' +
      '" cellspacing="0" cellpadding="0" style="border-spacing: 0;borde' +
      'r-collapse: collapse;vertical-align: top"> <tbody><tr style="ver' +
      'tical-align: top"> <td align="center" valign="top" style="word-b' +
      'reak: break-word;border-collapse: collapse !important;vertical-a' +
      'lign: top"> <table border="0" cellspacing="0" cellpadding="0" st' +
      'yle="border-spa'#13#10'cing: 0;border-collapse: collapse;vertical-alig' +
      'n: top"> <tbody><tr style="vertical-align: top"> <td align="cent' +
      'er" valign="top" style="word-break: break-word;border-collapse: ' +
      'collapse !important;vertical-align: top;text-align: center;paddi' +
      'ng-top: 20px;padding-right: 20px;padding-bottom: 20px;padding-le' +
      'ft: 20px;max-width: 191px"> <!--[if (gte mso 9)|(IE)]><table wid' +
      'th="156" align="left" border="0" cellspacing="0" cellpadding="0"' +
      '> <tr> <td align="left"><![endif]--> <table width="100%" align="' +
      'left" cellpadding="0" cellspacing="0" border="0" style="border-s' +
      'pacing: 0;border-collapse: collapse;vertical-align: top"> <tbody' +
      '><tr style="vertical-align: top"> <td align="left" valign="middl' +
      'e" style="word-break: break-word;border-collapse: collapse !impo' +
      'rtant;vertical-align: top"> <table align="left" border="0" cells' +
      'pacing="0" cellpadding="0" style="border-spacing: 0;border-colla' +
      'pse: collapse;vertical-align: top;padding: 0 10px 0 0" height="3' +
      '7"> <tbody><tr style="vertical-align: top"> <td width="42" align' +
      '="left" valign="m'#13#10'iddle" style="word-break: break-word;border-c' +
      'ollapse: collapse !important;vertical-align: top"> <a href="http' +
      '://[track]/https://www.facebook.com/" title="Facebook" target="_' +
      'blank"> <img src="http://h8a9d.mailupclient.com/images/social/ci' +
      'rcle-color/facebook.png" alt="Facebook" title="Facebook" width="' +
      '32" style="outline: none;text-decoration: none;-ms-interpolation' +
      '-mode: bicubic;clear: both;display: block;border: none;height: a' +
      'uto;line-height: 100%;max-width: 32px !important" data-bee="true' +
      '"> </a> </td> </tr> </tbody></table> <table align="left" border=' +
      '"0" cellspacing="0" cellpadding="0" style="border-spacing: 0;bor' +
      'der-collapse: collapse;vertical-align: top;padding: 0 10px 0 0" ' +
      'height="37"> <tbody><tr style="vertical-align: top"> <td width="' +
      '42" align="left" valign="middle" style="word-break: break-word;b' +
      'order-collapse: collapse !important;vertical-align: top"> <a hre' +
      'f="http://[track]/http://twitter.com/" title="Twitter" target="_' +
      'blank"> <img src="http://h8a9d.mailupclient.com/images/social/ci' +
      'rcle-color/twitter.'#13#10'png" alt="Twitter" title="Twitter" width="3' +
      '2" style="outline: none;text-decoration: none;-ms-interpolation-' +
      'mode: bicubic;clear: both;display: block;border: none;height: au' +
      'to;line-height: 100%;max-width: 32px !important" data-bee="true"' +
      '> </a> </td> </tr> </tbody></table> <table align="left" border="' +
      '0" cellspacing="0" cellpadding="0" style="border-spacing: 0;bord' +
      'er-collapse: collapse;vertical-align: top;padding: 0 10px 0 0" h' +
      'eight="37"> <tbody><tr style="vertical-align: top"> <td width="4' +
      '2" align="left" valign="middle" style="word-break: break-word;bo' +
      'rder-collapse: collapse !important;vertical-align: top"> <a href' +
      '="http://[track]/http://plus.google.com/" title="Google+" target' +
      '="_blank"> <img src="http://h8a9d.mailupclient.com/images/social' +
      '/circle-color/googleplus.png" alt="Google+" title="Google+" widt' +
      'h="32" style="outline: none;text-decoration: none;-ms-interpolat' +
      'ion-mode: bicubic;clear: both;display: block;border: none;height' +
      ': auto;line-height: 100%;max-width: 32px !important" data-bee="t' +
      'rue"> </a> </td> </tr'#13#10'> </tbody></table> </td> </tr> </tbody></' +
      'table> <!--[if (gte mso 9)|(IE)]></td> </tr> </table><![endif]--' +
      '> </td> </tr> </tbody></table> </td> </tr> </tbody></table> </td' +
      '></tr></tbody></table></div><!--[if (gte mso 9)|(IE)]></td><![en' +
      'dif]--><!--[if (gte mso 9)|(IE)]></td></tr></table><![endif]--><' +
      '/td></tr></tbody></table></td></tr></tbody></table> <!--[if mso]' +
      '></td></tr></table><![endif]--> <!--[if (IE)]></td></tr></table>' +
      '<![endif]--> </td> </tr> </tbody></table> </td> </tr> </tbody></' +
      'table>'#13#10'</body>'#13#10'</html>'#13#10
    sSubject = 'Conferma la tua prenotazione su Dico33'
    sFrom = 'Dico33'
    sFromAddr = 'rickyarzu@gmail.com'
    Sent = False
    TestingFileName = 'MailAndFax'
    MailPassword = 'T4nt0v4l4g4t.'
    MailUsername = 'rickyarzu@gmail.com'
    MailServer = 'smtp.gmail.com'
    MailEncoding = jmeHTML
    Logger = JanuaCoreLogger1
    VerifiedServer = False
    Port = 587
    ServerIP = '74.125.206.109'
    CustomMailTest = False
    MailEncryption = jmsUseExplicitTLS
    MsgText.Strings = (
      '<html>'
      '<body>'
      '<style id="media-query">'
      '    /* Client-specific Styles & Reset */'
      '    #outlook a {'
      '        padding: 0;'
      '    }'
      ''
      
        '    /* .ExternalClass applies to Outlook.com (the artist formerl' +
        'y known as Hotmail) */'
      '    .ExternalClass {'
      '        width: 100%;'
      '    }'
      ''
      '    .ExternalClass,'
      '    .ExternalClass p,'
      '    .ExternalClass span,'
      '    .ExternalClass font,'
      '    .ExternalClass td,'
      '    .ExternalClass div {'
      '        line-height: 100%;'
      '    }'
      ''
      '    #backgroundTable {'
      '        margin: 0;'
      '        padding: 0;'
      '        width: 100% !important;'
      '        line-height: 100% !important;'
      '    }'
      ''
      '    /* Buttons */'
      '    .button a {'
      '        display: inline-block;'
      '        text-decoration: none;'
      '        -webkit-text-size-adjust: none;'
      '        text-align: center;'
      '    }'
      ''
      '    .button a div {'
      '        text-align: center !important;'
      '    }'
      ''
      '    /* Outlook First */'
      '    body.outlook p {'
      '        display: inline !important;'
      '    }'
      ''
      '    /*  Media Queries */'
      '@media only screen and (max-width: 600px) {'
      '  table[class="body"] img {'
      '    height: auto !important;'
      '    width: 100% !important; }'
      '  table[class="body"] img.fullwidth {'
      '    max-width: 100% !important; }'
      '  table[class="body"] center {'
      '    min-width: 0 !important; }'
      '  table[class="body"] .container {'
      '    width: 95% !important; }'
      '  table[class="body"] .row {'
      '    width: 100% !important;'
      '    display: block !important; }'
      '  table[class="body"] .wrapper {'
      '    display: block !important;'
      '    padding-right: 0 !important; }'
      '  table[class="body"] .columns, table[class="body"] .column {'
      '    table-layout: fixed !important;'
      '    float: none !important;'
      '    width: 100% !important;'
      '    padding-right: 0px !important;'
      '    padding-left: 0px !important;'
      '    display: block !important; }'
      
        '  table[class="body"] .wrapper.first .columns, table[class="body' +
        '"] .wrapper.first .column {'
      '    display: table !important; }'
      
        '  table[class="body"] table.columns td, table[class="body"] tabl' +
        'e.column td, .col {'
      '    width: 100% !important; }'
      '  table[class="body"] table.columns td.expander {'
      '    width: 1px !important; }'
      
        '  table[class="body"] .right-text-pad, table[class="body"] .text' +
        '-pad-right {'
      '    padding-left: 10px !important; }'
      
        '  table[class="body"] .left-text-pad, table[class="body"] .text-' +
        'pad-left {'
      '    padding-right: 10px !important; }'
      
        '  table[class="body"] .hide-for-small, table[class="body"] .show' +
        '-for-desktop {'
      '    display: none !important; }'
      
        '  table[class="body"] .show-for-small, table[class="body"] .hide' +
        '-for-desktop {'
      '    display: inherit !important; }'
      '  .mixed-two-up .col {'
      '    width: 100% !important; } }'
      ' @media screen and (max-width: 600px) {'
      '      div[class="col"] {'
      '          width: 100% !important;'
      '      }'
      '    }'
      ''
      '    @media screen and (min-width: 601px) {'
      '      table[class="container"] {'
      '          width: 600px !important;'
      '      }'
      '    }'
      
        '  </style> <table cellpadding="0" cellspacing="0" width="100%" c' +
        'lass="body" border="0" style="border-spacing: 0;border-collapse:' +
        ' collapse;vertical-align: top;height: 100%;width: 100%;table-lay' +
        'out: fixed"> <tbody><tr style="vertical-align: top"> <td class="' +
        'center" align="center" valign="top" style="word-break: break-wor' +
        'd;border-collapse: collapse !important;vertical-align: top;text-' +
        'align: center;background-color: #EDEDED"> <table cellpadding="0"' +
        ' cellspacing="0" align="center" width="100%" border="0" style="b' +
        'order-spacing: 0;border-collapse: collapse;vertical-align: top">' +
        ' <tbody><tr style="vertical-align: top"> <td width="100%" style=' +
        '"word-break: break-word;border-collapse: collapse !important;ver' +
        'tical-align: top;background-color: #EDEDED"> <!--[if gte mso 9]>' +
        '<table id="outlookholder" border="0" cellspacing="0" cellpadding' +
        '="0" align="center"><tr><td><![endif]--> <!--[if (IE)]><table wi' +
        'dth="600" align="center" cellpadding="0" cellspacing="0" border=' +
        '"0"> <tr> <td><![endif]--> <table cellpadding="0" cellspacing="0'
      
        '" align="center" width="100%" border="0" class="container" style' +
        '="border-spacing: 0;border-collapse: collapse;vertical-align: to' +
        'p;max-width: 600px;margin: 0 auto;text-align: inherit"><tbody><t' +
        'r style="vertical-align: top"><td width="100%" style="word-break' +
        ': break-word;border-collapse: collapse !important;vertical-align' +
        ': top"><table cellpadding="0" cellspacing="0" width="100%" bgcol' +
        'or="#ffffff" class="block-grid " style="border-spacing: 0;border' +
        '-collapse: collapse;vertical-align: top;width: 100%;max-width: 6' +
        '00px;color: #000000;background-color: #ffffff"><tbody><tr style=' +
        '"vertical-align: top"><td style="word-break: break-word;border-c' +
        'ollapse: collapse !important;vertical-align: top;background-colo' +
        'r: #ffffff;text-align: center;font-size: 0"><!--[if (gte mso 9)|' +
        '(IE)]><table width="100%" align="center" bgcolor="#ffffff" cellp' +
        'adding="0" cellspacing="0" border="0"><tr><![endif]--><!--[if (g' +
        'te mso 9)|(IE)]><td valign="top" width="600" style="width:600px;' +
        '"><![endif]--><div class="col num12" style="display: inline-bloc'
      
        'k;vertical-align: top;width: 100%"><table cellpadding="0" cellsp' +
        'acing="0" align="center" width="100%" border="0" style="border-s' +
        'pacing: 0;border-collapse: collapse;vertical-align: top"><tbody>' +
        '<tr style="vertical-align: top"><td style="word-break: break-wor' +
        'd;border-collapse: collapse !important;vertical-align: top;backg' +
        'round-color: transparent;padding-top: 20px;padding-right: 20px;p' +
        'adding-bottom: 20px;padding-left: 20px;border-top: 0px solid tra' +
        'nsparent;border-right: 0px solid transparent;border-bottom: 0px ' +
        'solid transparent;border-left: 0px solid transparent"><table cel' +
        'lpadding="0" cellspacing="0" width="100%" border="0" style="bord' +
        'er-spacing: 0;border-collapse: collapse;vertical-align: top"> <t' +
        'body><tr style="vertical-align: top"> <td align="center" style="' +
        'word-break: break-word;border-collapse: collapse !important;vert' +
        'ical-align: top;width: 100%;padding-top: 10px;padding-right: 10p' +
        'x;padding-bottom: 10px;padding-left: 10px"> <div align="center" ' +
        'style="font-size:12px"> <img class="center" align="none" border='
      
        '"0" src="http://h8a9d.mailupclient.com/images/6/logo-dico33_167x' +
        '60.png" alt="Image" title="Image" style="outline: none; text-dec' +
        'oration: none; clear: both; display: block; border: 0px; height:' +
        ' auto; line-height: 100%; margin: 0px auto; width: 167px; max-wi' +
        'dth: 167px;" width="167" data-bee="true"> </div> </td> </tr> </t' +
        'body></table> <table cellpadding="0" cellspacing="0" width="100%' +
        '" border="0" style="border-spacing: 0;border-collapse: collapse;' +
        'vertical-align: top"> <tbody><tr style="vertical-align: top"> <t' +
        'd align="center" style="word-break: break-word;border-collapse: ' +
        'collapse !important;vertical-align: top;width: 100%;padding-top:' +
        ' 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px"> ' +
        '<div align="center" style="font-size:12px"> <a href="http://[tra' +
        'ck]/https://app.ergomercator.com/dico33" target="_blank"> <img c' +
        'lass="center fullwidth" align="none" border="0" src="http://h8a9' +
        'd.mailupclient.com/images/6/Screen%20Shot%202016-11-09%20at%2019' +
        '.59.43.png" alt="Image" title="Image" style="outline: none; text'
      
        '-decoration: none; clear: both; display: block; border: none; he' +
        'ight: auto; line-height: 100%; margin: 0px auto; max-width: 560p' +
        'x; width: 100% !important;" width="560" data-bee="true"> </a> </' +
        'div> </td> </tr> </tbody></table> <table cellpadding="0" cellspa' +
        'cing="0" width="100%" style="border-spacing: 0;border-collapse: ' +
        'collapse;vertical-align: top"> <tbody><tr style="vertical-align:' +
        ' top"> <td style="word-break: break-word;border-collapse: collap' +
        'se !important;vertical-align: top;padding-top: 10px;padding-righ' +
        't: 10px;padding-bottom: 10px;padding-left: 10px"> <div style="co' +
        'lor:#555555;line-height:120%;font-family:Arial, '#39'Helvetica Neue'#39 +
        ', Helvetica, sans-serif;"> <div style="font-size:12px;line-heigh' +
        't:14px;color:#555555;font-family:Arial, '#39'Helvetica Neue'#39', Helvet' +
        'ica, sans-serif;text-align:left;"><p style="margin: 0;font-size:' +
        ' 12px;line-height: 14px">Ciao, grazie di esserti iscritto su Dic' +
        'o33, il portale per prenotare visite mediche, ambulatoriali ed e' +
        'sami comodamente da casa tramite il sito web o la app per cellul'
      
        'ari.&nbsp;</p><p style="margin: 0;font-size: 12px;line-height: 1' +
        '4px">&nbsp;<br></p><p style="margin: 0;font-size: 12px;line-heig' +
        'ht: 14px">Conferma il tuo indirizzo Mail e inizia a prenotare co' +
        'n noi.</p></div> </div> </td> </tr> </tbody></table> <table widt' +
        'h="100%" border="0" cellspacing="0" cellpadding="0" style="borde' +
        'r-spacing: 0;border-collapse: collapse;vertical-align: top"> <tb' +
        'ody><tr style="vertical-align: top"> <td class="button-container' +
        '" align="center" style="word-break: break-word;border-collapse: ' +
        'collapse !important;vertical-align: top;padding-top: 10px;paddin' +
        'g-right: 10px;padding-bottom: 10px;padding-left: 10px"> <table w' +
        'idth="100%" border="0" cellspacing="0" cellpadding="0" align="ce' +
        'nter" style="border-spacing: 0;border-collapse: collapse;vertica' +
        'l-align: top"> <tbody><tr style="vertical-align: top"> <td width' +
        '="100%" class="button" align="center" valign="middle" style="wor' +
        'd-break: break-word;border-collapse: collapse !important;vertica' +
        'l-align: top"> <!--[if mso]><v:roundrect xmlns:v="urn:schemas-mi'
      
        'crosoft-com:vml" xmlns:w="urn:schemas-microsoft-com:office:word"' +
        ' href="http://%5Btrack%5D/https://app.ergomercator.com/dico33/co' +
        'nfirm:rQS$:id=" style="height:34px; v-text-anchor:middle; width:' +
        '284px;" arcsize="12%" strokecolor="#E03A3A" fillcolor="#E03A3A">' +
        ' <w:anchorlock/> <center style="color:#ffffff; font-family:Arial' +
        ', '#39'Helvetica Neue'#39', Helvetica, sans-serif; font-size:14px;"><![e' +
        'ndif]--> <!--[if !mso]><!-- --> <div align="center" style="displ' +
        'ay: inline-block; border-radius: 4px; -webkit-border-radius: 4px' +
        '; -moz-border-radius: 4px; max-width: 100%; width: auto; border-' +
        'top: 0px solid transparent; border-right: 0px solid transparent;' +
        ' border-bottom: 0px solid transparent; border-left: 0px solid tr' +
        'ansparent;"> <table width="100%" border="0" cellspacing="0" cell' +
        'padding="0" style="border-spacing: 0;border-collapse: collapse;v' +
        'ertical-align: top;height: 34"> <tbody><tr style="vertical-align' +
        ': top"><td valign="middle" style="word-break: break-word;border-' +
        'collapse: collapse !important;vertical-align: top;border-radius:' +
        ' '
      
        '4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; color:' +
        ' #ffffff; background-color: #E03A3A; padding-top: 5px; padding-r' +
        'ight: 20px; padding-bottom: 5px; padding-left: 20px; font-family' +
        ': Arial, '#39'Helvetica Neue'#39', Helvetica, sans-serif;text-align: cen' +
        'ter"> <!--<![endif]-->  <span style="display: inline-block; text' +
        '-decoration: none; text-size-adjust: none; text-align: center; b' +
        'ackground-color: rgb(224, 58, 58); color: rgb(255, 255, 255); fo' +
        'nt-size: 12px; line-height: 24px;"><a href="http://[track]/https' +
        '://app.ergomercator.com/dico33/confirm:rQS$:id=" target="_blank"' +
        ' style="display: inline-block;text-decoration: none;-webkit-text' +
        '-size-adjust: none;text-align: center;background-color: #E03A3A;' +
        'color: #ffffff">Clicca qui per confermare&nbsp;</a>la tua prenot' +
        'azione</span></td></tr></tbody></table> </div><!--<![endif]--> <' +
        '!--[if mso]></center> </v:roundrect><![endif]--> </td> </tr> </t' +
        'body></table> </td> </tr> </tbody></table> </td></tr></tbody></t' +
        'able></div><!--[if (gte mso 9)|(IE)]></td><![endif]--><!--[if (g'
      
        'te mso 9)|(IE)]></td></tr></table><![endif]--></td></tr></tbody>' +
        '</table></td></tr></tbody></table> <!--[if mso]></td></tr></tabl' +
        'e><![endif]--> <!--[if (IE)]></td></tr></table><![endif]--> </td' +
        '> </tr> </tbody></table> <table cellpadding="0" cellspacing="0" ' +
        'align="center" width="100%" border="0" style="border-spacing: 0;' +
        'border-collapse: collapse;vertical-align: top"> <tbody><tr style' +
        '="vertical-align: top"> <td width="100%" style="word-break: brea' +
        'k-word;border-collapse: collapse !important;vertical-align: top;' +
        'background-color: transparent"> <!--[if gte mso 9]><table id="ou' +
        'tlookholder" border="0" cellspacing="0" cellpadding="0" align="c' +
        'enter"><tr><td><![endif]--> <!--[if (IE)]><table width="600" ali' +
        'gn="center" cellpadding="0" cellspacing="0" border="0"> <tr> <td' +
        '><![endif]--> <table cellpadding="0" cellspacing="0" align="cent' +
        'er" width="100%" border="0" class="container" style="border-spac' +
        'ing: 0;border-collapse: collapse;vertical-align: top;max-width: ' +
        '600px;margin: 0 auto;text-align: inherit"><tbody><tr style="vert'
      
        'ical-align: top"><td width="100%" style="word-break: break-word;' +
        'border-collapse: collapse !important;vertical-align: top"><table' +
        ' cellpadding="0" cellspacing="0" width="100%" bgcolor="#ffffff" ' +
        'class="block-grid two-up" style="border-spacing: 0;border-collap' +
        'se: collapse;vertical-align: top;width: 100%;max-width: 600px;co' +
        'lor: #333;background-color: #ffffff"><tbody><tr style="vertical-' +
        'align: top"><td style="word-break: break-word;border-collapse: c' +
        'ollapse !important;vertical-align: top;background-color: #ffffff' +
        ';text-align: center;font-size: 0"><!--[if (gte mso 9)|(IE)]><tab' +
        'le width="100%" align="center" bgcolor="#ffffff" cellpadding="0"' +
        ' cellspacing="0" border="0"><tr><![endif]--><!--[if (gte mso 9)|' +
        '(IE)]><td valign="top" width="300" style="width:300px;"><![endif' +
        ']--><div class="col num6" style="display: inline-block;vertical-' +
        'align: top;text-align: center;width: 300px"><table cellpadding="' +
        '0" cellspacing="0" align="center" width="100%" border="0" style=' +
        '"border-spacing: 0;border-collapse: collapse;vertical-align: top'
      
        '"><tbody><tr style="vertical-align: top"><td style="word-break: ' +
        'break-word;border-collapse: collapse !important;vertical-align: ' +
        'top;background-color: transparent;padding-top: 20px;padding-righ' +
        't: 20px;padding-bottom: 20px;padding-left: 20px;border-top: 0px ' +
        'solid transparent;border-right: 0px solid transparent;border-bot' +
        'tom: 0px solid transparent;border-left: 0px solid transparent"><' +
        'table cellpadding="0" cellspacing="0" width="100%" border="0" st' +
        'yle="border-spacing: 0;border-collapse: collapse;vertical-align:' +
        ' top"> <tbody><tr style="vertical-align: top"> <td align="center' +
        '" style="word-break: break-word;border-collapse: collapse !impor' +
        'tant;vertical-align: top;width: 100%;padding-top: 0px;padding-ri' +
        'ght: 0px;padding-bottom: 0px;padding-left: 0px"> <div align="cen' +
        'ter" style="font-size:12px"> <img class="center fullwidth" align' +
        '="none" border="0" src="http://h8a9d.mailupclient.com/images/6/a' +
        'mbulance.png" alt="Image" title="Image" style="outline: none; te' +
        'xt-decoration: none; clear: both; display: block; border: 0px; h'
      
        'eight: auto; line-height: 100%; margin: 0px auto; max-width: 260' +
        'px; width: 100% !important;" width="260" data-bee="true"> </div>' +
        ' </td> </tr> </tbody></table> <table cellpadding="0" cellspacing' +
        '="0" width="100%" style="border-spacing: 0;border-collapse: coll' +
        'apse;vertical-align: top"> <tbody><tr style="vertical-align: top' +
        '"> <td style="word-break: break-word;border-collapse: collapse !' +
        'important;vertical-align: top;padding-top: 20px;padding-right: 2' +
        '0px;padding-bottom: 20px;padding-left: 20px"> <div style="color:' +
        '#555555;line-height:150%;font-family:Arial, '#39'Helvetica Neue'#39', He' +
        'lvetica, sans-serif;"> <div style="font-size:12px;line-height:18' +
        'px;text-align:center;color:#555555;font-family:Arial, '#39'Helvetica' +
        ' Neue'#39', Helvetica, sans-serif;"><p style="margin: 0;font-size: 1' +
        '2px;line-height: 18px;text-align: center"><span style="font-fami' +
        'ly: arial, helvetica, sans-serif; font-size: 24px; line-height: ' +
        '36px;"><strong>Your title here</strong></span></p></div><div sty' +
        'le="font-size:12px;line-height:18px;text-align:center;color:#555'
      
        '555;font-family:Arial, '#39'Helvetica Neue'#39', Helvetica, sans-serif;"' +
        '><p style="margin: 0;font-size: 12px;line-height: 18px;text-alig' +
        'n: center">&nbsp;<br></p></div><div style="font-size:12px;line-h' +
        'eight:18px;text-align:center;color:#555555;font-family:Arial, '#39'H' +
        'elvetica Neue'#39', Helvetica, sans-serif;"><p style="margin: 0;font' +
        '-size: 12px;line-height: 18px;text-align: center"><span style="f' +
        'ont-size: 14px; line-height: 21px;">Lorem ipsum dolor sit amet, ' +
        'consectetur adipiscing elit. Vestibulum elementum lorem.</span><' +
        'br></p></div><div style="font-size:12px;line-height:18px;text-al' +
        'ign:center;color:#555555;font-family:Arial, '#39'Helvetica Neue'#39', He' +
        'lvetica, sans-serif;"><p style="margin: 0;font-size: 12px;line-h' +
        'eight: 18px;text-align: center"><span style="font-size: 14px; li' +
        'ne-height: 21px;">&nbsp;</span><strong><span style="font-size: 1' +
        '4px; line-height: 21px;"><a style="color:#1DA9E0" title="example' +
        '" href="http://[track]/http://example.com/" target="_blank">More' +
        ' Info&nbsp;?</a></span></strong></p></div> </div> </td> </tr> </'
      
        'tbody></table> </td></tr></tbody></table></div><!--[if (gte mso ' +
        '9)|(IE)]></td><![endif]--><!--[if (gte mso 9)|(IE)]><td valign="' +
        'top" width="300" style="width:300px;"><![endif]--><div class="co' +
        'l num6" style="display: inline-block;vertical-align: top;text-al' +
        'ign: center;width: 300px"><table cellpadding="0" cellspacing="0"' +
        ' align="center" width="100%" border="0" style="border-spacing: 0' +
        ';border-collapse: collapse;vertical-align: top"><tbody><tr style' +
        '="vertical-align: top"><td style="word-break: break-word;border-' +
        'collapse: collapse !important;vertical-align: top;background-col' +
        'or: transparent;padding-top: 20px;padding-right: 20px;padding-bo' +
        'ttom: 20px;padding-left: 20px;border-top: 0px solid transparent;' +
        'border-right: 0px solid transparent;border-bottom: 0px solid tra' +
        'nsparent;border-left: 0px solid transparent"><table cellpadding=' +
        '"0" cellspacing="0" width="100%" border="0" style="border-spacin' +
        'g: 0;border-collapse: collapse;vertical-align: top"> <tbody><tr ' +
        'style="vertical-align: top"> <td align="center" style="word-brea'
      
        'k: break-word;border-collapse: collapse !important;vertical-alig' +
        'n: top;width: 100%;padding-top: 0px;padding-right: 0px;padding-b' +
        'ottom: 0px;padding-left: 0px"> <div align="center" style="font-s' +
        'ize:12px"> <img class="center fullwidth" align="none" border="0"' +
        ' src="http://h8a9d.mailupclient.com/images/6/boy.png" alt="Image' +
        '" title="Image" style="outline: none; text-decoration: none; cle' +
        'ar: both; display: block; border: 0px; height: auto; line-height' +
        ': 100%; margin: 0px auto; max-width: 260px; width: 100% !importa' +
        'nt;" width="260" data-bee="true"> </div> </td> </tr> </tbody></t' +
        'able> <table cellpadding="0" cellspacing="0" width="100%" style=' +
        '"border-spacing: 0;border-collapse: collapse;vertical-align: top' +
        '"> <tbody><tr style="vertical-align: top"> <td style="word-break' +
        ': break-word;border-collapse: collapse !important;vertical-align' +
        ': top;padding-top: 20px;padding-right: 20px;padding-bottom: 20px' +
        ';padding-left: 20px"> <div style="color:#555555;line-height:150%' +
        ';font-family:Arial, '#39'Helvetica Neue'#39', Helvetica, sans-serif;"> <'
      
        'div style="font-size:12px;line-height:18px;text-align:center;col' +
        'or:#555555;font-family:Arial, '#39'Helvetica Neue'#39', Helvetica, sans-' +
        'serif;"><p style="margin: 0;font-size: 12px;line-height: 18px;te' +
        'xt-align: center"><span style="font-family: arial, helvetica, sa' +
        'ns-serif; font-size: 24px; line-height: 36px;"><strong>Your titl' +
        'e here</strong></span>&nbsp;<br></p></div><div style="font-size:' +
        '12px;line-height:18px;text-align:center;color:#555555;font-famil' +
        'y:Arial, '#39'Helvetica Neue'#39', Helvetica, sans-serif;"><p style="mar' +
        'gin: 0;font-size: 12px;line-height: 18px;text-align: center"><sp' +
        'an style="font-size: 14px; line-height: 21px;">Lorem ipsum dolor' +
        ' sit amet, consectetur adipiscing elit. Vestibulum elementum lor' +
        'em.</span><br></p></div><div style="font-size:12px;line-height:1' +
        '8px;text-align:center;color:#555555;font-family:Arial, '#39'Helvetic' +
        'a Neue'#39', Helvetica, sans-serif;"><p style="margin: 0;font-size: ' +
        '12px;line-height: 18px;text-align: center"><span style="font-siz' +
        'e: 14px; line-height: 21px;">&nbsp;</span><strong><span style="f'
      
        'ont-size: 14px; line-height: 21px;"><a style="color:#1DA9E0" tit' +
        'le="example" href="http://[track]/http://example.com/" target="_' +
        'blank">More Info&nbsp;?</a></span></strong></p></div> </div> </t' +
        'd> </tr> </tbody></table> </td></tr></tbody></table></div><!--[i' +
        'f (gte mso 9)|(IE)]></td><![endif]--><!--[if (gte mso 9)|(IE)]><' +
        '/td></tr></table><![endif]--></td></tr></tbody></table></td></tr' +
        '></tbody></table> <!--[if mso]></td></tr></table><![endif]--> <!' +
        '--[if (IE)]></td></tr></table><![endif]--> </td> </tr> </tbody><' +
        '/table> <table cellpadding="0" cellspacing="0" align="center" wi' +
        'dth="100%" border="0" style="border-spacing: 0;border-collapse: ' +
        'collapse;vertical-align: top"> <tbody><tr style="vertical-align:' +
        ' top"> <td width="100%" style="word-break: break-word;border-col' +
        'lapse: collapse !important;vertical-align: top;background-color:' +
        ' transparent"> <!--[if gte mso 9]><table id="outlookholder" bord' +
        'er="0" cellspacing="0" cellpadding="0" align="center"><tr><td><!' +
        '[endif]--> <!--[if (IE)]><table width="600" align="center" cellp'
      
        'adding="0" cellspacing="0" border="0"> <tr> <td><![endif]--> <ta' +
        'ble cellpadding="0" cellspacing="0" align="center" width="100%" ' +
        'border="0" class="container" style="border-spacing: 0;border-col' +
        'lapse: collapse;vertical-align: top;max-width: 600px;margin: 0 a' +
        'uto;text-align: inherit"><tbody><tr style="vertical-align: top">' +
        '<td width="100%" style="word-break: break-word;border-collapse: ' +
        'collapse !important;vertical-align: top"><table cellpadding="0" ' +
        'cellspacing="0" width="100%" bgcolor="#505359" class="block-grid' +
        ' " style="border-spacing: 0;border-collapse: collapse;vertical-a' +
        'lign: top;width: 100%;max-width: 600px;color: #000000;background' +
        '-color: #505359"><tbody><tr style="vertical-align: top"><td styl' +
        'e="word-break: break-word;border-collapse: collapse !important;v' +
        'ertical-align: top;background-color: #505359;text-align: center;' +
        'font-size: 0"><!--[if (gte mso 9)|(IE)]><table width="100%" alig' +
        'n="center" bgcolor="#505359" cellpadding="0" cellspacing="0" bor' +
        'der="0"><tr><![endif]--><!--[if (gte mso 9)|(IE)]><td valign="to'
      
        'p" width="600" style="width:600px;"><![endif]--><div class="col ' +
        'num12" style="display: inline-block;vertical-align: top;width: 1' +
        '00%"><table cellpadding="0" cellspacing="0" align="center" width' +
        '="100%" border="0" style="border-spacing: 0;border-collapse: col' +
        'lapse;vertical-align: top"><tbody><tr style="vertical-align: top' +
        '"><td style="word-break: break-word;border-collapse: collapse !i' +
        'mportant;vertical-align: top;background-color: transparent;paddi' +
        'ng-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left:' +
        ' 0px;border-top: 0px solid transparent;border-right: 0px solid t' +
        'ransparent;border-bottom: 0px solid transparent;border-left: 0px' +
        ' solid transparent"><table width="100%" border="0" cellspacing="' +
        '0" cellpadding="0" style="border-spacing: 0;border-collapse: col' +
        'lapse;vertical-align: top"> <tbody><tr style="vertical-align: to' +
        'p"> <td align="center" valign="top" style="word-break: break-wor' +
        'd;border-collapse: collapse !important;vertical-align: top"> <ta' +
        'ble border="0" cellspacing="0" cellpadding="0" style="border-spa'
      
        'cing: 0;border-collapse: collapse;vertical-align: top"> <tbody><' +
        'tr style="vertical-align: top"> <td align="center" valign="top" ' +
        'style="word-break: break-word;border-collapse: collapse !importa' +
        'nt;vertical-align: top;text-align: center;padding-top: 20px;padd' +
        'ing-right: 20px;padding-bottom: 20px;padding-left: 20px;max-widt' +
        'h: 191px"> <!--[if (gte mso 9)|(IE)]><table width="156" align="l' +
        'eft" border="0" cellspacing="0" cellpadding="0"> <tr> <td align=' +
        '"left"><![endif]--> <table width="100%" align="left" cellpadding' +
        '="0" cellspacing="0" border="0" style="border-spacing: 0;border-' +
        'collapse: collapse;vertical-align: top"> <tbody><tr style="verti' +
        'cal-align: top"> <td align="left" valign="middle" style="word-br' +
        'eak: break-word;border-collapse: collapse !important;vertical-al' +
        'ign: top"> <table align="left" border="0" cellspacing="0" cellpa' +
        'dding="0" style="border-spacing: 0;border-collapse: collapse;ver' +
        'tical-align: top;padding: 0 10px 0 0" height="37"> <tbody><tr st' +
        'yle="vertical-align: top"> <td width="42" align="left" valign="m'
      
        'iddle" style="word-break: break-word;border-collapse: collapse !' +
        'important;vertical-align: top"> <a href="http://[track]/https://' +
        'www.facebook.com/" title="Facebook" target="_blank"> <img src="h' +
        'ttp://h8a9d.mailupclient.com/images/social/circle-color/facebook' +
        '.png" alt="Facebook" title="Facebook" width="32" style="outline:' +
        ' none;text-decoration: none;-ms-interpolation-mode: bicubic;clea' +
        'r: both;display: block;border: none;height: auto;line-height: 10' +
        '0%;max-width: 32px !important" data-bee="true"> </a> </td> </tr>' +
        ' </tbody></table> <table align="left" border="0" cellspacing="0"' +
        ' cellpadding="0" style="border-spacing: 0;border-collapse: colla' +
        'pse;vertical-align: top;padding: 0 10px 0 0" height="37"> <tbody' +
        '><tr style="vertical-align: top"> <td width="42" align="left" va' +
        'lign="middle" style="word-break: break-word;border-collapse: col' +
        'lapse !important;vertical-align: top"> <a href="http://[track]/h' +
        'ttp://twitter.com/" title="Twitter" target="_blank"> <img src="h' +
        'ttp://h8a9d.mailupclient.com/images/social/circle-color/twitter.'
      
        'png" alt="Twitter" title="Twitter" width="32" style="outline: no' +
        'ne;text-decoration: none;-ms-interpolation-mode: bicubic;clear: ' +
        'both;display: block;border: none;height: auto;line-height: 100%;' +
        'max-width: 32px !important" data-bee="true"> </a> </td> </tr> </' +
        'tbody></table> <table align="left" border="0" cellspacing="0" ce' +
        'llpadding="0" style="border-spacing: 0;border-collapse: collapse' +
        ';vertical-align: top;padding: 0 10px 0 0" height="37"> <tbody><t' +
        'r style="vertical-align: top"> <td width="42" align="left" valig' +
        'n="middle" style="word-break: break-word;border-collapse: collap' +
        'se !important;vertical-align: top"> <a href="http://[track]/http' +
        '://plus.google.com/" title="Google+" target="_blank"> <img src="' +
        'http://h8a9d.mailupclient.com/images/social/circle-color/googlep' +
        'lus.png" alt="Google+" title="Google+" width="32" style="outline' +
        ': none;text-decoration: none;-ms-interpolation-mode: bicubic;cle' +
        'ar: both;display: block;border: none;height: auto;line-height: 1' +
        '00%;max-width: 32px !important" data-bee="true"> </a> </td> </tr'
      
        '> </tbody></table> </td> </tr> </tbody></table> <!--[if (gte mso' +
        ' 9)|(IE)]></td> </tr> </table><![endif]--> </td> </tr> </tbody><' +
        '/table> </td> </tr> </tbody></table> </td></tr></tbody></table><' +
        '/div><!--[if (gte mso 9)|(IE)]></td><![endif]--><!--[if (gte mso' +
        ' 9)|(IE)]></td></tr></table><![endif]--></td></tr></tbody></tabl' +
        'e></td></tr></tbody></table> <!--[if mso]></td></tr></table><![e' +
        'ndif]--> <!--[if (IE)]></td></tr></table><![endif]--> </td> </tr' +
        '> </tbody></table> </td> </tr> </tbody></table>'
      '</body>'
      '</html>')
    Encryption = True
    Left = 448
    Top = 221
  end
  object JanuaServerPgFootball: TJanuaServerPgFootball
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaItalian
    TestMode = False
    Connected = False
    KeepAlive = False
    SessionKey = '2d579dc29360d8bbfbb4aa541de5afa9384cf20f208b99bb435f5e6356a81b54'
    SessionID = 0
    JanuaSystem = JanuaPostgresSystem
    HtmlHead.Strings = (
      '<head>'
      
        '<title>Risultati - Liguria - Serie D Girone A - Dilettantissimo.' +
        'tv</title>'
      
        '<meta name=keywords content='#39'Risultati,2016-17,Liguria,Calcio,Di' +
        'lettanti,Campionato,Risultati,Giornate,Dilettantissimo,Calcio Di' +
        'lettantistico,News,Commenti'#39'/>'
      
        '<meta name=description content='#39'Risultati del campionato di calc' +
        'io dilettantistico Serie D Girone A in Italia, stagione 2016-17'#39 +
        '/>'
      
        '<meta http-equiv=Content-Type content='#39'text/html; charset=utf-8'#39 +
        '/>'
      '<meta http-equiv=X-UA-Compatible content='#39'IE=edge'#39'/>   '
      
        '<link rel=stylesheet type='#39'text/css'#39' href="http://151.1.24.133/s' +
        'cripts/dilettantissimo.css "/>'
      '</head>      ')
    TemplateName = 'dilettantissimo'
    TemplateRankingHead.Strings = (
      '<table class="table_ranking sortable">'
      
        '<caption title="Classifica $league_name$ Stagione $season_des$">' +
        '</caption>'
      '<thead>'
      '<tr>'
      '<th colspan="3" class="team header">SQUADRA</th>           '
      '<th class="tooltip header">PT</th>'
      '<th class="tooltip header">G</th>'
      '<th class="tooltip header">V</th>'
      '<th class="tooltip header">N</th>'
      '<th class="tooltip header">P</th>'
      '<th class="tooltip header">F</th>'
      '<th class="tooltip header">S</th>'
      '<th class="tooltip header">DR</th>'
      '<th class="tooltip header">MI</th>'
      '<th class="tooltip details header"></th>'
      '</tr>'
      '</thead>'
      '<tbody> '
      '$football_ranking_rows$'
      '</tbody>'
      '</table>   ')
    TemplateRankingRow.Strings = (
      '<tr class="$row_class$" data-team-id="$team_id$">'
      '<td class="last_match">'
      '</td>'
      '<td class="team_logo"></td>'
      '<td class="team">                                '
      '<a href="$team_url$">$team_name$</a>'
      '</td>              '
      '<td class="points">$points$</td>'
      '<td>$played_matches$</td>           '
      '<td>$won_matches$</td>'
      '<td>$tied_matches$</td>'
      '<td>$lost_matches$</td>'
      '<td>$goal_done$</td>              '
      '<td>$goal_lost$</td>'
      '<td>$goal_difference$</td>'
      
        '<td>$scoring_average$</td>                                      ' +
        '     '
      '<td class="details">'
      '</td>'
      '</tr>    ')
    TemplateRankingPage.Strings = (
      '<!DOCTYPE html>'
      
        '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=it lang=it> ' +
        ' '
      '$html_header$'
      '<body>'
      '$football_ranking_table$     '
      '</body>  '
      '</html>  ')
    TemplateGoalRankingHead.Strings = (
      
        '<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper n' +
        'o-footer">   '
      
        '<table class="table_scorers sortable dataTable no-footer" id="Da' +
        'taTables_Table_0" role="grid" aria-describedby="DataTables_Table' +
        '_0_info">'
      
        '<caption title="Classifica Marcatori $league_name$ Stagione $sea' +
        'son_des$"></caption>'
      '<thead>'
      '<tr role="row">'
      
        '<th class="player sorting" tabindex="0" aria-controls="DataTable' +
        's_Table_0" rowspan="1" colspan="1" aria-label="GIOCATORE: activa' +
        'te to sort column ascending" style="width: 45%;">'
      'GIOCATORE'
      '</th>'
      
        '<th class="team sorting" tabindex="0" aria-controls="DataTables_' +
        'Table_0" rowspan="1" colspan="1" aria-label="SQUADRA: activate t' +
        'o sort column ascending" style="width: 45%;">'
      'SQUADRA'
      '</th>'
      
        '<th class="sorting_desc" tabindex="0" aria-controls="DataTables_' +
        'Table_0" rowspan="1" colspan="1" aria-sort="descending" aria-lab' +
        'el="GOL: activate to sort column ascending" style="width: 10%;">'
      'GOL'
      '</th>'
      
        '</tr>                                                           ' +
        '                                                                ' +
        '                                                                ' +
        '    '
      
        '</thead>                                                        ' +
        '                                                                ' +
        '                                                                ' +
        '     '
      
        '<tbody>                                                         ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                                     '
      '$football_goalranking_rows$'
      '</tbody>'
      '</table> '
      '</div>   ')
    TemplateGoalRankingRow.Strings = (
      '<tr class=$class$ role="row">'
      '<td class="player">'
      '<a href="$player_url$">$family_name$ $first_name$</a>'
      '</td>                      '
      '<td class="team">'
      '<a href="$team_url$">$team_name$</a>'
      '</td>                             '
      '<td class="gol sorting_1">$goals$</td>'
      '</tr>      ')
    TemplateGoalRankingPage.Strings = (
      '<!DOCTYPE html>'
      
        '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=it lang=it> ' +
        ' '
      '$html_header$'
      '<body>                     '
      '$football_goalranking_table$'
      '</body>            '
      '</html>                ')
    TemplateMatchesPage.Strings = (
      '<!DOCTYPE html>'
      
        '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=it lang=it> ' +
        ' '
      '$html_header$'
      '<body>                     '
      '$football_matches_table$'
      '</body>  '
      '</html>           ')
    TemplateMatchesHead.Strings = (
      '<div id=table_results_content>     '
      '<table class=table_results>'
      '<caption title="$title$"></caption>'
      '<tbody>  '
      '$football_matches_rows$'
      '</tbody>'
      '</table> '
      '</div>            ')
    TemplateMatchesRow.Strings = (
      '<tr class=$class$>'
      '<td class=team data-team-id=$home_id$>  '
      '<span>    '
      
        '<a href="$home_team_url$" title="Vai alle informazioni sulla squ' +
        'adra">$home_team$</a>  '
      '</span>  '
      '</td>'
      '<td>'
      '<span style=width:10px>-</span>  '
      '</td>  '
      '<td class=team data-team-id=$home_id$> '
      '<span>    '
      
        '<a href="$visitors_team_url$" title="Vai alle informazioni sulla' +
        ' squadra">$visitors_team$</a>  '
      '</span>      '
      '</td>'
      '<td class="result tooltip" title="Partita terminata">'
      
        '<a href="$match_url$">                                          ' +
        '  '
      '<span>$goal_home$</span>               '
      '<span style=width:10px>-</span>             '
      '<span>$goal_visitor$</span>'
      '</a>'
      '</td>                                       '
      '</tr>       ')
    GoalRankingLimit = 0
    Left = 568
    Top = 61
  end
  object JanuaPostgresSystem: TJanuaPostgresSystem
    Verbose = False
    LogToFile = True
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    IsServer = True
    TestMode = False
    Connected = False
    KeepAlive = False
    SessionID = 0
    Password = 'ergomercator.com'
    LoginPrompt = True
    LoadedProfile = False
    Left = 568
    Top = 125
  end
  object JanuaServerHealth: TJanuaServerHealth
    Verbose = False
    LogToFile = True
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    Connected = False
    KeepAlive = False
    SessionID = 0
    NumArticles = 0
    MailSender = JanuaMailSender1
    Left = 568
    Top = 248
  end
  object JanuaServerJPublic: TJanuaServerJPublic
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    Connected = False
    KeepAlive = False
    SessionID = 0
    JanuaSystem = JanuaPostgresSystem
    CountryID = 0
    Left = 448
    Top = 288
  end
end
