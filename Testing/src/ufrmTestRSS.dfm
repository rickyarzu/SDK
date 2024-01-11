object frmTestRSS: TfrmTestRSS
  Left = 0
  Top = 0
  Caption = 'Test RSS Feed Reader'
  ClientHeight = 557
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 24
    Width = 161
    Height = 33
    Caption = 'Create RSS Feed'
    TabOrder = 0
    OnClick = Button1Click
  end
  object JanuaOS1: TJanuaOS
    AppName = 'TestRss'
    Log.Strings = (
      '03/11/2016 19:24:37'
      'Separator =;'
      '03/11/2016 19:24:37'
      'FDocDirectory =C:\Users\ergom\Documents'
      '03/11/2016 19:24:37'
      'FTempPath =C:\Users\ergom\AppData\Local\Temp\'
      '03/11/2016 19:24:37'
      'FHomePath =C:\Users\ergom\AppData\Roaming'
      '03/11/2016 21:03:00'
      'TJanuaCoreOS.InternalActivate Error:'
      'Please select an unique application Name at first'
      'Please select an unique application Name at first')
    HasErrors = True
    LastErrorMessage = 'Please select an unique application Name at first'
    CustomServer = False
    Active = False
    ConfigDataset = ConfigDataset.Owner
    Left = 440
    Top = 200
  end
  object JanuaRSSFeedReader1: TJanuaRSSFeedReader
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    ApplicationType = jatDefault
    Language = jilEspanol
    JanuaCoreOS1 = JanuaOS1
    ADPLocalFile = 'C:\Users\ergom\AppData\Local\Temp\temp.xml'
    UseText = False
    Verified = False
    TagTitle = 'title'
    TagLink = 'link'
    TagImage = 'image'
    TagText = 'description'
    TagItem = 'item'
    Left = 296
    Top = 232
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    ApplicationType = jatDefault
    Left = 456
    Top = 288
  end
end
