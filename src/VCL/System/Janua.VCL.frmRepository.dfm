object frmVCLRepositoryMetadata: TfrmVCLRepositoryMetadata
  Left = 0
  Top = 0
  Caption = 'Postgres Database Repository'
  ClientHeight = 641
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgRepository: TPageControl
    Left = 0
    Top = 0
    Width = 1004
    Height = 641
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object tsDBMetaData: TTabSheet
      Caption = 'DB MetaData'
    end
    object tsOrmEntities: TTabSheet
      Caption = 'Janua Orm Entities'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
  end
end
