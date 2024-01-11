object frmTestDetailFrames: TfrmTestDetailFrames
  Left = 0
  Top = 0
  Caption = 'frmTestDetailFrames'
  ClientHeight = 512
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgDetails: TPageControl
    Left = 0
    Top = 224
    Width = 732
    Height = 288
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitHeight = 484
      inline frameJanuaVCLViewModelDetail1: TframeJanuaVCLViewModelDetail
        Left = 0
        Top = 0
        Width = 724
        Height = 260
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 724
        ExplicitHeight = 484
        inherited pnlCommands: TPanel
          Width = 724
          ExplicitWidth = 724
          inherited tlbMaster: TToolBar
            Width = 724
            ExplicitWidth = 724
          end
        end
        inherited grdMaster: TEnhDBGrid
          Width = 724
          Height = 216
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitHeight = 484
      inline frameJanuaVCLViewModelDetail2: TframeJanuaVCLViewModelDetail
        Left = 0
        Top = 0
        Width = 724
        Height = 260
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 724
        ExplicitHeight = 484
        inherited pnlCommands: TPanel
          Width = 724
          ExplicitWidth = 724
          inherited tlbMaster: TToolBar
            Width = 724
            ExplicitWidth = 724
          end
        end
        inherited grdMaster: TEnhDBGrid
          Width = 724
          Height = 216
        end
      end
    end
  end
  object grpMaster: TGroupBox
    Left = 0
    Top = 49
    Width = 732
    Height = 175
    Align = alClient
    Caption = 'Master'
    TabOrder = 1
    ExplicitLeft = 23
    ExplicitTop = 5
    ExplicitWidth = 638
    ExplicitHeight = 174
    object lbJguid: TLabel
      Left = 24
      Top = 48
      Width = 25
      Height = 13
      Caption = 'GUID'
    end
    object edStringField: TEdit
      Left = 457
      Top = 45
      Width = 168
      Height = 21
      TabOrder = 0
      Text = 'edStringField'
    end
    object edExtended: TJvCalcEdit
      Left = 100
      Top = 77
      Width = 69
      Height = 21
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object edBoolean: TCheckBox
      Left = 175
      Top = 79
      Width = 74
      Height = 17
      Caption = 'Boolean'
      TabOrder = 2
    end
    object edDateTime: TDateTimePicker
      Left = 457
      Top = 77
      Width = 168
      Height = 21
      Date = 44181.000000000000000000
      Time = 0.714573217592260400
      TabOrder = 3
    end
    object edMemo: TMemo
      Left = 24
      Top = 104
      Width = 601
      Height = 55
      Lines.Strings = (
        'edMemo')
      TabOrder = 4
    end
    object Button1: TButton
      Left = 335
      Top = 43
      Width = 50
      Height = 25
      Caption = 'Save'
      TabOrder = 5
    end
    object btnUndo: TButton
      Left = 396
      Top = 43
      Width = 49
      Height = 25
      Caption = 'Undo'
      TabOrder = 6
    end
    object edIntFiled: TJvCalcEdit
      Left = 24
      Top = 77
      Width = 70
      Height = 21
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 7
      DecimalPlacesAlwaysShown = False
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 732
    Height = 49
    Caption = 'ToolBar1'
    TabOrder = 2
  end
  object JanuaActionViewController1: TJanuaActionViewController
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = ToolBar1
    ButtonSize = jbs24
    Left = 208
    Top = 8
  end
end
