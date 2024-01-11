inherited frmTestVCLDatasetOrmSync: TfrmTestVCLDatasetOrmSync
  Caption = 'Test VCL Datset Orm Sync'
  ClientHeight = 642
  ClientWidth = 1298
  ExplicitWidth = 1300
  ExplicitHeight = 675
  TextHeight = 17
  object pgcTestOrmDatasetMVVM: TPageControl
    Left = 0
    Top = 0
    Width = 1298
    Height = 642
    ActivePage = tabOrmDatasetSync
    Align = alClient
    TabOrder = 0
    object tabOrmDatasetSync: TTabSheet
      Caption = 'Orm-Dataset Sync'
      inline frameTestOrmDB1: TframeTestOrmDB
        Left = 0
        Top = 0
        Width = 1290
        Height = 610
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1276
        ExplicitHeight = 604
        inherited frameBindTestOrm1: TframeBindTestOrm
          Width = 640
          Height = 459
          ExplicitWidth = 640
          ExplicitHeight = 459
          inherited lbString: TLabel
            Width = 30
            Height = 17
            ExplicitWidth = 30
            ExplicitHeight = 17
          end
          inherited lbInt: TLabel
            Width = 30
            Height = 17
            ExplicitWidth = 30
            ExplicitHeight = 17
          end
          inherited lbDate: TLabel
            Width = 30
            Height = 17
            ExplicitWidth = 30
            ExplicitHeight = 17
          end
          inherited grpMaster: TGroupBox
            Width = 621
            ExplicitWidth = 621
            inherited lbJguid: TLabel
              Width = 30
              Height = 17
              ExplicitWidth = 30
              ExplicitHeight = 17
            end
            inherited edStringField: TEdit
              Width = 160
              Height = 25
              ExplicitWidth = 160
              ExplicitHeight = 25
            end
            inherited edExtended: TJvCalcEdit
              Height = 25
              ExplicitHeight = 25
            end
            inherited edDateTime: TDateTimePicker
              Width = 160
              ExplicitWidth = 160
            end
            inherited edMemo: TMemo
              Width = 590
              ExplicitWidth = 590
            end
            inherited edIntFiled: TJvCalcEdit
              Height = 25
              ExplicitHeight = 25
            end
          end
          inherited grpDetail: TGroupBox
            inherited lbDetailGUID: TLabel
              Width = 30
              Height = 17
              ExplicitWidth = 30
              ExplicitHeight = 17
            end
            inherited edDetailString: TEdit
              Height = 25
              ExplicitHeight = 25
            end
            inherited edDetailInt: TSpinEdit
              Height = 27
              ExplicitHeight = 27
            end
          end
          inherited EnhCRDBGrid1: TEnhCRDBGrid
            Width = 614
            TitleFont.Height = -13
          end
          inherited DBNavigator1: TDBNavigator
            Hints.Strings = ()
          end
        end
        inherited DBNavigator1: TDBNavigator
          Hints.Strings = ()
        end
        inherited btnStartOrmdbTest: TButton
          OnClick = frameTestOrmDB1btnStartOrmdbTestClick
        end
        inherited EnhCRDBGrid1: TEnhCRDBGrid
          Height = 255
          TitleFont.Height = -13
        end
        inherited EnhCRDBGrid2: TEnhCRDBGrid
          Top = 367
          Height = 218
          TitleFont.Height = -13
        end
        inherited DBNavigator2: TDBNavigator
          Top = 320
          Hints.Strings = ()
          ExplicitTop = 320
        end
        inherited btnSetupRecord: TButton
          Width = 126
          OnClick = frameTestOrmDB1btnSetupRecordClick
          ExplicitWidth = 126
        end
        inherited btnSave: TButton
          OnClick = frameTestOrmDB1btnSaveClick
        end
      end
    end
    object tabOrmMVVMTest: TTabSheet
      Caption = 'MVVM DB Sync'
      ImageIndex = 1
      inline frameVclTestOrmDatasetSync1: TframeVclTestOrmDatasetSync
        Left = 0
        Top = 0
        Width = 1290
        Height = 610
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 1290
        ExplicitHeight = 610
        DesignSize = (
          1290
          610)
        inherited grdMaster: TwwDBGrid
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
        end
        inherited grdDetail: TwwDBGrid
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
        end
        inherited tlbMaster: TToolBar
          Width = 687
          ExplicitWidth = 687
        end
        inherited Edit1: TEdit
          Height = 21
          ExplicitHeight = 21
        end
        inherited DBNavigator1: TDBNavigator
          Hints.Strings = ()
        end
        inherited grdDetail2: TwwDBGrid
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
        end
        inherited tlbSubModel: TToolBar
          Width = 1248
          ExplicitWidth = 1248
        end
        inherited btnTestSubModel: TButton
          OnClick = frameVclTestOrmDatasetSync1btnTestSubModelClick
        end
        inherited edTextSubModel: TEdit
          Width = 490
          Height = 21
          ExplicitWidth = 490
          ExplicitHeight = 21
        end
        inherited dbnavDetail: TDBNavigator
          Width = 590
          Hints.Strings = ()
          ExplicitWidth = 600
        end
        inherited grdDetailWW: TwwDBGrid
          Width = 601
          Height = 100
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          ExplicitWidth = 601
          ExplicitHeight = 100
        end
        inherited edtMasterStringField: TLabeledEdit
          EditLabel.Width = 80
          EditLabel.Height = 13
          EditLabel.ExplicitLeft = 569
          EditLabel.ExplicitTop = 248
          EditLabel.ExplicitWidth = 80
          EditLabel.ExplicitHeight = 13
        end
        inherited seDetailIntField: TSpinEdit
          Height = 22
          ExplicitHeight = 22
        end
        inherited edtDetailString: TLabeledEdit
          Height = 21
          EditLabel.Width = 83
          EditLabel.Height = 13
          EditLabel.ExplicitLeft = 1008
          EditLabel.ExplicitTop = 504
          EditLabel.ExplicitWidth = 83
          EditLabel.ExplicitHeight = 13
          ExplicitHeight = 21
        end
        inherited seIntegerEdit: TJvValidateEdit
          Height = 21
          ExplicitHeight = 21
        end
        inherited DetailActionViewController1: TJanuaActionViewController
          Left = 720
          Top = 288
        end
        inherited JanuaDetailVCLMVVMSearchTextBuilder: TJanuaVCLMVVMSearchTextBuilder
          Left = 728
          Top = 152
        end
        inherited DetailFormController: TJanuaMVVMFormController
          DetailActions = frameVclTestOrmDatasetSync1.DetailActionViewController1
        end
      end
    end
    object tabTestNavigator: TTabSheet
      Caption = 'Full Test MVVM Navigator'
      ImageIndex = 2
      object pnlTestMVVMNavigator: TPanel
        Left = 0
        Top = 0
        Width = 1290
        Height = 41
        Align = alTop
        TabOrder = 0
        object btnStartTestMVVMNavigator: TButton
          AlignWithMargins = True
          Left = 4
          Top = 2
          Width = 75
          Height = 37
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'Start Test'
          TabOrder = 0
          OnClick = btnStartTestMVVMNavigatorClick
        end
      end
    end
    object tsTestSearchGrids: TTabSheet
      Caption = 'Test Search Grids'
      ImageIndex = 3
      object pgTestGrids: TPageControl
        Left = 0
        Top = 41
        Width = 1290
        Height = 569
        ActivePage = tsStandardGrid
        Align = alClient
        TabOrder = 0
        object tsStandardGrid: TTabSheet
          Caption = 'tsStandardGrid'
          object dbgrdTestStandard: TDBGrid
            Left = 0
            Top = 0
            Width = 1282
            Height = 537
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
        object tsCRDBGrid: TTabSheet
          Caption = 'tsCRDBGrid'
          ImageIndex = 1
          object crdbgrdTestGrid: TCRDBGrid
            Left = 0
            Top = 0
            Width = 1282
            Height = 537
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
      end
      object pnlTestGrids: TPanel
        Left = 0
        Top = 0
        Width = 1290
        Height = 41
        Align = alTop
        Caption = 'pnlTestGrids'
        TabOrder = 1
        object btnStartTests: TButton
          Left = 1
          Top = 1
          Width = 176
          Height = 39
          Align = alLeft
          Caption = 'Start Tests'
          TabOrder = 0
        end
      end
    end
  end
end
