object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 601
  ClientWidth = 901
  Caption = 'MainForm'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    901
    601)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 899
    Height = 558
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    OnFieldImage = UniDBGrid1FieldImage
    OnFieldImageURL = UniDBGrid1FieldImageURL
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    TabOrder = 0
    Columns = <
      item
        FieldName = 'EmpNo'
        Title.Caption = 'EmpNo'
        Width = 76
        Visible = True
        Alignment = taRightJustify
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'LastName'
        Title.Caption = 'LastName'
        Width = 148
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'FirstName'
        Title.Caption = 'FirstName'
        Width = 112
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Gender'
        Title.Caption = 'Gender'
        Width = 54
        Visible = True
        ReadOnly = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
        ImageOptions.Visible = True
        ImageOptions.Width = 32
        ImageOptions.Height = 32
      end
      item
        FieldName = 'Salary'
        Title.Caption = 'Salary'
        Width = 106
        Visible = True
        Alignment = taRightJustify
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Shift'
        Width = 45
        Visible = True
        Tag = 255
        ReadOnly = True
        Expanded = False
        CheckBoxField.Enabled = False
        CheckBoxField.FieldValues = 'true;false'
        ImageOptions.Visible = True
        ImageOptions.Width = 32
        ImageOptions.Height = 32
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Shift'
        Width = 57
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'City'
        Title.Caption = 'City'
        Width = 94
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Name2'
        Title.Caption = 'Calculated Image'
        Width = 140
        Visible = True
        ReadOnly = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
        ImageOptions.Visible = True
        ImageOptions.Width = 128
        ImageOptions.Height = 32
      end>
  end
  object UniButton1: TUniButton
    Left = 16
    Top = 564
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Close'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Color = clNavy
    Font.Style = [fsBold]
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 659
    Top = 564
    Width = 240
    Height = 25
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Anchors = [akRight, akBottom]
    TabOrder = 2
  end
  object UniDBCheckBox1: TUniDBCheckBox
    Left = 360
    Top = 572
    Width = 193
    Height = 17
    Hint = ''
    DataField = 'Shift'
    DataSource = DataSource1
    Caption = 'Shift (Day / Night)'
    ParentFont = False
    Font.Color = clNavy
    Font.Style = [fsBold]
    Anchors = [akLeft, akBottom]
    TabOrder = 3
  end
  object UniImage1: TUniImage
    Left = 182
    Top = 564
    Width = 32
    Height = 32
    Hint = ''
    Visible = False
    Picture.Data = {
      0A544A504547496D616765F3020000FFD8FFE000104A46494600010100000100
      010000FFDB008400090607080706090807080A0A090B0D160F0D0C0C0D1B1415
      1016201D2222201D1F1F2428342C242631271F1F2D3D2D3135373A3A3A232B3F
      443F384334393A37010A0A0A0D0C0D1A0F0F1A37251F25373637373737373737
      37373737372F2E363738343734363435362C37372C2F372C372C373734343437
      342C2E343734333437FFC00011080020002003011100021101031101FFC40018
      00010003010000000000000000000000000704050603FFC4002F100001040102
      03050705000000000000000102030411050012064151132181A1B10731617172
      91C11416222352FFC4001A010003010101010000000000000000000001040502
      030600FFC4002111000202020201050000000000000000000102000304111251
      410513213161FFDA000C03010002110311003F006A9B25B850DF96F5F66C36A7
      175D122CFA683305049840D9D082D92E379F35E5BEF3AE218528840161B15C87
      235F7D41B5EFB4F2D91F82554AAB51AD4B1E16E3C759C930C3F214EC675696D6
      95AAF6D9AB1D2B5D71AEBAB7018EC1EE73BA9465247DC5FD5A93646C9C7665E3
      6546924065E656870934024820F7F2D02BC86A10789DC396DD8F160A61371D08
      65036F64536075BF8EBCFBBB2920FDCA8A030D89CF16CC57325110F2186995BE
      8012A4809510A06BCB5AC556B2E105CC12B314F57E4B994E3EC99890D9888346
      412575FE472F127CB4DE25619F91F113CCB0AA711E661A4E4C7E9D47B3DD2001
      B17BA82BEAF0E7AFB23D32AB9F644CD1EA2F5A6A5165B2297149080BA15B94B5
      593F01D05EB78D835D1F20419198D77C464E0ACB1CC70F4790E2B73C8FEB74F5
      50E7E228F8E96B9383911AA5F9A026517B42C0E4B252D89705B2F3686B629093
      FC81B26EB9DD8F774D77C5B51010D17CAA5DC822611EC2E60772A04B1F36543F
      1A77DD4EE27ED3F5227ED7CD49700463A59B3EFEC555E9A06E41E66854FD458F
      67B859984C32D89E9085B8E95846E068501DF5F2D4EC8B15DF6B2863A322E9A7
      FFD9}
    Anchors = [akLeft, akBottom]
  end
  object UniImage2: TUniImage
    Left = 144
    Top = 564
    Width = 32
    Height = 32
    Hint = ''
    Visible = False
    Picture.Data = {
      0A544A504547496D61676558020000FFD8FFE000104A46494600010100000100
      010000FFDB008400090606080605090807080A09090A0D160E0D0C0C0D1A1314
      10161F1C21201F1C1E1E2327322A23252F251E1E2B3B2C2F3335383838212A3D
      413C36412D37383501090A0A0D0B0D190E0E1935241E24353535353535353535
      3535353535353535353535353535353535353535353535352F35343535353535
      353535353535353535FFC00011080020002003012200021101031101FFC40019
      0001010100030000000000000000000000070605020304FFC4002A1000010303
      020502070000000000000000010203040005111221133141517161D106142224
      3281A1FFC400160101010100000000000000000000000000040301FFC4002211
      000104010207000000000000000000000100020311043132132122234151B1FF
      DA000C03010002110311003F007052821254A20003249E9586F7C50DA4294DB6
      0A472CAB055ED5AF3121705F491905B5023BED52D70662C98A5296D0DAF1F4A9
      3B62819AF95A3B468A66344D7EE16A8ED7736AEB0C3ECE46094A9279A48E95EC
      A36B14A9B6DBBB519B52F43CFA707925C19D276EDB2B7F4A49AA624E666756E1
      AA9E443C2772D0AE9972511182E39B8CE903B93521221BAB92B0D1D2C730A3D3
      D2A92FD6E76E56EE1C7584BA8585A751C038CEDFDA879F22E50416E5447DBC6D
      9D24A4F82363497C0C98514BC2028D1A2B9DC5B951EF71AE76E70497DA521263
      AF0011F88093E3DE90632DD72336B90D065D50CA9B0BD5A4F6CE37A2F891AE77
      33F6F1DD505670A0391E9E3F74A11B8DC04FCC635F502B040C89C4B3CFDF6A79
      81A0B434DAFFD9}
    Anchors = [akLeft, akBottom]
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 776
    Top = 360
  end
end
