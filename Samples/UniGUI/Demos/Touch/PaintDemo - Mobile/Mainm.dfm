object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 551
  ClientWidth = 842
  Caption = 'Paint'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UniToolBar1: TUnimToolBar
    Left = 0
    Top = 0
    Width = 842
    Height = 52
    Hint = ''
    ParentShowHint = False
    ShowTitle = False
    Images = UniNativeImageList1
    Scrollable = True
    Caption = ''
    object UniToolButton5: TUnimToolButton
      Left = 0
      Top = 0
      Width = 52
      Height = 52
      Hint = 'New'
      Caption = 'UniToolButton5'
      ImageIndex = 3
      OnClick = UniToolButton5Click
    end
    object UniToolButton1: TUnimToolButton
      Left = 52
      Top = 0
      Width = 52
      Height = 52
      Hint = 'Open'
      Caption = 'UniToolButton1'
      ImageIndex = 0
      OnClick = UniToolButton1Click
      ExplicitLeft = 46
      ExplicitTop = -5
    end
    object UniToolButton2: TUnimToolButton
      Left = 104
      Top = 0
      Width = 52
      Height = 52
      Hint = 'Save'
      Caption = 'UniToolButton2'
      ImageIndex = 1
      OnClick = UniToolButton2Click
    end
    object UniToolButton4: TUnimToolButton
      Left = 156
      Top = 0
      Width = 8
      Height = 52
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton4'
    end
    object UniToolButton3: TUnimToolButton
      Left = 164
      Top = 0
      Width = 52
      Height = 52
      Hint = 'Exit'
      Caption = 'UniToolButton3'
      ImageIndex = 2
      OnClick = Exit2Click
    end
    object UnimToolButton1: TUnimToolButton
      Left = 216
      Top = 0
      Width = 8
      Height = 52
      Hint = ''
      Style = tbsSeparator
      Caption = 'UnimToolButton1'
    end
    object UnimToolButton2: TUnimToolButton
      Left = 224
      Top = 0
      Width = 200
      Height = 52
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton2'
      object UnimSelect1: TUnimSelect
        Left = 6
        Top = 3
        Width = 188
        Height = 49
        Hint = ''
        Items.Strings = (
          'Black'
          'Blue'
          'Aqua'
          'Gray'
          'Lime'
          'Pink'
          'Red'
          'Yellow')
        FieldLabel = 'Color'
        FieldLabelWidth = 40
        TabOrder = 1
        OnChange = UnimSelect1Change
      end
    end
    object UnimToolButton7: TUnimToolButton
      Left = 424
      Top = 0
      Width = 48
      Height = 52
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton7'
      ExplicitLeft = 409
      object ColPanel: TUnimPanel
        Left = 0
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Color = clBlack
      end
    end
    object UnimToolButton3: TUnimToolButton
      Left = 472
      Top = 0
      Width = 8
      Height = 52
      Hint = ''
      Style = tbsSeparator
      Caption = 'UnimToolButton3'
      ExplicitLeft = 457
    end
    object UnimToolButton4: TUnimToolButton
      Left = 480
      Top = 0
      Width = 180
      Height = 52
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton4'
      object UnimSelect2: TUnimSelect
        Left = 6
        Top = 3
        Width = 171
        Height = 47
        Hint = ''
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        FieldLabel = 'Width'
        FieldLabelWidth = 40
        TabOrder = 1
        OnChange = UnimSelect2Change
      end
    end
    object UnimToolButton5: TUnimToolButton
      Left = 660
      Top = 0
      Width = 8
      Height = 52
      Hint = ''
      Style = tbsSeparator
      Caption = 'UnimToolButton5'
      ExplicitLeft = 609
    end
    object UnimToolButton6: TUnimToolButton
      Left = 668
      Top = 0
      Width = 165
      Height = 52
      Hint = ''
      Style = tbsContainer
      Caption = 'UnimToolButton6'
      object UnimSelect3: TUnimSelect
        Left = 6
        Top = 3
        Width = 156
        Height = 47
        Hint = ''
        Items.Strings = (
          'Draw'
          'Fill')
        FieldLabel = 'Mode'
        FieldLabelWidth = 40
        TabOrder = 1
        OnChange = UnimSelect3Change
      end
    end
  end
  object UniPanel2: TUnimPanel
    Left = 0
    Top = 52
    Width = 842
    Height = 499
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Align = alClient
    Color = clGray
    BorderStyle = ubsInset
    ExplicitTop = 54
    object UniCanvas1: TUnimCanvas
      Left = 1
      Top = 1
      Width = 829
      Height = 480
      Hint = ''
      ShowHint = True
      Editable = True
      Brush.Color = clSilver
      Color = clWhite
      AfterSubmit = UniCanvas1AfterSubmit
    end
  end
  object UniFileUpload1: TUnimFileUpload
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    MaxAllowedSize = 1048576
    OnCompleted = UniFileUpload1Completed
    Left = 464
    Top = 72
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 368
    Top = 115
    Images = {
      04000000FFFFFF1F042601000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF61000000097048597300000EC300000EC301C7
      6FA864000000D849444154388D63601868C04848C1AB434D060C0C0CFB191818
      0490841788D9D5251234FDD5A1A68457879AFE7FBAB9F13F0CFCF9FEFEFFAB43
      4DFF616A585E1D6A3ACFC0C06080CB100E717D065E353F389F994300459E8581
      81C140C83417438258C084CD5452000B32E7C7CB8B0C9F6F6D224A23341C3E30
      210B7E7B748854072C801BF0FBE34386BF3F3E906AC044B801DF9F9E2455F301
      31BBBA074C0C0C0C0C7F7F7C60F8F9F626C9B633304063E1FBB353A46A7E2066
      57B7016EC08F9717493560218CC1C4C0C0C0F0FFCF0F520D3840AA069C000081
      914CB1696CC1670000000049454E44AE426082FFFFFF1F04B600000089504E47
      0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
      097048597300000EC300000EC301C76FA8640000006849444154388D6360A010
      30323030307446AEFE4F8EE6F2E5A18C2CC80265CB4288D2D815B506CE6622C7
      666430DC0C38BAF61A410DE86A58D025893104A70BC8012CE80284D202721AA0
      8A0B701AD015B506C336920C2016C0C2600103034302CC667497D0140000F35B
      1A8471E829520000000049454E44AE426082FFFFFF1F041B01000089504E470D
      0A1A0A0000000D49484452000000100000001008060000001FF3FF6100000009
      7048597300000EC300000EC301C76FA864000000CD49444154388D63FCFFFF3F
      032580055DE0DDC97AA24C14326F646460606060A2C87A9A182064DEC808731E
      31001E06DE759B12181818E63330307C6460607058EC4D8201E89AB736F95D60
      60F083BB025FC0B2206966606060E067606038EF5DB709AE606B931F5EEF901C
      884CEC02A82ED8DAE4B7006A23CC15895B9BFC1660D3CC26A8C1C0A316C9F0E5
      D672B818232C25A2792570B1F7D97C06060607640318993918B8143C19BE3DD8
      CE206852C98862003A7877B2FE3D03038300564906444A243B29C3C0204CCAA4
      0200564F3D7F6040271F0000000049454E44AE426082FFFFFF1F04FF00000089
      504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF61
      000000097048597300000EC300000EC301C76FA864000000B149444154388DED
      92BD09C33010853F190FE0349E231075064156F02852AF22036825436A073247
      AA6CA034BAA05C84C145BA7C8DE0E0BD773F828AC7F592D989A9841658E51D5D
      34DEFBDAF0099C534AF796C1A988053BBA7803C83967801042D3A42BE92BC0E8
      A229F5B535CE3CCF03B078EF8F6F8322B2D528D281D106D3347D99F492A87700
      18695F2863000CC0021C3E1274DB790359705F0BA46D9DBC45A70BEA74FB0DF6
      F237506714AA0FF37B5E3E9E65787CFC26C60000000049454E44AE426082}
  end
end
