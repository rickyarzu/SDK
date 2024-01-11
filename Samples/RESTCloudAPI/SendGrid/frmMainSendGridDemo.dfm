object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TTMSFNCCloudSendGrid Demo'
  ClientHeight = 762
  ClientWidth = 1053
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    1053
    762)
  TextHeight = 15
  object From: TEdit
    Left = 8
    Top = 37
    Width = 1039
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Text = 'info@januaproject.it'
    TextHint = 'From'
  end
  object Subject: TEdit
    Left = 8
    Top = 95
    Width = 1039
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Text = 'Conferma prenotazione ritiro veicolo'
    TextHint = 'Subject'
  end
  object Recipient: TEdit
    Left = 8
    Top = 66
    Width = 1039
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Text = 'rickyarzu@gmail.com'
    TextHint = 'To'
  end
  object APIKey: TEdit
    Left = 8
    Top = 8
    Width = 1039
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    Text = 
      'SG.PTSsUPYoQwGH6Lc56g7i4A.pcMP1F5svCMdH2iDzMDDPikR6def4gaTNnNuuk' +
      'X5ih8'
    TextHint = 'APIKey'
  end
  object Send: TButton
    Left = 8
    Top = 729
    Width = 1039
    Height = 25
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Send'
    TabOrder = 4
    OnClick = SendClick
  end
  object content: TAdvMemo
    Left = 8
    Top = 124
    Width = 1039
    Height = 588
    Cursor = crIBeam
    ActiveLineSettings.ShowActiveLine = False
    ActiveLineSettings.ShowActiveLineIndicator = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoCompletion.Font.Charset = DEFAULT_CHARSET
    AutoCompletion.Font.Color = clWindowText
    AutoCompletion.Font.Height = -12
    AutoCompletion.Font.Name = 'Segoe UI'
    AutoCompletion.Font.Style = []
    AutoCompletion.StartToken = '(.'
    AutoCorrect.Active = True
    AutoHintParameterPosition = hpBelowCode
    BookmarkGlyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
      2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
      2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
      B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
      B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
      BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
      BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
      BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
      25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
    BorderColor = 10724259
    BorderStyle = bsSingle
    ClipboardFormats = [cfText]
    CodeFolding.Enabled = False
    CodeFolding.LineColor = clGray
    Ctl3D = False
    DelErase = True
    EnhancedHomeKey = False
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -13
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.BorderColor = 10724259
    Gutter.GutterColor = clWhite
    Gutter.LineNumberTextColor = 3881787
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'COURIER NEW'
    Font.Style = []
    HiddenCaret = False
    Lines.Strings = (
      '<!DOCTYPE html>'
      ''
      
        '<html lang="en" xmlns:o="urn:schemas-microsoft-com:office:office' +
        '" xmlns:v="urn:schemas-microsoft-com:vml">'
      '<head>'
      '<title></title>'
      
        '<meta content="text/html; charset=utf-8" http-equiv="Content-Typ' +
        'e"/>'
      
        '<meta content="width=device-width, initial-scale=1.0" name="view' +
        'port"/>'
      
        '<!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96<' +
        '/o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><' +
        '![endif]-->'
      '<style>'
      '        * {'
      '            box-sizing: border-box;'
      '        }'
      ''
      '        body {'
      '            margin: 0;'
      '            padding: 0;'
      '        }'
      ''
      '        a[x-apple-data-detectors] {'
      '            color: inherit !important;'
      '            text-decoration: inherit !important;'
      '        }'
      ''
      '        #MessageViewBody a {'
      '            color: inherit;'
      '            text-decoration: none;'
      '        }'
      ''
      '        p {'
      '            line-height: inherit'
      '        }'
      ''
      '        .desktop_hide,'
      '        .desktop_hide table {'
      '            mso-hide: all;'
      '            display: none;'
      '            max-height: 0px;'
      '            overflow: hidden;'
      '        }'
      ''
      '        .menu_block.desktop_hide .menu-links span {'
      '            mso-hide: all;'
      '        }'
      ''
      '        @media (max-width:670px) {'
      ''
      '            .desktop_hide table.icons-inner,'
      '            .row-9 .column-2 .block-3.image_block img,'
      '            .social_block.desktop_hide .social-table {'
      '                display: inline-block !important;'
      '            }'
      ''
      '            .icons-inner {'
      '                text-align: center;'
      '            }'
      ''
      '            .icons-inner td {'
      '                margin: 0 auto;'
      '            }'
      ''
      '            .fullMobileWidth,'
      '            .image_block img.big,'
      '            .row-content {'
      '                width: 100% !important;'
      '            }'
      ''
      '            .mobile_hide {'
      '                display: none;'
      '            }'
      ''
      '            .stack .column {'
      '                width: 100%;'
      '                display: block;'
      '            }'
      ''
      '            .mobile_hide {'
      '                min-height: 0;'
      '                max-height: 0;'
      '                max-width: 0;'
      '                overflow: hidden;'
      '                font-size: 0px;'
      '            }'
      ''
      '            .desktop_hide,'
      '            .desktop_hide table {'
      '                display: table !important;'
      '                max-height: none !important;'
      '            }'
      ''
      '            .row-2 .column-1 .block-1.heading_block td.pad,'
      '            .row-3 .column-1 .block-1.heading_block td.pad,'
      '            .row-4 .column-1 .block-3.heading_block td.pad,'
      '            .row-4 .column-2 .block-3.heading_block td.pad,'
      '            .row-4 .column-3 .block-3.heading_block td.pad,'
      '            .row-5 .column-1 .block-1.heading_block td.pad,'
      '            .row-5 .column-1 .block-2.heading_block td.pad,'
      '            .row-9 .column-1 .block-4.heading_block td.pad {'
      '                padding: 0 0 0 20px !important;'
      '            }'
      ''
      '            .row-2 .column-1 .block-1.heading_block h1,'
      '            .row-3 .column-1 .block-1.heading_block h1,'
      '            .row-4 .column-1 .block-3.heading_block h1,'
      '            .row-4 .column-2 .block-3.heading_block h1,'
      '            .row-4 .column-3 .block-3.heading_block h1,'
      '            .row-5 .column-1 .block-1.heading_block h1,'
      '            .row-5 .column-1 .block-2.heading_block h1,'
      '            .row-6 .column-2 .block-3.heading_block h1,'
      '            .row-7 .column-1 .block-3.heading_block h1,'
      '            .row-7 .column-2 .block-3.heading_block h1,'
      '            .row-9 .column-1 .block-4.heading_block h1 {'
      '                font-size: 30px !important;'
      '            }'
      ''
      '            .row-2 .column-1 .block-2.paragraph_block td.pad,'
      '            .row-4 .column-1 .block-4.paragraph_block td.pad,'
      '            .row-4 .column-2 .block-4.paragraph_block td.pad,'
      '            .row-4 .column-3 .block-4.paragraph_block td.pad,'
      '            .row-6 .column-1 .block-3.heading_block td.pad,'
      '            .row-6 .column-1 .block-4.paragraph_block td.pad,'
      '            .row-6 .column-1 .block-5.paragraph_block td.pad,'
      '            .row-6 .column-2 .block-4.paragraph_block td.pad,'
      '            .row-7 .column-1 .block-4.paragraph_block td.pad,'
      '            .row-7 .column-2 .block-4.paragraph_block td.pad,'
      '            .row-9 .column-1 .block-5.paragraph_block td.pad,'
      '            .row-9 .column-2 .block-3.image_block td.pad {'
      '                padding: 0 20px !important;'
      '            }'
      ''
      '            .row-6 .column-1 .block-3.heading_block h1 {'
      '                text-align: left !important;'
      '                font-size: 30px !important;'
      '            }'
      ''
      '            .row-9 .column-2 .block-3.image_block .alignment {'
      '                text-align: left !important;'
      '            }'
      ''
      '            .row-6 .column-2 .block-2.image_block td.pad,'
      '            .row-7 .column-1 .block-2.image_block td.pad,'
      '            .row-7 .column-2 .block-2.image_block td.pad {'
      '                padding: 30px 0 0 !important;'
      '            }'
      ''
      '            .row-6 .column-2 .block-3.heading_block td.pad,'
      '            .row-6 .column-2 .block-5.paragraph_block td.pad,'
      '            .row-7 .column-1 .block-3.heading_block td.pad,'
      '            .row-7 .column-1 .block-5.paragraph_block td.pad,'
      '            .row-7 .column-2 .block-3.heading_block td.pad {'
      '                padding: 10px 20px 5px !important;'
      '            }'
      ''
      '            .row-9 .column-2 .block-4.heading_block h1 {'
      '                text-align: left !important;'
      '                font-size: 24px !important;'
      '            }'
      ''
      '            .row-9 .column-2 .block-4.heading_block td.pad {'
      '                padding: 10px 20px 20px !important;'
      '            }'
      ''
      '            .row-7 .column-2 .block-5.paragraph_block td.pad {'
      '                padding: 10px 20px 0 !important;'
      '            }'
      ''
      '            .row-1 .column-1 {'
      '                padding: 35px 0 20px 10px !important;'
      '            }'
      ''
      '            .row-1 .column-2 {'
      '                padding: 28px 20px 20px 0 !important;'
      '            }'
      ''
      '            .row-3 .column-1 {'
      '                padding: 40px 0 5px !important;'
      '            }'
      ''
      '            .row-4 .column-1 {'
      '                padding: 30px 0 !important;'
      '            }'
      ''
      '            .row-4 .column-2 {'
      '                padding: 0 0 30px !important;'
      '            }'
      ''
      '            .row-4 .column-3 {'
      '                padding: 0 0 40px !important;'
      '            }'
      ''
      '            .row-11 .column-2,'
      '            .row-8 .column-1 {'
      '                padding: 10px 0 20px !important;'
      '            }'
      ''
      '            .row-10 .column-1 {'
      '                padding: 60px 0 0 !important;'
      '            }'
      ''
      '            .row-11 .column-1 {'
      '                padding: 20px 0 5px !important;'
      '            }'
      '        }'
      '    </style>'
      '</head>'
      
        '<body style="background-color: #dfeaf1; margin: 0; padding: 0; -' +
        'webkit-text-size-adjust: none; text-size-adjust: none;">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="nl-cont' +
        'ainer" role="presentation" style="mso-table-lspace: 0pt; mso-tab' +
        'le-rspace: 0pt; background-color: #dfeaf1;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-1" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content" role="presentation" style="mso-table-lspace' +
        ': 0pt; mso-table-rspace: 0pt; background-color: #ffffff; border-' +
        'radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; padding-lef' +
        't: 20px; padding-right: 20px; vertical-align: top; border-top: 0' +
        'px; border-right: 0px; border-bottom: 0px; border-left: 0px;" wi' +
        'dth="41.666666666666664%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-2" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;padding-top:30px;padding-bottom:30px;">'
      
        '<div align="left" class="alignment" style="line-height:10px"><a ' +
        'href="www.examplelink.com" style="outline:none" tabindex="-1" ta' +
        'rget="_blank"><img alt="Main CarRental Logo" src="https://www.pi' +
        'kapp.it/wp-content/uploads/2022/07/pikapp_logo3.png" style="disp' +
        'lay: block; height: auto; border: 0; width: 231px; max-width: 10' +
        '0%;" title="Main CarRental Logo" width="231"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      
        '<td class="column column-2" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; padding-lef' +
        't: 20px; padding-right: 20px; vertical-align: top; border-top: 0' +
        'px; border-right: 0px; border-bottom: 0px; border-left: 0px;" wi' +
        'dth="58.333333333333336%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="menu_bl' +
        'ock block-2" role="presentation" style="mso-table-lspace: 0pt; m' +
        'so-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="color:#b81212;font-family:inherit;font-si' +
        'ze:14px;text-align:right;padding-top:30px;padding-bottom:30px;">'
      
        '<table border="0" cellpadding="0" cellspacing="0" role="presenta' +
        'tion" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;" widt' +
        'h="100%">'
      '<tr>'
      '<td class="alignment" style="text-align:right;font-size:0px;">'
      '<div class="menu-links">'
      
        '<!--[if mso]><table role="presentation" border="0" cellpadding="' +
        '0" cellspacing="0" align="center" style=""><tr style="text-align' +
        ':right;"><![endif]-->'
      
        '<!--[if mso]><td style="padding-top:5px;padding-right:5px;paddin' +
        'g-bottom:5px;padding-left:5px"><![endif]--><a href="www.examplel' +
        'ink.com" style="mso-hide:false;padding-top:5px;padding-bottom:5p' +
        'x;padding-left:5px;padding-right:5px;display:inline-block;color:' +
        '#b81212;font-family:Helvetica Neue, Helvetica, Arial, sans-serif' +
        ';font-size:14px;text-decoration:none;letter-spacing:normal;">Chi' +
        ' Siamo</a>'
      '<!--[if mso]></td><![endif]-->'
      
        '<!--[if mso]><td style="padding-top:5px;padding-right:5px;paddin' +
        'g-bottom:5px;padding-left:5px"><![endif]--><a href="www.examplel' +
        'ink.com" style="mso-hide:false;padding-top:5px;padding-bottom:5p' +
        'x;padding-left:5px;padding-right:5px;display:inline-block;color:' +
        '#b81212;font-family:Helvetica Neue, Helvetica, Arial, sans-serif' +
        ';font-size:14px;text-decoration:none;letter-spacing:normal;">I n' +
        'ostri Servizi</a>'
      '<!--[if mso]></td><![endif]-->'
      
        '<!--[if mso]><td style="padding-top:5px;padding-right:5px;paddin' +
        'g-bottom:5px;padding-left:5px"><![endif]--><a href="www.examplel' +
        'ink.com" style="mso-hide:false;padding-top:5px;padding-bottom:5p' +
        'x;padding-left:5px;padding-right:5px;display:inline-block;color:' +
        '#b81212;font-family:Helvetica Neue, Helvetica, Arial, sans-serif' +
        ';font-size:14px;text-decoration:none;letter-spacing:normal;">Con' +
        'tatteci</a>'
      '<!--[if mso]></td><![endif]-->'
      '<!--[if mso]></tr></table><![endif]-->'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-2" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #dcf1ff; b' +
        'order-radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; padding-top: 20px; padding-bottom: 0px; border-top: 0p' +
        'x; border-right: 0px; border-bottom: 0px; border-left: 0px;" wid' +
        'th="100%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-1" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;text' +
        '-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 42px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: left; margin-top: 0; margin-bottom: 0;"><span class="tin' +
        'yMce-placeholder">Prenotazione ritiro Veicolo</span></h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-2" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      '<td class="pad" style="padding-left:20px;padding-right:60px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:16px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:24px;">'
      
        '<p style="margin: 0;">Con la presente vi informiamo che in data ' +
        '28/11/2022 ritireremo il vostro veicolo targato GE 123 HH alle o' +
        're 14:30 presso Viale Italia 35, 20100, Milano (MI) per consegna' +
        'rlo a Carrozzeria Ghisolfa in Via della Ghisolfa 23. Con riconse' +
        'gna prevista per il 30/11/2022 alle ore 10:30 presso '#160'Viale Ital' +
        'ia 35, 20100, Milano (MI.)'#160'</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="button_' +
        'block block-3" role="presentation" style="mso-table-lspace: 0pt;' +
        ' mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-left:60px;padding-right:20px;padd' +
        'ing-top:20px;text-align:left;">'
      '<div align="left" class="alignment">'
      
        '<!--[if mso]><v:roundrect xmlns:v="urn:schemas-microsoft-com:vml' +
        '" xmlns:w="urn:schemas-microsoft-com:office:word" href="www.exam' +
        'plelink.com" style="height:38px;width:285px;v-text-anchor:middle' +
        ';" arcsize="79%" stroke="false" fillcolor="#0056f1"><w:anchorloc' +
        'k/><v:textbox inset="0px,0px,0px,0px"><center style="color:#ffff' +
        'ff; font-family:Arial, sans-serif; font-size:14px"><![endif]--><' +
        'a href="www.examplelink.com" style="text-decoration:none;display' +
        ':inline-block;color:#ffffff;background-color:#0056f1;border-radi' +
        'us:30px;width:auto;border-top:0px solid transparent;font-weight:' +
        '400;border-right:0px solid transparent;border-bottom:0px solid t' +
        'ransparent;border-left:0px solid transparent;padding-top:5px;pad' +
        'ding-bottom:5px;font-family:Helvetica Neue, Helvetica, Arial, sa' +
        'ns-serif;font-size:14px;text-align:center;mso-border-alt:none;wo' +
        'rd-break:keep-all;" target="_blank"><span style="padding-left:20' +
        'px;padding-right:20px;font-size:14px;display:inline-block;letter' +
        '-spacing:normal;"><span dir="ltr" style="word-break: break-word;' +
        ' line-height: 28px;">Confermate l'#39'appuntamento</span></span></a>'
      '<!--[if mso]></center></v:textbox></v:roundrect><![endif]-->'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-4" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="MainBanner Image - Blue Car" class="bi' +
        'g" src="https://www.associazioneinvalidi.org/images/8b2ead05-6fe' +
        '6-4470-85a9-38b3f784a461.jpg" style="display: block; height: aut' +
        'o; border: 0; width: 650px; max-width: 100%;" title="MainBanner ' +
        'Image - Blue Car" width="650"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-3" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #ffffff; b' +
        'order-radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; padding-top: 50px; padding-bottom: 5px; border-top: 0p' +
        'x; border-right: 0px; border-bottom: 0px; border-left: 0px;" wid' +
        'th="100%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-1" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;text' +
        '-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 30px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: center; margin-top: 0; margin-bottom: 0;"><span class="t' +
        'inyMce-placeholder">Cosa offre il nostro servizio?</span></h1>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-4" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #ffffff; b' +
        'order-radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="33.333333333333336%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-2" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;padding-top:30px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="Fast Booking icon Image" src="https://' +
        'www.associazioneinvalidi.org/images/FastBookingIcom.png" style="' +
        'display: block; height: auto; border: 0; width: 36px; max-width:' +
        ' 100%;" title="Fast Booking icon Image" width="36"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:20px;pad' +
        'ding-right:20px;padding-top:10px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: center; margin-top: 0; margin-bottom: 0;">Fast Booking</' +
        'h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-4" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;padd' +
        'ing-bottom:50px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:center;mso-line-h' +
        'eight-alt:21px;">'
      '<p style="margin: 0;">RITIRO E CONSEGNA</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      
        '<td class="column column-2" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="33.333333333333336%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-2" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;padding-top:30px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="Pick Up Location Icon Image" src="http' +
        's://www.associazioneinvalidi.org/images/PULocationIcon.png" styl' +
        'e="display: block; height: auto; border: 0; width: 36px; max-wid' +
        'th: 100%;" title="Pick Up Location Icon Image" width="36"/></a><' +
        '/div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:20px;pad' +
        'ding-right:20px;padding-top:10px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: center; margin-top: 0; margin-bottom: 0;">Pickup Locatio' +
        'n</h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-4" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;padd' +
        'ing-bottom:50px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:center;mso-line-h' +
        'eight-alt:21px;">'
      
        '<p style="margin: 0;">Lorem ipsum dolor sit amet, consectetur ad' +
        'ipiscing elit, sed do eiusm.</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      
        '<td class="column column-3" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="33.333333333333336%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-2" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;padding-top:30px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="For Customers Icon Image" src="https:/' +
        '/www.associazioneinvalidi.org/images/FCustomersIcon.png" style="' +
        'display: block; height: auto; border: 0; width: 36px; max-width:' +
        ' 100%;" title="For Customers Icon Image" width="36"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:20px;pad' +
        'ding-right:20px;padding-top:10px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: center; margin-top: 0; margin-bottom: 0;">For Customers<' +
        '/h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-4" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;padd' +
        'ing-bottom:50px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:center;mso-line-h' +
        'eight-alt:21px;">'
      
        '<p style="margin: 0;">Lorem ipsum dolor sit amet, consectetur ad' +
        'ipiscing elit, sed do eiusm.</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-5" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #dcf2ff; b' +
        'order-radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; padding-top: 30px; padding-bottom: 30px; border-top: 0' +
        'px; border-right: 0px; border-bottom: 0px; border-left: 0px;" wi' +
        'dth="100%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-1" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;text' +
        '-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #0056f1; direction: ltr; font-famil' +
        'y: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 50px' +
        '; font-weight: 700; letter-spacing: normal; line-height: 150%; t' +
        'ext-align: center; margin-top: 0; margin-bottom: 0;"><span class' +
        '="tinyMce-placeholder">20% OFF</span></h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-2" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;text' +
        '-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 26px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: center; margin-top: 0; margin-bottom: 0;"><span class="t' +
        'inyMce-placeholder">for Labor Day</span></h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="divider' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:10px;pad' +
        'ding-right:10px;padding-top:30px;">'
      '<div align="center" class="alignment">'
      
        '<table border="0" cellpadding="0" cellspacing="0" role="presenta' +
        'tion" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;" widt' +
        'h="100%">'
      '<tr>'
      
        '<td class="divider_inner" style="font-size: 1px; line-height: 1p' +
        'x; border-top: 1px dashed #0056F1;"><span>'#8202'</span></td>'
      '</tr>'
      '</table>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-6" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #dcf2ff; b' +
        'order-radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="50%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-2" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;padding-top:5px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="Mercedes Benz - S Class Image" class="' +
        'fullMobileWidth" src="https://www.associazioneinvalidi.org/image' +
        's/MecedesSclass.png" style="display: block; height: auto; border' +
        ': 0; width: 250px; max-width: 100%;" title="Mercedes Benz - S Cl' +
        'ass Image" width="250"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:40px;pad' +
        'ding-right:20px;padding-top:10px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: left; margin-top: 0; margin-bottom: 0;">Mercedes Benz - ' +
        'S Class</h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-4" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      '<td class="pad" style="padding-left:40px;padding-right:30px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:21px;">'
      
        '<p style="margin: 0;">Lorem ipsum dolor sit amet, consectetur ad' +
        'ipiscing elit, sed do eiusm.</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-5" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:15px;padding-left:40px;pad' +
        'ding-right:30px;padding-top:10px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:21px;">'
      
        '<p style="margin: 0;"><a href="http://www.examplelink.com" rel="' +
        'noopener" style="text-decoration: none; color: #0056f1;" target=' +
        '"_blank"><strong>Call Now</strong></a></p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      
        '<td class="column column-2" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="50%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-2" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;padding-top:5px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="Audi RS8 Image" class="fullMobileWidth' +
        '" src="https://www.associazioneinvalidi.org/images/AudiRS8.png" ' +
        'style="display: block; height: auto; border: 0; width: 250px; ma' +
        'x-width: 100%;" title="Audi RS8 Image" width="250"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:40px;pad' +
        'ding-right:20px;padding-top:10px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: left; margin-top: 0; margin-bottom: 0;">Audi RS8</h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-4" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      '<td class="pad" style="padding-left:40px;padding-right:30px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:21px;">'
      
        '<p style="margin: 0;">Lorem ipsum dolor sit amet, consectetur ad' +
        'ipiscing elit, sed do eiusm.</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-5" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:15px;padding-left:40px;pad' +
        'ding-right:30px;padding-top:10px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:21px;">'
      
        '<p style="margin: 0;"><a href="http://www.examplelink.com" rel="' +
        'noopener" style="text-decoration: none; color: #0056f1;" target=' +
        '"_blank"><strong>Call Now</strong></a></p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-7" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #dcf2ff; b' +
        'order-radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="50%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-2" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;padding-top:5px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="Mercedes Benz - GLE Image" class="full' +
        'MobileWidth" src="https://www.associazioneinvalidi.org/images/Be' +
        'nzGLE.png" style="display: block; height: auto; border: 0; width' +
        ': 250px; max-width: 100%;" title="Mercedes Benz - GLE Image" wid' +
        'th="250"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:40px;pad' +
        'ding-right:20px;padding-top:10px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: left; margin-top: 0; margin-bottom: 0;">Mercedes Benz - ' +
        'GLE</h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-4" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      '<td class="pad" style="padding-left:40px;padding-right:30px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:21px;">'
      
        '<p style="margin: 0;">Lorem ipsum dolor sit amet, consectetur ad' +
        'ipiscing elit, sed do eiusm.</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-5" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:15px;padding-left:40px;pad' +
        'ding-right:30px;padding-top:10px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:21px;">'
      
        '<p style="margin: 0;"><a href="http://www.examplelink.com" rel="' +
        'noopener" style="text-decoration: none; color: #0056f1;" target=' +
        '"_blank"><strong>Call Now</strong></a></p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      
        '<td class="column column-2" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="50%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-2" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;padding-top:5px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="BMW 8 Image" class="fullMobileWidth" s' +
        'rc="https://www.associazioneinvalidi.org/images/BMW8.png" style=' +
        '"display: block; height: auto; border: 0; width: 250px; max-widt' +
        'h: 100%;" title="BMW 8 Image" width="250"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:40px;pad' +
        'ding-right:20px;padding-top:10px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #000; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: left; margin-top: 0; margin-bottom: 0;">BMW 8</h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-4" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      '<td class="pad" style="padding-left:40px;padding-right:30px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:21px;">'
      
        '<p style="margin: 0;">Lorem ipsum dolor sit amet, consectetur ad' +
        'ipiscing elit, sed do eiusm.</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-5" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:15px;padding-left:40px;pad' +
        'ding-right:30px;padding-top:10px;">'
      
        '<div style="color:#101112;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;' +
        'letter-spacing:0px;line-height:150%;text-align:left;mso-line-hei' +
        'ght-alt:21px;">'
      
        '<p style="margin: 0;"><a href="http://www.examplelink.com" rel="' +
        'noopener" style="text-decoration: none; color: #0056f1;" target=' +
        '"_blank"><strong>Call Now</strong></a></p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-8" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #dcf2ff; b' +
        'order-radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; padding-top: 10px; padding-bottom: 30px; border-top: 0' +
        'px; border-right: 0px; border-bottom: 0px; border-left: 0px;" wi' +
        'dth="100%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="divider' +
        '_block block-1" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:10px;pad' +
        'ding-right:10px;padding-top:30px;">'
      '<div align="center" class="alignment">'
      
        '<table border="0" cellpadding="0" cellspacing="0" role="presenta' +
        'tion" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;" widt' +
        'h="100%">'
      '<tr>'
      
        '<td class="divider_inner" style="font-size: 1px; line-height: 1p' +
        'x; border-top: 1px dashed #0056F1;"><span>'#8202'</span></td>'
      '</tr>'
      '</table>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="button_' +
        'block block-2" role="presentation" style="mso-table-lspace: 0pt;' +
        ' mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;padd' +
        'ing-top:20px;text-align:center;">'
      '<div align="center" class="alignment">'
      
        '<!--[if mso]><v:roundrect xmlns:v="urn:schemas-microsoft-com:vml' +
        '" xmlns:w="urn:schemas-microsoft-com:office:word" href="www.exam' +
        'plelink.com" style="height:38px;width:123px;v-text-anchor:middle' +
        ';" arcsize="79%" stroke="false" fillcolor="#0056f1"><w:anchorloc' +
        'k/><v:textbox inset="0px,0px,0px,0px"><center style="color:#ffff' +
        'ff; font-family:Arial, sans-serif; font-size:14px"><![endif]--><' +
        'a href="www.examplelink.com" style="text-decoration:none;display' +
        ':inline-block;color:#ffffff;background-color:#0056f1;border-radi' +
        'us:30px;width:auto;border-top:0px solid transparent;font-weight:' +
        '400;border-right:0px solid transparent;border-bottom:0px solid t' +
        'ransparent;border-left:0px solid transparent;padding-top:5px;pad' +
        'ding-bottom:5px;font-family:Helvetica Neue, Helvetica, Arial, sa' +
        'ns-serif;font-size:14px;text-align:center;mso-border-alt:none;wo' +
        'rd-break:keep-all;" target="_blank"><span style="padding-left:20' +
        'px;padding-right:20px;font-size:14px;display:inline-block;letter' +
        '-spacing:normal;"><span dir="ltr" style="word-break: break-word;' +
        ' line-height: 28px;">Explore More</span></span></a>'
      '<!--[if mso]></center></v:textbox></v:roundrect><![endif]-->'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-9" role="presentation" style="mso-table-lspace: ' +
        '0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #0056f1; c' +
        'olor: #000000; border-radius: 0; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="58.333333333333336%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-3" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-left:20px;padding-right:20px;widt' +
        'h:100%;padding-top:55px;">'
      
        '<div align="left" class="alignment" style="line-height:10px"><a ' +
        'href="www.examplelink.com" style="outline:none" tabindex="-1" ta' +
        'rget="_blank"><img alt="Logo CarRental Image" src="https://www.a' +
        'ssociazioneinvalidi.org/images/DarkLogoSmall.png" style="display' +
        ': block; height: auto; border: 0; width: 76px; max-width: 100%;"' +
        ' title="Logo CarRental Image" width="76"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-4" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:5px;padding-left:20px;padd' +
        'ing-right:20px;padding-top:5px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #fff; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 30px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 150%; text' +
        '-align: left; margin-top: 0; margin-bottom: 0;"><span class="tin' +
        'yMce-placeholder">Why us?</span></h1>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-5" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      '<td class="pad" style="padding-left:20px;padding-right:20px;">'
      
        '<div style="color:#fff;direction:ltr;font-family:Helvetica Neue,' +
        ' Helvetica, Arial, sans-serif;font-size:14px;font-weight:400;let' +
        'ter-spacing:0px;line-height:150%;text-align:left;mso-line-height' +
        '-alt:21px;">'
      
        '<p style="margin: 0;">Lorem ipsum dolor sit amet, consectetur ad' +
        'ipiscing elit, sed do eiusmod tempor incididunt ut labore et dol' +
        'ore magna aliqua. Ut enim ad minim veniam, quis nostrud exercita' +
        'tion.</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<div class="spacer_block mobile_hide" style="height:50px;line-he' +
        'ight:50px;font-size:1px;">'#8202'</div>'
      
        '<div class="spacer_block" style="height:5px;line-height:5px;font' +
        '-size:1px;">'#8202'</div>'
      '</td>'
      
        '<td class="column column-2" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; border-top: 0px; border-right: 0px; border-bottom: 0px' +
        '; border-left: 0px;" width="41.666666666666664%">'
      
        '<div class="spacer_block" style="height:5px;line-height:5px;font' +
        '-size:1px;">'#8202'</div>'
      
        '<div class="spacer_block mobile_hide" style="height:75px;line-he' +
        'ight:75px;font-size:1px;">'#8202'</div>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-3" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="Call Us Icon Image" src="https://www.a' +
        'ssociazioneinvalidi.org/images/CallUsIcon.png" style="display: b' +
        'lock; height: auto; border: 0; width: 81px; max-width: 100%;" ti' +
        'tle="Call Us Icon Image" width="81"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="heading' +
        '_block block-4" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:35px;padding-left:20px;pad' +
        'ding-right:20px;padding-top:5px;text-align:center;width:100%;">'
      
        '<h1 style="margin: 0; color: #fff; direction: ltr; font-family: ' +
        'Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 20px; f' +
        'ont-weight: 700; letter-spacing: normal; line-height: 180%; text' +
        '-align: center; margin-top: 0; margin-bottom: 0;"><span class="t' +
        'inyMce-placeholder">+001 001 001</span></h1>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-10" role="presentation" style="mso-table-lspace:' +
        ' 0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #ffffff; b' +
        'order-radius: 0; color: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; padding-top: 60px; padding-bottom: 0px; border-top: 0p' +
        'x; border-right: 0px; border-bottom: 0px; border-left: 0px;" wid' +
        'th="100%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-1" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="Logo CarRental Image" src="https://www' +
        '.associazioneinvalidi.org/images/CarRentalBWBig.png" style="disp' +
        'lay: block; height: auto; border: 0; width: 163px; max-width: 10' +
        '0%;" title="Logo CarRental Image" width="163"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="paragra' +
        'ph_block block-2" role="presentation" style="mso-table-lspace: 0' +
        'pt; mso-table-rspace: 0pt; word-break: break-word;" width="100%"' +
        '>'
      '<tr>'
      '<td class="pad" style="padding-top:20px;">'
      
        '<div style="color:#b0b0b0;direction:ltr;font-family:Helvetica Ne' +
        'ue, Helvetica, Arial, sans-serif;font-size:25px;font-weight:400;' +
        'letter-spacing:0px;line-height:120%;text-align:center;mso-line-h' +
        'eight-alt:30px;">'
      '<p style="margin: 0;">HERE FOR YOU!</p>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="20" cellspacing="0" class="button' +
        '_block block-3" role="presentation" style="mso-table-lspace: 0pt' +
        '; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      '<td class="pad">'
      '<div align="center" class="alignment">'
      
        '<!--[if mso]><v:roundrect xmlns:v="urn:schemas-microsoft-com:vml' +
        '" xmlns:w="urn:schemas-microsoft-com:office:word" href="www.exam' +
        'plelink.com" style="height:38px;width:114px;v-text-anchor:middle' +
        ';" arcsize="79%" stroke="false" fillcolor="#0056f1"><w:anchorloc' +
        'k/><v:textbox inset="0px,0px,0px,0px"><center style="color:#ffff' +
        'ff; font-family:Arial, sans-serif; font-size:14px"><![endif]--><' +
        'a href="www.examplelink.com" style="text-decoration:none;display' +
        ':inline-block;color:#ffffff;background-color:#0056f1;border-radi' +
        'us:30px;width:auto;border-top:0px solid transparent;font-weight:' +
        '400;border-right:0px solid transparent;border-bottom:0px solid t' +
        'ransparent;border-left:0px solid transparent;padding-top:5px;pad' +
        'ding-bottom:5px;font-family:Helvetica Neue, Helvetica, Arial, sa' +
        'ns-serif;font-size:14px;text-align:center;mso-border-alt:none;wo' +
        'rd-break:keep-all;" target="_blank"><span style="padding-left:20' +
        'px;padding-right:20px;font-size:14px;display:inline-block;letter' +
        '-spacing:normal;"><span dir="ltr" style="word-break: break-word;' +
        ' line-height: 28px;"><strong>CALL NOW</strong></span></span></a>'
      '<!--[if mso]></center></v:textbox></v:roundrect><![endif]-->'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="image_b' +
        'lock block-4" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="width:100%;padding-right:0px;padding-left' +
        ':0px;">'
      
        '<div align="center" class="alignment" style="line-height:10px"><' +
        'a href="www.examplelink.com" style="outline:none" tabindex="-1" ' +
        'target="_blank"><img alt="Footer Image" class="fullMobileWidth" ' +
        'src="https://www.associazioneinvalidi.org/images/FooterImage.png' +
        '" style="display: block; height: auto; border: 0; width: 650px; ' +
        'max-width: 100%;" title="Footer Image" width="650"/></a></div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-11" role="presentation" style="mso-table-lspace:' +
        ' 0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; background-color: #0056f1; c' +
        'olor: #000000; width: 650px;" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; padding-lef' +
        't: 5px; vertical-align: top; border-top: 0px; border-right: 0px;' +
        ' border-bottom: 0px; border-left: 0px;" width="50%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="text_bl' +
        'ock block-2" role="presentation" style="mso-table-lspace: 0pt; m' +
        'so-table-rspace: 0pt; word-break: break-word;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:10px;pad' +
        'ding-right:10px;padding-top:30px;">'
      '<div style="font-family: sans-serif">'
      
        '<div class="" style="font-size: 12px; font-family: Helvetica Neu' +
        'e, Helvetica, Arial, sans-serif; mso-line-height-alt: 14.3999999' +
        '99999999px; color: #ffffff; line-height: 1.2;">'
      
        '<p style="margin: 0; font-size: 18px; text-align: left; mso-line' +
        '-height-alt: 21.599999999999998px;"><strong><span style="color:#' +
        'ffffff;">Social media</span></strong></p>'
      '</div>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="10" cellspacing="0" class="text_b' +
        'lock block-3" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt; word-break: break-word;" width="100%">'
      '<tr>'
      '<td class="pad">'
      '<div style="font-family: sans-serif">'
      
        '<div class="" style="font-size: 12px; font-family: Helvetica Neu' +
        'e, Helvetica, Arial, sans-serif; mso-line-height-alt: 14.3999999' +
        '99999999px; color: #C0C0C0; line-height: 1.2;">'
      
        '<p style="margin: 0; font-size: 14px; text-align: left; mso-line' +
        '-height-alt: 16.8px;"><span style="color:#C0C0C0;font-size:12px;' +
        '">Stay up-to-date with current activities and future events by f' +
        'ollowing us on your favorite social media channels.</span></p>'
      '</div>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="social_' +
        'block block-4" role="presentation" style="mso-table-lspace: 0pt;' +
        ' mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="text-align:left;padding-right:0px;padding' +
        '-left:0px;padding-bottom:20px;">'
      '<div align="left" class="alignment">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="social-' +
        'table" role="presentation" style="mso-table-lspace: 0pt; mso-tab' +
        'le-rspace: 0pt; display: inline-block;" width="188px">'
      '<tr>'
      
        '<td style="padding:0 15px 0 0;"><a href="www.examplelink.com" ta' +
        'rget="_blank"><img alt="Facebook" height="32" src="https://www.a' +
        'ssociazioneinvalidi.org/images/facebook2x.png" style="display: b' +
        'lock; height: auto; border: 0;" title="Facebook" width="32"/></a' +
        '></td>'
      
        '<td style="padding:0 15px 0 0;"><a href="www.examplelink.com" ta' +
        'rget="_blank"><img alt="Twitter" height="32" src="https://www.as' +
        'sociazioneinvalidi.org/images/twitter2x.png" style="display: blo' +
        'ck; height: auto; border: 0;" title="Twitter" width="32"/></a></' +
        'td>'
      
        '<td style="padding:0 15px 0 0;"><a href="www.examplelink.com" ta' +
        'rget="_blank"><img alt="Google+" height="32" src="https://www.as' +
        'sociazioneinvalidi.org/images/googleplus2x.png" style="display: ' +
        'block; height: auto; border: 0;" title="Google+" width="32"/></a' +
        '></td>'
      
        '<td style="padding:0 15px 0 0;"><a href="www.examplelink.com" ta' +
        'rget="_blank"><img alt="Instagram" height="32" src="https://www.' +
        'associazioneinvalidi.org/images/instagram2x.png" style="display:' +
        ' block; height: auto; border: 0;" title="Instagram" width="32"/>' +
        '</a></td>'
      '</tr>'
      '</table>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      
        '<td class="column column-2" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; padding-lef' +
        't: 5px; vertical-align: top; border-top: 0px; border-right: 0px;' +
        ' border-bottom: 0px; border-left: 0px;" width="50%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="text_bl' +
        'ock block-2" role="presentation" style="mso-table-lspace: 0pt; m' +
        'so-table-rspace: 0pt; word-break: break-word;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:10px;padding-left:10px;pad' +
        'ding-right:10px;padding-top:30px;">'
      '<div style="font-family: sans-serif">'
      
        '<div class="" style="font-size: 12px; font-family: Helvetica Neu' +
        'e, Helvetica, Arial, sans-serif; mso-line-height-alt: 14.3999999' +
        '99999999px; color: #ffffff; line-height: 1.2;">'
      
        '<p style="margin: 0; font-size: 18px; text-align: left; mso-line' +
        '-height-alt: 21.599999999999998px;"><strong><span style="color:#' +
        'ffffff;">Where to find us</span></strong></p>'
      '</div>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="10" cellspacing="0" class="text_b' +
        'lock block-3" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt; word-break: break-word;" width="100%">'
      '<tr>'
      '<td class="pad">'
      '<div style="font-family: sans-serif">'
      
        '<div class="" style="font-size: 12px; font-family: Helvetica Neu' +
        'e, Helvetica, Arial, sans-serif; mso-line-height-alt: 14.3999999' +
        '99999999px; color: #C0C0C0; line-height: 1.2;">'
      
        '<p style="margin: 0; font-size: 14px; text-align: left; mso-line' +
        '-height-alt: 16.8px;"><span style="color:#C0C0C0;font-size:12px;' +
        '">Car Rental<br/>Prishtina 10000, Kosova<br/></span></p>'
      '</div>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="text_bl' +
        'ock block-4" role="presentation" style="mso-table-lspace: 0pt; m' +
        'so-table-rspace: 0pt; word-break: break-word;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="padding-bottom:30px;padding-left:10px;pad' +
        'ding-right:10px;padding-top:10px;">'
      '<div style="font-family: sans-serif">'
      
        '<div class="" style="font-size: 12px; font-family: Helvetica Neu' +
        'e, Helvetica, Arial, sans-serif; mso-line-height-alt: 14.3999999' +
        '99999999px; color: #C0C0C0; line-height: 1.2;">'
      
        '<p style="margin: 0; font-size: 14px; text-align: left; mso-line' +
        '-height-alt: 16.8px;"><span style="color:#C0C0C0;font-size:12px;' +
        '">Changed your mind? <span style="color:#ffffff;"><a href="http:' +
        '//www.examplelink.com" rel="noopener" style="text-decoration:und' +
        'erline;color:#ffffff;" target="_blank">Unsubscribe</a></span></s' +
        'pan></p>'
      '</div>'
      '</div>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row row-12" role="presentation" style="mso-table-lspace:' +
        ' 0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tbody>'
      '<tr>'
      '<td>'
      
        '<table align="center" border="0" cellpadding="0" cellspacing="0"' +
        ' class="row-content stack" role="presentation" style="mso-table-' +
        'lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 650px' +
        ';" width="650">'
      '<tbody>'
      '<tr>'
      
        '<td class="column column-1" style="mso-table-lspace: 0pt; mso-ta' +
        'ble-rspace: 0pt; font-weight: 400; text-align: left; vertical-al' +
        'ign: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px' +
        '; border-right: 0px; border-bottom: 0px; border-left: 0px;" widt' +
        'h="100%">'
      
        '<table border="0" cellpadding="0" cellspacing="0" class="icons_b' +
        'lock block-1" role="presentation" style="mso-table-lspace: 0pt; ' +
        'mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="pad" style="vertical-align: middle; color: #9d9d9d; f' +
        'ont-family: inherit; font-size: 15px; padding-bottom: 5px; paddi' +
        'ng-top: 5px; text-align: center;">'
      
        '<table cellpadding="0" cellspacing="0" role="presentation" style' +
        '="mso-table-lspace: 0pt; mso-table-rspace: 0pt;" width="100%">'
      '<tr>'
      
        '<td class="alignment" style="vertical-align: middle; text-align:' +
        ' center;">'
      
        '<!--[if vml]><table align="left" cellpadding="0" cellspacing="0"' +
        ' role="presentation" style="display:inline-block;padding-left:0p' +
        'x;padding-right:0px;mso-table-lspace: 0pt;mso-table-rspace: 0pt;' +
        '"><![endif]-->'
      '<!--[if !vml]><!-->'
      
        '<table cellpadding="0" cellspacing="0" class="icons-inner" role=' +
        '"presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0' +
        'pt; display: inline-block; margin-right: -4px; padding-left: 0px' +
        '; padding-right: 0px;">'
      '<!--<![endif]-->'
      '<tr>'
      
        '<td style="vertical-align: middle; text-align: center; padding-t' +
        'op: 5px; padding-bottom: 5px; padding-left: 5px; padding-right: ' +
        '6px;"><a href="https://www.designedwithbee.com/?utm_source=edito' +
        'r&utm_medium=bee_pro&utm_campaign=free_footer_link" style="text-' +
        'decoration: none;" target="_blank"><img align="center" alt="Desi' +
        'gned with BEE" class="icon" height="32" src="https://www.associa' +
        'zioneinvalidi.org/images/bee.png" style="display: block; height:' +
        ' auto; margin: 0 auto; border: 0;" width="34"/></a></td>'
      
        '<td style="font-family: Helvetica Neue, Helvetica, Arial, sans-s' +
        'erif; font-size: 15px; color: #9d9d9d; vertical-align: middle; l' +
        'etter-spacing: undefined; text-align: center;"><a href="https://' +
        'www.designedwithbee.com/?utm_source=editor&utm_medium=bee_pro&ut' +
        'm_campaign=free_footer_link" style="color: #9d9d9d; text-decorat' +
        'ion: none;" target="_blank">Designed with BEE</a></td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table>'
      '</td>'
      '</tr>'
      '</tbody>'
      '</table><!-- End -->'
      '</body>'
      '</html>')
    MarkerList.UseDefaultMarkerImageIndex = False
    MarkerList.DefaultMarkerImageIndex = -1
    MarkerList.ImageTransparentColor = -16776961
    OleDropTarget = []
    PrintOptions.MarginLeft = 0
    PrintOptions.MarginRight = 0
    PrintOptions.MarginTop = 0
    PrintOptions.MarginBottom = 0
    PrintOptions.PageNr = False
    PrintOptions.PrintLineNumbers = False
    RightMarginColor = 14869218
    ScrollHint = False
    SelColor = clWhite
    SelBkColor = clNavy
    ShowRightMargin = True
    SmartTabs = False
    SyntaxStyles = asvstylHtml1
    TabOrder = 5
    TabStop = True
    TrimTrailingSpaces = False
    UILanguage.ScrollHint = 'Row'
    UILanguage.Undo = 'Undo'
    UILanguage.Redo = 'Redo'
    UILanguage.Copy = 'Copy'
    UILanguage.Cut = 'Cut'
    UILanguage.Paste = 'Paste'
    UILanguage.Delete = 'Delete'
    UILanguage.SelectAll = 'Select All'
    UrlStyle.TextColor = clBlue
    UrlStyle.BkColor = clWhite
    UrlStyle.Style = [fsUnderline]
    UseStyler = True
    Version = '3.7.10.0'
    WordWrap = wwNone
  end
  object TMSFNCCloudSendGrid1: TTMSFNCCloudSendGrid
    Left = 506
    Top = 496
    Width = 26
    Height = 26
    Visible = True
    OnSendSuccess = TMSFNCCloudSendGrid1SendSuccess
    OnError = TMSFNCCloudSendGrid1Error
  end
  object asvstylHtml1: TAdvHTMLMemoStyler
    LineComment = '//'
    MultiCommentLeft = '<!--'
    MultiCommentRight = '-->'
    CommentStyle.TextColor = clSilver
    CommentStyle.BkColor = clNone
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clBlack
    NumberStyle.BkColor = clNone
    NumberStyle.Style = []
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          '&lt'
          'ABREV'
          'ACRONYM'
          'ADDRESS'
          'APPLET'
          'AREA'
          'AU'
          'AUTHOR'
          'B'
          'BANNER'
          'BASE'
          'BASEFONT'
          'BGSOUND'
          'BIG'
          'BLINK'
          'BLOCKQUOTE'
          'BODY'
          'BQ'
          'BR'
          'CAPTION'
          'CENTER'
          'CITE'
          'CODE'
          'COL'
          'COLGROUP'
          'COMMENT'
          'CREDIT'
          'DEL'
          'DFN'
          'DIR'
          'DIV'
          'DL'
          'DT'
          'DD'
          'EM'
          'EMBED'
          'FIG'
          'FN'
          'FONT'
          'FORM'
          'FRAME'
          'FRAMESET'
          'HEAD'
          'H1'
          'H2'
          'H3'
          'H4'
          'H5'
          'H6'
          'HR'
          'HTML'
          'I'
          'IFRAME'
          'IMG'
          'INPUT'
          'INS'
          'ISINDEX'
          'KBD'
          'LANG'
          'LH'
          'LI'
          'LINK'
          'LISTING'
          'MAP'
          'MARQUEE'
          'MATH'
          'MENU'
          'META'
          'MULTICOL'
          'NOBR'
          'NOFRAMES'
          'NOTE'
          'OL'
          'OVERLAY'
          'P'
          'PARAM'
          'PERSON'
          'PLAINTEXT'
          'PRE'
          'Q'
          'RANGE'
          'SAMP'
          'SCRIPT'
          'SELECT'
          'SMALL'
          'SPACER'
          'SPOT'
          'STRIKE'
          'STRONG'
          'SUB'
          'SUP'
          'TAB'
          'TBODY'
          'TEXTAREA'
          'TEXTFLOW'
          'TFOOT'
          'TH'
          'THEAD'
          'TITLE'
          'TT'
          'U'
          'UL'
          'VAR'
          'WBR'
          'XMP'
          'DOCTYPE'
          'PUBLIC')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Standard Default'
      end
      item
        KeyWords.Strings = (
          'TABLE'
          'BORDER'
          'TD'
          'TR'
          'STYLE'
          'BORDERCOLOR'
          'WIDTH'
          'ID'
          'BORDERCOLORLIGHT'
          'BORDERCOLORDARK')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Table Keywords'
      end
      item
        KeyWords.Strings = (
          'A'
          'HREF')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Link Keywords'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Bracket'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Bracket'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.()[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'Web pages'
    Filter = 'HTML Document (*.htm,*.html)|*.htm;*.html'
    DefaultExtension = '.html'
    StylerName = 'HTML document'
    Extensions = 'htm;html'
    RegionDefinitions = <
      item
        Identifier = '<BODY>'
        RegionStart = '<BODY>'
        RegionEnd = '</BODY>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<HEAD>'
        RegionStart = '<HEAD>'
        RegionEnd = '</HEAD>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<HTML>'
        RegionStart = '<HTML>'
        RegionEnd = '</HTML>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<SCRIPT>'
        RegionStart = '<SCRIPT>'
        RegionEnd = '</SCRIPT>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<STYLE>'
        RegionStart = '<STYLE>'
        RegionEnd = '</STYLE>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<FORM>'
        RegionStart = '<FORM>'
        RegionEnd = '</FORM>'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 504
    Top = 424
  end
end
