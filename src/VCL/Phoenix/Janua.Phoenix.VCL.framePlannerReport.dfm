inherited frameVCLPhoenixPlanneReport: TframeVCLPhoenixPlanneReport
  Width = 670
  Height = 1080
  ExplicitWidth = 670
  ExplicitHeight = 1080
  DesignSize = (
    670
    1080)
  object lbCap: TLabel
    Left = 438
    Top = 58
    Width = 23
    Height = 15
    Caption = 'CAP'
  end
  object Area: TLabel
    Left = 8
    Top = 8
    Width = 40
    Height = 15
    Caption = 'Tecnico'
  end
  object lbActivity: TLabel
    Left = 8
    Top = 58
    Width = 78
    Height = 15
    Caption = 'Cliente - Filiale'
  end
  object lkpCAP: TJvDBLookupCombo
    Left = 438
    Top = 72
    Width = 66
    Height = 25
    LookupField = 'CAP'
    LookupDisplay = 'CAP'
    LookupSource = dsCAP
    TabOrder = 0
    OnCloseUp = ChangeFilter
  end
  object grdReportList: TDBCtrlGrid
    Left = 8
    Top = 128
    Width = 659
    Height = 936
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
    PanelHeight = 104
    PanelWidth = 642
    TabOrder = 2
    RowCount = 9
    SelectedColor = clAntiquewhite
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 642
      Height = 104
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 78
        Top = 1
        Width = 563
        Height = 102
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        OnDblClick = DBText1DblClick
        object pnlStatino: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 102
          Align = alLeft
          TabOrder = 0
          object DBText3: TDBText
            AlignWithMargins = True
            Left = 4
            Top = 27
            Width = 433
            Height = 17
            Align = alTop
            DataField = 'calcIndirizzo'
            DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            OnDblClick = DBText1DblClick
          end
          object DBText1: TDBText
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 433
            Height = 17
            Align = alTop
            DataField = 'DESCRIZIONE_SCHEDA'
            DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            OnDblClick = DBText1DblClick
            ExplicitLeft = 6
            ExplicitTop = 3
            ExplicitWidth = 291
          end
          object btnNewMeeting: TJvSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 110
            Height = 28
            Action = dmVCLPhoenixPlannerController.actNewMeeting
            Align = alLeft
            Layout = blGlyphLeft
            MenuPosition = dmpRight
            ExplicitHeight = 25
          end
          object btnUndoMeeting: TJvSpeedButton
            AlignWithMargins = True
            Left = 120
            Top = 70
            Width = 80
            Height = 28
            Align = alLeft
            Caption = ' Annulla'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00C362FAA38A76FBF58170FBF89E65FACFFA06FF0CFF00FF00F26CEF7AE1CF
              DAEEE1CFDAEFE1CFDAEFE1CFDAEFE1CFDAEFE1CFDAEFE1CFDAEFE1CFDAEFA194
              F3F8777FFCFF6FC3F9FF7CC5F9FF7B92FBFF6A5EFCFEFB05FF09E6D7E0F1EAE7
              E3FEEAE7E4FEEAE7E4FEEAE7E4FEEAE7E4FEEAE7E4FEEAE7E4FED2CEE8FE7371
              FDFF6DCFF8FFE0E9EBFFEAE7E3FF92D6F4FF7888FCFF8C5DFBD9F2DAEEE9F1EE
              EBFEF6DBBCFEF4E5D4FEF6DDC0FEF5E2CEFEF6DEC5FEF5E0C8FEA7A0F6FF7AA5
              FAFFBADEECFFC5DAE4FF82BDD4FFEDEDEBFF75BBFAFF7060FCFBF2DAEEE9F3EA
              E1FEFEC98AFFFBCB92FFFEC98AFFFCC788FFFEC98AFFFEC37EFFACA5F5FF7A91
              FBFFACDCF0FFE5E3E0FFD0D4D1FFD8E8EEFF78B1FAFF7662FBF6F2DAEEE9F1ED
              E9FEF7DBB9FFF6DFC6FEF7DBBBFEF7DCC0FEF7DDC1FEF7DABAFEDAD5EFFE7065
              FEFF7CC2F9FF9BDAF4FFA8DDF3FF77CCF9FF7168FEFF875FFBE1F2DAEEE9F2EC
              E7FEFCCC92FFF9D3AAFEFBCD96FFF9D0A1FEFAD19FFFFACD97FFF1EEECFE6A5E
              FEFF7065FEFF777BFCFF7883FCFF695DFDFF665AFDFFE51EFD3AF2DAEEE9F2EB
              E3FEFEC98AFFFBCD96FFFEC98AFFFCCA8CFFFEC98AFFFEC582FFF1EEECFEDED9
              EEFEA7A0F6FF7065FEFF6F64FEFF8F83F3FC9F5BFAC3FF00FF00F2DAEEE9F1EE
              ECFEF3E7DCFEF1EBE6FEF3E9DEFEF1ECE5FEF3EAE1FEF3EAE1FEF3EBE3FEF3E9
              E0FEEDEAEDFE7065FEFF665AFDFFDDD3DFF9FF00FF00FF00FF00F2DAEEE9F2EA
              E2FEFEC684FFFBCA8FFFFEC785FFFDC685FFFEC785FFFEC27CFFFDCB8FFFFEC1
              77FFF1EEECFE9087F9FFE2DDEEFEE5DDDDF9FF00FF00FF00FF00F2DAEEE9F2EC
              E7FEFAD5A8FFF7DAB9FEF9D6ABFFF8D7B2FEF8D9B3FFF8D5ABFFF8DBBBFEFAD3
              A5FFF1EEECFEF1EEECFEF1EEECFEE5DDDDF9FF00FF00FF00FF00E5CEEFEBDFDA
              EFFEDFDAEFFEDFDAEFFEDFDAEFFEDFDAEFFEDFDAEFFEDFDAEFFEDFDAEFFEDFDA
              EFFEDFDAEFFEDFDAEFFEDFDAEFFEDBD2E1F9FF00FF00FF00FF007A6EFDFD7065
              FEFF7065FEFF7064FEFF7065FEFF7064FEFF7065FEFF7065FEFF7064FEFF7065
              FEFF6F64FEFF7065FEFF7065FEFF6356FDFFFF00FF00FF00FF007F70FCFB7065
              FEFF9A8FD5FF6C62F6FF7166FEFF9083D8FF6E63FEFF887DE3FF7367EEFF7065
              FEFF9C91D1FF6B5FFDFF7065FEFF6658FDFEFF00FF00FF00FF00DA43FB6B9A78
              FAE5BCAEC6FAA192E4FA9E7EF5E6BBAACBF8A192E4FABDACC6F9A090E6F89B7C
              F7EABCAEC6FAA192E4FA9574FAE7BA47FC91FF00FF00FF00FF00FF00FF00FF00
              FF00E278D79BDC8ACEB5FF00FF00D3A0C1D5EC54E56BED4FE764D1A1C0D8FF00
              FF00DC8ACFB4E178D69BFF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphLeft
            OnClick = btnUndoMeetingClick
            ExplicitHeight = 25
          end
          object btnContract: TJvSpeedButton
            AlignWithMargins = True
            Left = 206
            Top = 70
            Width = 120
            Height = 28
            Align = alLeft
            Caption = 'Vedi Contratto'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FE32FE34FACC
              FAD3F9EAF9F3F9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5
              F9FEF9F1F9FAFAE1FAE9FC7CFC81FF00FF00FF00FF00FF00FF00FAD1FAD9F9F5
              F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5
              F9FEF9F5F9FEF9F5F9FEF9F5F9FEFE1FFE20FF00FF00FF00FF00F9E9F9F2F9F5
              F9FEBFAE9EFEB7A591FFB7A591FFB7A591FFB7A591FFB7A591FFB7A591FFD4C7
              BEFEF9F5F9FEF9F5F9FEF9F5F9FEFE3BFE3DFF00FF00FF00FF00F9F0F9F9F9F5
              F9FEF4EFF1FEF2EDEFFEF2EDEFFEF2EDEFFEF2EDEFFEF2EDEFFEF2EDEFFEF6F2
              F5FEF9F5F9FEF9F5F9FEF9F5F9FEFD47FD4AFF00FF00FF00FF00F9F5F9FEF9F5
              F9FEBAA996FFB19C87FFB19C87FFB19C87FFB19C87FFB19C87FFB19C87FFB19C
              87FFB19C87FFE5DCDAFEF9F5F9FEFD53FD56FF00FF00FF00FF00F9F5F9FEF9F5
              F9FEEAE2E2FEE6DDDBFEE6DDDBFEE6DDDBFEE6DDDBFEE6DDDBFEE6DDDBFEE6DD
              DBFEE6DDDBFEF4EFF2FEF9F5F9FEFD60FD63FF00FF00FF00FF00F9F5F9FEF9F5
              F9FEC9BAAEFEC4B4A6FEC4B4A6FEC4B4A6FEC4B4A6FEC4B4A6FEC4B4A6FEC4B4
              A6FEC4B4A6FEEBE3E2FEF9F5F9FEFC6CFC70FF00FF00FF00FF00F9F5F9FEF9F5
              F9FEBAA996FFB19C87FFB19C87FFB19C87FFB19C87FFB19C87FFB19C87FFB19C
              87FFB19D87FFD4D9C7FEE5EDE1FEFB79FB7EFF00FF00FF00FF00F9F5F9FEF9F5
              F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FECAD8
              B2FEBEC793FFBAB488FFD3DAAFFFB5C49BF6DF56D765FF00FF00F9F5F9FEF9F5
              F9FEAEA090FFA39280FFA39280FFA39280FFD0C6BFFEF9F5F9FECAD6B3FEE8C9
              9BFFF2DCBCFFF9ECD1FFFBEFD3FFF2E4C8FED1DCB4FADD4CD362F9F5F9FEF9F5
              F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF9F5F9FEF8F4F7FEBFC892FFF2C7
              A2FFFBEFD3FFFBEFD3FFFBEFD3FFFBEED3FEE3D1B5FEC1B2AFD3EFC8E3E7ECDA
              DDFFECDADDFFEEDEE1FFF6EFF3FEF9F5F9FEF9F5F9FEE5ECE1FEB8AB7AFFE3C2
              9FFF997D58FF907754FFE6D8BBFFFBEED3FEECDCC0FEB5BF99F3FC22FA28ECDA
              DDFFECDADDFFECDADDFFEEDFE1FFF9F5F9FEF9F5F9FEECF0E9FECEC793FFEDCC
              A9FFC4AF8EFF7C6442FFB8A687FFFBEED3FEF8EBD0FEBFC7AAEAFF00FF00FA35
              F73EECD9DDFEECDADDFFECDBDEFFF9F5F9FEF9F5F9FEF9F5F9FEB4C68FFFF0C1
              98FFFBEFD3FFCABA9CFFDECFB2FFFBEED3FED7C9A9FEBDA9ABCEFF00FF00FF00
              FF00FB2CF834ECD9DDFEECDADDFFF9F5F9FEF9F5F9FEF9F5F9FEE0E7D3FECBCC
              97FFE0BF9BFFECDDC0FFF8EBCFFFD7C9A9FEBFC6ADE6F31DF122FF00FF00FF00
              FF00FF00FF00FE11FC14F4A1ECB7FAD3FADBFAC9FAD0FABEFAC5FBB3FBBAE2B1
              D5CAC1CCA0F8B6C491FDBECBA7F0BDA9AACEF31CF121FF00FF00}
            Layout = blGlyphLeft
            OnClick = btnContractClick
            ExplicitLeft = 256
            ExplicitHeight = 26
          end
          object btnWhatsApp: TJvSpeedButton
            AlignWithMargins = True
            Left = 332
            Top = 70
            Width = 104
            Height = 28
            Align = alLeft
            Caption = '  WhatsApp'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000D42BD33FB44B
              B26EF40BF410FF00FF00E619E525867983B056A952F651AE4DFE51AE4DFE6897
              65DC946B919CE11EE02CFF00FF00FF00FF00FF00FF00FF00FF00EB14EB1D51AE
              4DFE51AE4DFE58A754F451AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFEA25DA088FE01FE01FF00FF00FF00FF00FF00FF005CA3
              59ED51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE679863DEFE01FE01FF00FF00FF00FF007A85
              77C251AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE52AF4EFE85C5
              82FEAAD7A8FF83C580FE51AE4DFE51AE4DFEA25DA088FF00FF00E718E62351AE
              4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE9CD09AFEF9FAF9FFF9FA
              F9FFF9FAF9FFF9FAF9FFAED9ADFF51AE4DFE51AE4DFEE11EE02C877884AF51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE58B154FEE2F0E2FFF9FAF9FFF9FAF9FFF9FA
              F9FFF9FAF9FFF9FAF9FFF0F5EFFF51AE4DFE51AE4DFE946B919C5AA557F051AE
              4DFE51AE4DFE51AE4DFE54AF50FEEAF3EAFFF9FAF9FFD6EAD5FF5DB359FE5FB5
              5CFEE9F2E8FFB8DDB7FF5EB45AFE51AE4DFE51AE4DFE689765DC51AE4DFE51AE
              4DFE51AE4DFE51AE4DFEC4E3C3FFF9FAF9FFCAE5C9FF51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE74BD71FEF9FAF9FFF9FAF9FF54B051FE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE689765DC51AE
              4DFE51AE4DFEB5DCB4FFF9FAF9FFF9FAF9FF8DC98BFE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE946B919C51AE
              4DFE51AE4DFECCE6CBFFF9FAF9FFF9FAF9FF99CF97FE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE867983B1E11EE02C51AE
              4DFE51AE4DFE84C481FEF9FAF9FFF9FAF9FF56B052FE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFEDB24DA34FF00FF00A25D
              A08851AE4DFE51AE4DFE74BD71FE7AC077FE51AE4DFE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE827D7FB6FF00FF00FF00FF00FE01
              FE01679863DE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE51AE4DFE5FA05BE9FB04FB06FF00FF00FF00FF00FF00
              FF00FE01FE01A15E9F8951AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE4DFE51AE
              4DFE51AE4DFE51AE4DFE827D7FB6FB04FB06FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00E11EE02C946B919C689765DC51AE4DFE51AE4DFE51AE
              4DFE867983B1DB24DA34FF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphLeft
            OnClick = btnWhatsAppClick
            ExplicitHeight = 25
          end
          object pnlInterventi: TPanel
            Left = 1
            Top = 47
            Width = 439
            Height = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object DBText2: TDBText
              AlignWithMargins = True
              Left = 320
              Top = 0
              Width = 117
              Height = 20
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 2
              Margins.Bottom = 0
              Align = alRight
              DataField = 'calcStato'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMediumblue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              OnDblClick = DBText1DblClick
            end
            object DBText8: TDBText
              AlignWithMargins = True
              Left = 114
              Top = 3
              Width = 203
              Height = 14
              Align = alRight
              DataField = 'NOME_TECNICO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              OnDblClick = DBText1DblClick
              ExplicitLeft = 168
            end
            object DBText12: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 105
              Height = 14
              Align = alClient
              DataField = 'calcAppuntamentoDataOra'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              OnDblClick = DBText1DblClick
              ExplicitLeft = 4
              ExplicitTop = 50
              ExplicitWidth = 433
              ExplicitHeight = 17
            end
          end
        end
        object Panel4: TPanel
          Left = 441
          Top = 0
          Width = 122
          Height = 102
          Align = alClient
          TabOrder = 1
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 72
            Height = 100
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Luci:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Idranti:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 32
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'E.Ord.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 48
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'E.Stra.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 64
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Irai:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 80
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'G.p.a.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
          end
          object Panel5: TPanel
            Left = 73
            Top = 1
            Width = 48
            Height = 100
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBText9: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'LUCI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 66
            end
            object DBText5: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'IDRANTI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText6: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 32
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'ESTINTORI_ORDINARIO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitTop = 36
              ExplicitWidth = 48
            end
            object DBText7: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 48
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'ESTINTORI_STRAORDINARIO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText10: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 64
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'FUMI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText11: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 80
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'GRUPPI_ELETTR'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
          end
        end
      end
      object btnImage: TDBImage
        Left = 1
        Top = 1
        Width = 77
        Height = 102
        Align = alLeft
        DataField = 'STATO_IMMAGINE'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
        TabOrder = 1
        OnDblClick = DBText1DblClick
        OnMouseDown = btnImageMouseDown
      end
    end
  end
  object grpStato: TRadioGroup
    Left = 164
    Top = 1
    Width = 389
    Height = 51
    Columns = 6
    ItemIndex = 5
    Items.Strings = (
      'Tutti'
      'Pian.'
      'In Lav.'
      'Pronti'
      'Generati'
      'N. Ass.')
    TabOrder = 1
    OnClick = ChangeFilter
  end
  object cboTecnici: TJvDBLookupCombo
    Left = 8
    Top = 28
    Width = 150
    Height = 24
    EmptyValue = '-1'
    LookupField = 'RESPONSABILE'
    LookupDisplay = 'NOME_TECNICO'
    LookupSource = dsTechnicians
    TabOrder = 3
    OnChange = cboTecniciChange
  end
  object cboCustomers: TJvDBLookupCombo
    Left = 8
    Top = 73
    Width = 424
    Height = 24
    LookupField = 'CHIAVE'
    LookupDisplay = 'DESCRIZIONE_SCHEDA'
    LookupSource = dsCustomers
    TabOrder = 4
    OnClick = ChangeFilter
  end
  object cbkFilterReport: TCheckBox
    Left = 60
    Top = 6
    Width = 90
    Height = 16
    Caption = 'Filtra Tecnico'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = cbkFilterReportClick
  end
  object btnWhatsAppMessages: TAdvBadgeButton
    Left = 510
    Top = 72
    Width = 146
    Height = 50
    Caption = 'Messaggi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ImageIndex = 12
    ImageName = '013-alarm'
    ImageMargins.Left = 8
    Images = dmVCLPhoenixPlannerController.SVGIconImageList48
    ParentFont = False
    TabOrder = 6
    OnClick = btnWhatsAppMessagesClick
  end
  object edDateFilter: TJvDatePickerEdit
    Left = 559
    Top = 28
    Width = 97
    Height = 23
    AllowNoDate = True
    ButtonFlat = True
    Checked = True
    Flat = True
    ParentFlat = False
    TabOrder = 7
    OnChange = edDateFilterChange
  end
  object ckbFilterDate: TCheckBox
    Left = 559
    Top = 5
    Width = 95
    Height = 17
    Caption = 'Filtra Data'
    TabOrder = 8
    OnClick = ckbFilterDateClick
  end
  object SearchBox1: TSearchBox
    Left = 9
    Top = 100
    Width = 495
    Height = 23
    TabOrder = 9
    Text = 'SearchBox1'
  end
  object dsCustomers: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCustomers
    Left = 88
    Top = 248
  end
  object dsTechnicians: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryTecniciCalendar
    Left = 184
    Top = 280
  end
  object dsCAP: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCAP
    Left = 264
    Top = 304
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    Left = 480
    Top = 264
  end
  object PopupItems: TPopupMenu
    Images = dmVCLPhoenixPlannerController.SVGIconImageList16
    Left = 600
    Top = 347
    object Colore1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgColorAction
    end
    object ModificaAppuntamento1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgEditAction
    end
    object ModificaAppuntamento2: TMenuItem
      Caption = 'Annulla Appuntamento'
      ImageIndex = 49
      ImageName = '050-stopwatch'
    end
    object InviaMsgWhatsApp1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgMessage
    end
    object ConfermaAppuntmento1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actGridConfirmEvent
    end
  end
  object TimerEventUpdate: TTimer
    Interval = 300
    OnTimer = TimerEventUpdateTimer
    Left = 416
    Top = 312
  end
  object WATimer: TTimer
    Interval = 300000
    OnTimer = WATimerTimer
    Left = 416
    Top = 448
  end
end
