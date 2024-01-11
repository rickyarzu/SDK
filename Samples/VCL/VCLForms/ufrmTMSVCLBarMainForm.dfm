object frmTMSVCLBarMainForm: TfrmTMSVCLBarMainForm
  Left = 0
  Top = 0
  Caption = 'frmTMSVCLBarMainForm'
  ClientHeight = 485
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 41
    Width = 200
    Height = 444
    Color = clSkyBlue
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 1
  end
  object JanuaTMSNavBarController1: TJanuaTMSNavBarController
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Container = SplitView1
    Left = 376
    Top = 248
  end
end
