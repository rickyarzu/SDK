object dlgSelectLkpPlayer: TdlgSelectLkpPlayer
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Ricerca Calciatore'
  ClientHeight = 275
  ClientWidth = 451
  Color = clBtnFace
  ParentFont = True
  Position = poScreenCenter
  DesignSize = (
    451
    275)
  TextHeight = 15
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 329
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Nome del Calciatore'
    Transparent = True
  end
  object OKBtn: TButton
    Left = 360
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 360
    Top = 38
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object ButtonedEditPlayers: TButtonedEdit
    Left = 8
    Top = 24
    Width = 329
    Height = 23
    Images = frmMdcFootballChampionship.ImageList1
    ParentShowHint = False
    RightButton.DisabledImageIndex = 17
    RightButton.Hint = 'Ricerca la squadra'
    RightButton.HotImageIndex = 18
    RightButton.ImageIndex = 16
    RightButton.PressedImageIndex = 17
    RightButton.Visible = True
    ShowHint = True
    TabOrder = 2
    TextHint = 'Nome e/o cognome del giocatore'
    OnChange = ButtonedEditPlayersChange
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 51
    Width = 329
    Height = 24
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'family_name'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'first_name'
        Width = 140
        Visible = True
      end>
  end
  object grdAllPlayers: TEnhCRDBGrid
    Left = 8
    Top = 81
    Width = 427
    Height = 186
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'fullname'
        Width = 400
        Visible = True
      end>
  end
end
