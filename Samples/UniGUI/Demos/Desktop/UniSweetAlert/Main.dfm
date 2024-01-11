object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 390
  ClientWidth = 321
  Caption = 'MainForm'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniComboBox1: TUniComboBox
    Left = 16
    Top = 12
    Width = 290
    Hint = ''
    Text = 'UniComboBox1'
    Items.Strings = (
      'info'
      'success'
      'error'
      'warning'
      'question')
    ItemIndex = 0
    TabOrder = 0
    FieldLabel = 'Alert Type'
    FieldLabelWidth = 150
    IconItems = <>
  end
  object UniCheckBox1: TUniCheckBox
    Left = 16
    Top = 40
    Width = 241
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Allow Escape Click'
    TabOrder = 1
  end
  object UniCheckBox2: TUniCheckBox
    Left = 16
    Top = 63
    Width = 241
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Allow Outside Click'
    TabOrder = 2
  end
  object UniEdit1: TUniEdit
    Left = 16
    Top = 86
    Width = 290
    Hint = ''
    Text = 'Cancel'
    TabOrder = 3
    FieldLabel = 'Cancel Button Text'
    FieldLabelWidth = 150
  end
  object UniEdit2: TUniEdit
    Left = 16
    Top = 114
    Width = 290
    Hint = ''
    Text = 'OK'
    TabOrder = 4
    FieldLabel = 'Confirm Button Text'
    FieldLabelWidth = 150
  end
  object UniCheckBox3: TUniCheckBox
    Left = 16
    Top = 142
    Width = 241
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Show Cancel Button'
    TabOrder = 5
  end
  object UniCheckBox4: TUniCheckBox
    Left = 16
    Top = 165
    Width = 241
    Height = 17
    Hint = ''
    Caption = 'Show Close Button'
    TabOrder = 6
  end
  object UniEdit3: TUniEdit
    Left = 16
    Top = 211
    Width = 290
    Hint = ''
    Text = 'OK'
    TabOrder = 7
    FieldLabel = 'Title'
    FieldLabelWidth = 150
  end
  object UniButton1: TUniButton
    Left = 16
    Top = 267
    Width = 290
    Height = 33
    Hint = ''
    Caption = 'Show'
    TabOrder = 8
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 16
    Top = 306
    Width = 290
    Height = 33
    Hint = ''
    Caption = 'Execute (Blocking)'
    TabOrder = 9
    OnClick = UniButton2Click
  end
  object UniCheckBox6: TUniCheckBox
    Left = 16
    Top = 239
    Width = 97
    Height = 17
    Hint = ''
    Caption = 'Accept Input'
    TabOrder = 10
  end
  object UniButton3: TUniButton
    Left = 16
    Top = 346
    Width = 290
    Height = 33
    Hint = ''
    Caption = 'Show Loader'
    TabOrder = 11
    OnClick = UniButton3Click
  end
  object UniEdit4: TUniEdit
    Left = 136
    Top = 239
    Width = 170
    Hint = ''
    Text = ''
    TabOrder = 12
    ClearButton = True
    FieldLabel = 'Value'
    FieldLabelWidth = 50
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Images = UniNativeImageList1
    ImageIndex = 0
    Padding = 20
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    OnPreConfirm = UniSweetAlert1PreConfirm
    Left = 176
    Top = 52
  end
  object UniNativeImageList1: TUniNativeImageList
    Width = 32
    Height = 32
    Left = 184
    Top = 148
    Images = {
      01000000FFFFFF1F042103000089504E470D0A1A0A0000000D49484452000000
      40000000400806000000AA6971DE000000097048597300000EC300000EC301C7
      6FA864000002D349444154789CED9BC191DA301486BF64720F1935402A08DC74
      0B541052C14205491AF0CEAA8125154009A403EFCDB73815C429C033EE203948
      9A758C600D183FCFA06FC683C7D8D6AF1F59EF79F480482472CBBC6A7B629925
      236002CC80B76E1FF7393A7059E1368027A00272A54D7AB2D22B71D480324B26
      C01DB6D39363E79E410AFC00764A9BA2E37BB7266840992533E01EDBF13ED802
      0F1246EC195066C912D8F42D04FB78CC9536799F8DBE0E1C93E83CD879E4B1EF
      464306DC142103BEF5AEC252000F7D377A68125C6087E3F8CAEDEFB09120958A
      04A14970A4B4A9DCFE02F8042C381CEB4FA502BE036BDF8E6F17813C2364C06F
      6C48DA368E4F9C9831F0B185B8A6C80AF845ADE343C8334206FC75BB156E882A
      6D765D2A1B529E71CC8026B9DBFE60DD053BDCAA03E7FBFB8D81B11F9643CB33
      DE9C7003FF0880FDF50028B3A4EDF5DE6CE93C635E3F18F3008136A5F28C8A40
      9ED1BB014A9B35F099E7F0D50729F6F94F9B5FF46E80CB33764A9BF75823B6D8
      5FA76B0A600D4C953673A54DEE26E4FF386512EC8A9F65963C286DB62EBCEE80
      558779468E8D4E853FC125595F812FC0BBFAC512068C814D99258FD4F20C179E
      3A7B15769DAE67B241240CF08C8025B074A1F4A23CC3DD6F027CE07924BD88A4
      014D2ECD33CE22E601D202A48906480B90261A202D409A6880B40069A201D202
      A48906480B90261A202D409A6880B40069A201D202A48906480B902664C03516
      29064BC88055EF2A04D933C0ADD6DC8C09C139C095C74CE970A566A81C9C0495
      36B9D2668A1D0D456F8A7AE6C528E01631FD4A6EA7B54243A0F5D2586D25D717
      39CDB0ABB87E4D2E44E1B6A7F3255E97B3D6065DA141DAA91221241221C93C63
      AF6D09032443EC5E7D92448D90549EB16A56BFC209FF19EA1A5712B3A1FB12D9
      2605B6F369E84B31033CAE72F49EEE2BD38345D94DC40DF0B8CAF43B8ED4F3B4
      C4D71D6DDB9C3C1803EA9C9967E4D8FF1DDCD4DB6C2412B98C7F7DCAF1641044
      99BC0000000049454E44AE426082}
  end
end
