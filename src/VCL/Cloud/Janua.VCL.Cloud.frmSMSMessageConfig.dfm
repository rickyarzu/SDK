inherited frmVCLSMSMessageConfig: TfrmVCLSMSMessageConfig
  Caption = 'SMS Message Config'
  ClientHeight = 795
  ClientWidth = 1212
  Font.Height = -12
  ExplicitWidth = 1228
  ExplicitHeight = 834
  TextHeight = 15
  inline frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    Left = 0
    Top = 0
    Width = 1212
    Height = 795
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1226
    ExplicitHeight = 801
    inherited Panel1: TPanel
      Height = 795
      ExplicitHeight = 795
      inherited pnlLists: TPanel
        Height = 793
        ExplicitHeight = 793
        inherited lst2: TListBox
          Height = 273
          ExplicitHeight = 273
        end
      end
    end
    inherited Panel2: TPanel
      Width = 995
      Height = 795
      ExplicitWidth = 995
      ExplicitHeight = 795
      inherited grpURL: TGroupBox
        Width = 987
        ExplicitWidth = 987
        inherited edtMobileUrl: TEdit
          Width = 314
          ExplicitWidth = 300
        end
        inherited btnTestUrl: TButton
          Left = 615
          Width = 81
          ExplicitLeft = 601
          ExplicitWidth = 81
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 440
          Width = 178
          ExplicitLeft = 440
          ExplicitWidth = 164
        end
        inherited edtTestTinyUrl: TEdit
          Left = 687
          Width = 265
          ExplicitLeft = 673
          ExplicitWidth = 265
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 947
        BorderColor = clGray
        Gutter.BorderColor = clGray
        Gutter.GutterColor = clBtnFace
        ExplicitWidth = 947
      end
      inherited edPhoneCustomerTo: TEdit
        Width = -14
        ExplicitWidth = 0
      end
      inherited Panel3: TPanel
        Width = 958
        Height = 453
        ExplicitWidth = 958
        ExplicitHeight = 453
        inherited dbgrdParams: TDBGrid
          Width = 421
          Height = 445
        end
        inherited edTestSMSTo: TEdit
          Width = 550
        end
        inherited advmSMSTest: TAdvMemo
          Width = 550
          BorderColor = clGray
          Gutter.BorderColor = clGray
          Gutter.GutterColor = clBtnFace
          Gutter.GutterColorTo = clBtnFace
          ExplicitWidth = 550
        end
        inherited advmJson: TAdvMemo
          Width = 556
          Height = 164
          BorderColor = clGray
          Gutter.BorderColor = clGray
          Gutter.GutterColor = clBtnFace
          ExplicitWidth = 556
          ExplicitHeight = 164
        end
      end
      inherited DBGrid1: TDBGrid
        Top = 714
        Width = 993
      end
    end
  end
end
