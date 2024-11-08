inherited frmVCLSMSMessageConfig: TfrmVCLSMSMessageConfig
  Caption = 'SMS Message Config'
  ClientHeight = 795
  ClientWidth = 1212
  Font.Height = -12
  ExplicitWidth = 1228
  ExplicitHeight = 834
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Top = 776
    Width = 1212
    ExplicitTop = 776
    ExplicitWidth = 1212
  end
  inline frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    Left = 0
    Top = 0
    Width = 1212
    Height = 776
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1212
    ExplicitHeight = 776
    inherited Panel1: TPanel
      Height = 776
      ExplicitHeight = 776
      inherited pnlLists: TPanel
        Height = 774
        ExplicitHeight = 774
        inherited lst2: TListBox
          Height = 254
          ExplicitHeight = 254
        end
      end
    end
    inherited Panel2: TPanel
      Width = 995
      Height = 776
      ExplicitWidth = 995
      ExplicitHeight = 776
      inherited lblMsgTo: TLabel
        Left = 847
        ExplicitLeft = 847
      end
      inherited lbContentVariables: TLabel
        Left = 695
        Top = 112
        ExplicitLeft = 695
        ExplicitTop = 112
      end
      inherited grpURL: TGroupBox
        Width = 987
        ExplicitWidth = 987
        inherited edtMobileUrl: TEdit
          Width = 314
          ExplicitWidth = 314
        end
        inherited btnTestUrl: TButton
          Left = 630
          Width = 81
          ExplicitLeft = 630
          ExplicitWidth = 81
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 392
          Width = 232
          ExplicitLeft = 392
          ExplicitWidth = 232
        end
        inherited edtTestTinyUrl: TEdit
          Left = 717
          Width = 265
          ExplicitLeft = 717
          ExplicitWidth = 265
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 685
        BorderColor = clGray
        Gutter.BorderColor = clGray
        Gutter.GutterColor = clBtnFace
        ExplicitWidth = 685
      end
      inherited edPhoneCustomerTo: TEdit
        Width = 0
        ExplicitWidth = 0
      end
      inherited rgEngine: TRadioGroup
        Width = 167
        ExplicitWidth = 167
      end
      inherited pnlSmsTestConfig: TPanel
        Width = 958
        Height = 453
        ExplicitWidth = 958
        ExplicitHeight = 453
        inherited dbgrdParams: TDBGrid
          Width = 421
          Height = 445
        end
        inherited edTestSMSTo: TEdit
          Width = 500
          ExplicitWidth = 500
        end
        inherited advmSMSTest: TAdvMemo
          Width = 500
          BorderColor = clGray
          Gutter.BorderColor = clGray
          Gutter.GutterColor = clBtnFace
          Gutter.GutterColorTo = clBtnFace
          ExplicitWidth = 500
        end
        inherited advmJson: TAdvMemo
          Width = 500
          Height = 164
          BorderColor = clGray
          Gutter.BorderColor = clGray
          Gutter.GutterColor = clBtnFace
          ExplicitWidth = 500
          ExplicitHeight = 164
        end
        inherited lbEdtTemplateSID: TLabeledEdit
          Width = 500
          ExplicitWidth = 500
        end
      end
      inherited DBGrid1: TDBGrid
        Top = 695
        Width = 993
      end
      inherited Memo1: TMemo
        Left = 695
        Top = 133
        Height = 116
        ExplicitLeft = 695
        ExplicitTop = 133
        ExplicitHeight = 116
      end
    end
  end
end
