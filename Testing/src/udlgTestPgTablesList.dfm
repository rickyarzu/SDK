object dlgVCLTestPgTablesList: TdlgVCLTestPgTablesList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'dlgVCLTestPgTablesList'
  ClientHeight = 436
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 0
    Width = 645
    Height = 395
    Align = alClient
    DataSource = dsTablesList
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'table_name'
        Width = 600
        Visible = True
      end>
  end
  object pnlTablesGrid: TPanel
    Left = 0
    Top = 395
    Width = 645
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 401
    object btnClose: TBitBtn
      Left = 536
      Top = 6
      Width = 83
      Height = 25
      Caption = 'btnClose'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object dsTablesList: TDataSource
    DataSet = frmUnitTestJanuaVCLComponents.qrySchemaTables
    Left = 224
    Top = 200
  end
end
