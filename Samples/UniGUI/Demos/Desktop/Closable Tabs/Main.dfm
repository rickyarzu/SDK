object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 537
  ClientWidth = 823
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 40
    Top = 40
    Width = 721
    Height = 457
    Hint = ''
    ActivePage = UniTabSheet1
    TabOrder = 0
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet1'
      ExplicitWidth = 489
      ExplicitHeight = 317
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Closable = True
      Caption = 'UniTabSheet2'
      OnClose = UniTabSheet2Close
      ExplicitWidth = 489
      ExplicitHeight = 317
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet3'
      ExplicitWidth = 489
      ExplicitHeight = 317
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Closable = True
      Caption = 'UniTabSheet4'
      OnClose = UniTabSheet4Close
      ExplicitWidth = 489
      ExplicitHeight = 317
    end
    object UniTabSheet5: TUniTabSheet
      Hint = ''
      Closable = True
      Caption = 'UniTabSheet5'
      OnClose = UniTabSheet5Close
      ExplicitWidth = 489
      ExplicitHeight = 317
    end
  end
end
