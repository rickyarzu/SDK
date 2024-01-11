object FRMCryptorobotics: TFRMCryptorobotics
  Left = 0
  Top = 0
  Caption = 'Cryptorobotics - sgcWebSockets'
  ClientHeight = 837
  ClientWidth = 823
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 500
    Width = 817
    Height = 334
    Align = alClient
    TabOrder = 0
    ExplicitTop = 332
    ExplicitHeight = 463
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 809
      Height = 326
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitHeight = 455
    end
  end
  object pnlMethods: TPanel
    Left = 0
    Top = 97
    Width = 823
    Height = 400
    Align = alTop
    TabOrder = 1
    object pageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 821
      Height = 398
      ActivePage = tabSignals
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 463
      object tabSignals: TTabSheet
        Caption = 'Signals'
        ImageIndex = 6
        object Label8: TLabel
          Left = 200
          Top = 94
          Width = 41
          Height = 13
          Caption = 'Signal Id'
        end
        object Label9: TLabel
          Left = 200
          Top = 158
          Width = 66
          Height = 13
          Caption = 'Channel Hash'
        end
        object Label10: TLabel
          Left = 336
          Top = 158
          Width = 53
          Height = 13
          Caption = 'External Id'
        end
        object btnChannelList: TButton
          Left = 43
          Top = 31
          Width = 121
          Height = 25
          Caption = 'Channel List'
          TabOrder = 0
          OnClick = btnChannelListClick
        end
        object btnSignalsList: TButton
          Left = 43
          Top = 71
          Width = 121
          Height = 25
          Caption = 'Signals List'
          TabOrder = 1
          OnClick = btnSignalsListClick
        end
        object cboGetSignalById: TButton
          Left = 43
          Top = 111
          Width = 121
          Height = 25
          Caption = 'Get Signal By Id'
          TabOrder = 2
          OnClick = cboGetSignalByIdClick
        end
        object txtSignalId: TEdit
          Left = 200
          Top = 113
          Width = 121
          Height = 21
          TabOrder = 3
          Text = '0'
        end
        object btnGetSignalByHash: TButton
          Left = 43
          Top = 175
          Width = 121
          Height = 25
          Caption = 'Get Signal By Hash'
          TabOrder = 4
          OnClick = btnGetSignalByHashClick
        end
        object txtChannelHash: TEdit
          Left = 200
          Top = 177
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object txtExternalId: TEdit
          Left = 336
          Top = 177
          Width = 121
          Height = 21
          TabOrder = 6
          Text = '0'
        end
      end
      object tabCreateSignal: TTabSheet
        Caption = 'Create Signal'
        ImageIndex = 1
        object Label16: TLabel
          Left = 67
          Top = 97
          Width = 47
          Height = 13
          Caption = 'Exchange'
        end
        object Label17: TLabel
          Left = 81
          Top = 124
          Width = 33
          Height = 13
          Caption = 'Market'
        end
        object Label18: TLabel
          Left = 94
          Top = 70
          Width = 20
          Height = 13
          Caption = 'Side'
        end
        object Label2: TLabel
          Left = 72
          Top = 151
          Width = 42
          Height = 13
          Caption = 'Min Price'
        end
        object Label3: TLabel
          Left = 68
          Top = 233
          Width = 46
          Height = 13
          Caption = 'Stop Loss'
        end
        object Label4: TLabel
          Left = 69
          Top = 260
          Width = 45
          Height = 13
          Caption = 'Comment'
        end
        object Label5: TLabel
          Left = 69
          Top = 311
          Width = 45
          Height = 13
          Caption = 'Leverage'
        end
        object Label1: TLabel
          Left = 68
          Top = 178
          Width = 46
          Height = 13
          Caption = 'Max Price'
        end
        object Label11: TLabel
          Left = 77
          Top = 206
          Width = 37
          Height = 13
          Caption = 'Targets'
        end
        object Label12: TLabel
          Left = 19
          Top = 287
          Width = 95
          Height = 13
          Caption = 'Optional Exchanges'
        end
        object Label13: TLabel
          Left = 48
          Top = 16
          Width = 66
          Height = 13
          Caption = 'Channel Hash'
        end
        object Label14: TLabel
          Left = 551
          Top = 156
          Width = 66
          Height = 13
          Caption = 'Channel Hash'
        end
        object Label15: TLabel
          Left = 551
          Top = 75
          Width = 41
          Height = 13
          Caption = 'Signal Id'
        end
        object Label19: TLabel
          Left = 687
          Top = 156
          Width = 53
          Height = 13
          Caption = 'External Id'
        end
        object Label20: TLabel
          Left = 61
          Top = 43
          Width = 53
          Height = 13
          Caption = 'External Id'
        end
        object txtExchange: TEdit
          Left = 120
          Top = 94
          Width = 247
          Height = 21
          TabOrder = 0
          Text = 'binance_futures'
        end
        object txtMarket: TEdit
          Left = 120
          Top = 121
          Width = 114
          Height = 21
          TabOrder = 1
          Text = 'LTC/USDT'
        end
        object cboSide: TComboBox
          Left = 120
          Top = 67
          Width = 92
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 2
          Text = 'buy'
          Items.Strings = (
            'None'
            'buy'
            'sell'
            'open'
            'close')
        end
        object txtMinPrice: TEdit
          Left = 120
          Top = 148
          Width = 114
          Height = 21
          TabOrder = 3
          Text = '190'
        end
        object txtStopLoss: TEdit
          Left = 120
          Top = 230
          Width = 121
          Height = 21
          TabOrder = 4
          Text = '185'
        end
        object txtComment: TEdit
          Left = 120
          Top = 257
          Width = 121
          Height = 21
          TabOrder = 5
          Text = 'comment 123'
        end
        object txtLeverage: TEdit
          Left = 120
          Top = 308
          Width = 121
          Height = 21
          TabOrder = 6
          Text = '3'
        end
        object btnCreateSignal: TButton
          Left = 416
          Top = 11
          Width = 121
          Height = 25
          Caption = 'Create Signal'
          TabOrder = 7
          OnClick = btnCreateSignalClick
        end
        object txtMaxPrice: TEdit
          Left = 120
          Top = 175
          Width = 114
          Height = 21
          TabOrder = 8
          Text = '195'
        end
        object txtTargets: TEdit
          Left = 120
          Top = 203
          Width = 271
          Height = 21
          TabOrder = 9
          Text = '[198, 200, 205]'
        end
        object txtOptionalExchanges: TEdit
          Left = 120
          Top = 284
          Width = 271
          Height = 21
          TabOrder = 10
          Text = '["binance","okex"]'
        end
        object chkBreakeven: TCheckBox
          Left = 120
          Top = 335
          Width = 97
          Height = 17
          Caption = 'Breakeven'
          TabOrder = 11
        end
        object txtSignalChannelHash: TEdit
          Left = 120
          Top = 13
          Width = 121
          Height = 21
          TabOrder = 12
          Text = 'test'
        end
        object txtEditChannelHash: TEdit
          Left = 551
          Top = 175
          Width = 121
          Height = 21
          TabOrder = 13
          Text = 'test'
        end
        object btnEditSignalByHash: TButton
          Left = 416
          Top = 146
          Width = 121
          Height = 25
          Caption = 'Edit Signal By Hash'
          TabOrder = 14
          OnClick = btnEditSignalByHashClick
        end
        object txtEditSignalId: TEdit
          Left = 551
          Top = 94
          Width = 121
          Height = 21
          TabOrder = 15
          Text = '0'
        end
        object txtEditExternalId: TEdit
          Left = 687
          Top = 175
          Width = 121
          Height = 21
          TabOrder = 16
          Text = '1'
        end
        object txtSignalExternalId: TEdit
          Left = 120
          Top = 40
          Width = 121
          Height = 21
          TabOrder = 17
          Text = '1'
        end
        object btnEditSignalById: TButton
          Left = 416
          Top = 65
          Width = 121
          Height = 25
          Caption = 'Edit Signal By Id'
          TabOrder = 18
          OnClick = btnEditSignalByIdClick
        end
        object btnCancelSignalById: TButton
          Left = 416
          Top = 96
          Width = 121
          Height = 25
          Caption = 'Cancel Signal By Id'
          TabOrder = 19
          OnClick = btnCancelSignalByIdClick
        end
        object btnCancelSignalByHash: TButton
          Left = 416
          Top = 177
          Width = 121
          Height = 25
          Caption = 'Edit Signal By Hash'
          TabOrder = 20
          OnClick = btnCancelSignalByHashClick
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 823
    Height = 97
    Align = alTop
    TabOrder = 2
    object Label6: TLabel
      Left = 16
      Top = 16
      Width = 32
      Height = 13
      Caption = 'UserId'
    end
    object Label7: TLabel
      Left = 16
      Top = 43
      Width = 31
      Height = 13
      Caption = 'Secret'
    end
    object txtUserId: TEdit
      Left = 53
      Top = 13
      Width = 116
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object txtSecret: TEdit
      Left = 53
      Top = 40
      Width = 300
      Height = 21
      TabOrder = 1
      Text = '791fcffcc1ddaf87f24a188edd580a6c'
    end
    object chkLog: TCheckBox
      Left = 53
      Top = 67
      Width = 62
      Height = 22
      Caption = 'Log'
      TabOrder = 2
    end
  end
end
