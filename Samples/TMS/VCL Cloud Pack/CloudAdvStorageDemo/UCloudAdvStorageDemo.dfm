object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Storage access & TAdvTreeView demo '
  ClientHeight = 503
  ClientWidth = 1102
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 766
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000000002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000003333
    3387333333F5333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF333333FF333333FF333333ED33333355FFFFFF013333
    33F5333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF3232329932323299333333FF333333BBFFFFFF013333
    33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF3333336533333365333333FF333333C5FFFFFF013333
    33B5323232FB333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF333333F5333333F5333333F53333337FFFFFFF013333
    3391333333853333336333333363333333633333336333333363333333633333
    3363333333633333336333333363333333653333338B33333371FFFFFF013333
    33A5333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF333333FF333333FF333333FF33333373FFFFFF013333
    3353333333F3333333FF333333FF333333FF333333FF333333FF333333E93333
    33BB333333B3333333D9333333E3333333E5333333EF3333332BFFFFFF013333
    3319333333D3333333FF333333FF333333FF333333FF333333DB333333573333
    336D3333337133333349333333513232324B333333613333330FFFFFFF01FFFF
    FF0133333381333333FF333333FF333333FD333333B533333351333333BD3333
    33D9333333C9333333FD333333F5323232F13232326133333305FFFFFF01FFFF
    FF0133333337333333F1333333FF323232C53232325B333333C9333333E93333
    333133333325323232AD333333533333338F333333EB3333339F33333323FFFF
    FF013333330B33333397333333F933333369323232C5333333AB32323241FFFF
    FF01FFFFFF013333330D33333303333333233333337F333333D1323232A9FFFF
    FF01FFFFFF0133333309333333233333331D323232D933333365FFFFFF01FFFF
    FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF013232320333333375333333D7FFFF
    FF01FFFFFF01FFFFFF01FFFFFF0133333309323232A3333333D33232327BFFFF
    FF01FFFFFF0132323203333333053333330533333367333333D5333333A7FFFF
    FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF0133333319333333A1323232E93333
    330BFFFFFF01333333393333337D3333335F333333ED3333339B3333331FFFFF
    FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF013232322B333333D73333
    33A53333336F333333D1333333DD333333D33333339B33333315FFFFFF01FFFF
    FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF0133333303333333413333
    33C1333333D5333333A5333333353333332B33333307FFFFFF01FFFFFF010000
    FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
    FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF}
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 503
    Align = alLeft
    TabOrder = 0
    object ConnectBtn: TButton
      Left = 10
      Top = 183
      Width = 137
      Height = 25
      Hint = 'Connect to the selected cloud storage'
      Caption = 'Connect'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ConnectBtnClick
    end
    object DisconnectBtn: TButton
      Left = 10
      Top = 214
      Width = 137
      Height = 25
      Hint = 'Disconnect from cloud storage'
      Caption = 'Disconnect'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = DisconnectBtnClick
    end
    object clrAccess: TCheckBox
      Left = 10
      Top = 245
      Width = 121
      Height = 17
      Caption = 'Clear access token'
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 16
      Width = 137
      Height = 161
      Caption = 'Select cloud storage'
      ItemIndex = 0
      Items.Strings = (
        'DropBox'
        'Google Drive'
        'Microsoft OneDrive'
        'Box'
        'Hubic')
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 153
    Top = 0
    Width = 949
    Height = 503
    Align = alClient
    Anchors = []
    TabOrder = 1
    DesignSize = (
      949
      503)
    object Label4: TLabel
      Left = 22
      Top = 16
      Width = 393
      Height = 13
      Caption = 
        'Note: For this demo the TAdvTreeView from the TMS Component Pack' +
        ' is required.'
    end
    object GroupBox1: TGroupBox
      Left = 22
      Top = 358
      Width = 674
      Height = 124
      Anchors = [akTop]
      Caption = 'Details'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 32
        Width = 31
        Height = 13
        Caption = 'Name:'
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 27
        Height = 13
        Caption = 'Date:'
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 23
        Height = 13
        Caption = 'Size:'
      end
      object FileName: TLabel
        Left = 72
        Top = 32
        Width = 3
        Height = 13
      end
      object Created: TLabel
        Left = 72
        Top = 64
        Width = 3
        Height = 13
      end
      object Size: TLabel
        Left = 72
        Top = 96
        Width = 3
        Height = 13
      end
    end
    object GroupBox2: TGroupBox
      Left = 702
      Top = 16
      Width = 233
      Height = 312
      Caption = 'Actions'
      TabOrder = 1
      object ProgressLabel: TLabel
        Left = 24
        Top = 222
        Width = 177
        Height = 13
        AutoSize = False
      end
      object ProgressBar1: TProgressBar
        Left = 21
        Top = 199
        Width = 180
        Height = 17
        TabOrder = 0
        Visible = False
      end
      object DeleteBtn: TButton
        Left = 21
        Top = 156
        Width = 180
        Height = 25
        Hint = 'Delete the selected file'
        Caption = 'Delete'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = DeleteBtnClick
      end
      object UploadBtn: TButton
        Left = 21
        Top = 113
        Width = 180
        Height = 25
        Hint = 'Upload a file in the root or selected folder'
        Caption = 'Upload'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = UploadBtnClick
      end
      object DownloadBtn: TButton
        Left = 21
        Top = 73
        Width = 180
        Height = 25
        Hint = 'Download selected file'
        Caption = 'Download'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = DownloadBtnClick
      end
      object CreateFolderBtn: TButton
        Left = 21
        Top = 28
        Width = 180
        Height = 25
        Hint = 'Create folder under root or selected folder'
        Caption = 'Create folder'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = CreateFolderBtnClick
      end
    end
  end
  object AdvTreeView1: TAdvTreeView
    Left = 175
    Top = 35
    Width = 674
    Height = 312
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 2
    Groups = <>
    GroupsAppearance.TopSize = 50.000000000000000000
    GroupsAppearance.BottomSize = 50.000000000000000000
    GroupsAppearance.TopFont.Charset = DEFAULT_CHARSET
    GroupsAppearance.TopFont.Color = clWindowText
    GroupsAppearance.TopFont.Height = -11
    GroupsAppearance.TopFont.Name = 'Tahoma'
    GroupsAppearance.TopFont.Style = []
    GroupsAppearance.BottomFont.Charset = DEFAULT_CHARSET
    GroupsAppearance.BottomFont.Color = clWindowText
    GroupsAppearance.BottomFont.Height = -11
    GroupsAppearance.BottomFont.Name = 'Tahoma'
    GroupsAppearance.BottomFont.Style = []
    GroupsAppearance.TopStroke.Color = 11119017
    GroupsAppearance.BottomStroke.Color = 11119017
    ColumnStroke.Color = -1
    Columns = <
      item
        Name = 'Column0'
        Text = 'Model'
        Width = 100.000000000000000000
        Fill.Color = -1
        Stroke.Color = 11119017
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TopFill.Kind = gfkNone
        TopStroke.Color = 11119017
        TopFont.Charset = DEFAULT_CHARSET
        TopFont.Color = clWindowText
        TopFont.Height = -11
        TopFont.Name = 'Tahoma'
        TopFont.Style = []
        BottomFill.Kind = gfkNone
        BottomStroke.Color = 11119017
        BottomFont.Charset = DEFAULT_CHARSET
        BottomFont.Color = clWindowText
        BottomFont.Height = -11
        BottomFont.Name = 'Tahoma'
        BottomFont.Style = []
      end
      item
        Name = 'Column1'
        Text = 'Year'
        Width = 100.000000000000000000
        Fill.Color = -1
        Stroke.Color = 11119017
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TopFill.Kind = gfkNone
        TopStroke.Color = 11119017
        TopFont.Charset = DEFAULT_CHARSET
        TopFont.Color = clWindowText
        TopFont.Height = -11
        TopFont.Name = 'Tahoma'
        TopFont.Style = []
        BottomFill.Kind = gfkNone
        BottomStroke.Color = 11119017
        BottomFont.Charset = DEFAULT_CHARSET
        BottomFont.Color = clWindowText
        BottomFont.Height = -11
        BottomFont.Name = 'Tahoma'
        BottomFont.Style = []
      end
      item
        Name = 'Column2'
        Text = 'Miles'
        Width = 100.000000000000000000
        Fill.Color = -1
        Stroke.Color = 11119017
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TopFill.Kind = gfkNone
        TopStroke.Color = 11119017
        TopFont.Charset = DEFAULT_CHARSET
        TopFont.Color = clWindowText
        TopFont.Height = -11
        TopFont.Name = 'Tahoma'
        TopFont.Style = []
        BottomFill.Kind = gfkNone
        BottomStroke.Color = 11119017
        BottomFont.Charset = DEFAULT_CHARSET
        BottomFont.Color = clWindowText
        BottomFont.Height = -11
        BottomFont.Name = 'Tahoma'
        BottomFont.Style = []
      end>
    Nodes = <
      item
        Values = <
          item
            Text = 'Audi'
          end>
        Expanded = True
        Extended = True
        Tag = 0
        Nodes = <
          item
            Values = <
              item
                Text = 'A3'
              end
              item
                Text = '2010'
              end
              item
                Text = '32,300'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end
          item
            Values = <
              item
                Text = 'A5 series'
              end>
            Expanded = True
            Tag = 0
            Nodes = <
              item
                Values = <
                  item
                    Text = 'S5'
                  end
                  item
                    Text = '2015'
                  end
                  item
                    Text = '40,000'
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end
              item
                Values = <
                  item
                    Text = 'RS5'
                  end
                  item
                    Text = '2012'
                  end
                  item
                    Text = '15,000'
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end>
          end
          item
            Values = <
              item
                Text = 'A8'
              end
              item
                Text = '2005'
              end
              item
                Text = '80,000'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end>
      end
      item
        Values = <
          item
            Text = 'Mercedes'
          end>
        Expanded = True
        Extended = True
        Tag = 0
        Nodes = <
          item
            Values = <
              item
                Text = 'SLS'
              end
              item
                Text = '2000'
              end
              item
                Text = '300,000'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end
          item
            Values = <
              item
                Text = 'SLK'
              end
              item
                Text = '2010'
              end
              item
                Text = '20,000'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end
          item
            Values = <
              item
                Text = 'GLA'
              end
              item
                Text = '2012'
              end
              item
                Text = '14,500'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end>
      end>
    ColumnsAppearance.TopSize = 25.000000000000000000
    ColumnsAppearance.BottomSize = 25.000000000000000000
    ColumnsAppearance.TopFont.Charset = DEFAULT_CHARSET
    ColumnsAppearance.TopFont.Color = clWindowText
    ColumnsAppearance.TopFont.Height = -11
    ColumnsAppearance.TopFont.Name = 'Tahoma'
    ColumnsAppearance.TopFont.Style = []
    ColumnsAppearance.BottomFont.Charset = DEFAULT_CHARSET
    ColumnsAppearance.BottomFont.Color = clWindowText
    ColumnsAppearance.BottomFont.Height = -11
    ColumnsAppearance.BottomFont.Name = 'Tahoma'
    ColumnsAppearance.BottomFont.Style = []
    ColumnsAppearance.TopStroke.Color = 11119017
    ColumnsAppearance.BottomStroke.Color = 11119017
    NodesAppearance.ExpandWidth = 15.000000000000000000
    NodesAppearance.ExpandHeight = 15.000000000000000000
    NodesAppearance.LevelIndent = 20.000000000000000000
    NodesAppearance.FixedHeight = 25.000000000000000000
    NodesAppearance.VariableMinimumHeight = 25.000000000000000000
    NodesAppearance.Fill.Color = -1
    NodesAppearance.Stroke.Kind = gskNone
    NodesAppearance.Stroke.Color = 11119017
    NodesAppearance.ColumnStroke.Color = -1
    NodesAppearance.LineStroke.Kind = gskDot
    NodesAppearance.LineStroke.Color = 11119017
    NodesAppearance.Font.Charset = DEFAULT_CHARSET
    NodesAppearance.Font.Color = clWindowText
    NodesAppearance.Font.Height = -11
    NodesAppearance.Font.Name = 'Tahoma'
    NodesAppearance.Font.Style = []
    NodesAppearance.TitleFont.Charset = DEFAULT_CHARSET
    NodesAppearance.TitleFont.Color = clWindowText
    NodesAppearance.TitleFont.Height = -11
    NodesAppearance.TitleFont.Name = 'Tahoma'
    NodesAppearance.TitleFont.Style = []
    NodesAppearance.SelectedFill.Color = 16297243
    NodesAppearance.SelectedStroke.Color = 11119017
    NodesAppearance.DisabledFill.Color = 11119017
    NodesAppearance.DisabledStroke.Kind = gskNone
    NodesAppearance.DisabledStroke.Color = 11119017
    NodesAppearance.ExtendedFill.Color = 16053492
    NodesAppearance.ExtendedStroke.Color = 11119017
    NodesAppearance.ExtendedFont.Charset = DEFAULT_CHARSET
    NodesAppearance.ExtendedFont.Color = clWindowText
    NodesAppearance.ExtendedFont.Height = -11
    NodesAppearance.ExtendedFont.Name = 'Tahoma'
    NodesAppearance.ExtendedFont.Style = []
    NodesAppearance.ExtendedSelectedFill.Color = 16297243
    NodesAppearance.ExtendedSelectedStroke.Kind = gskNone
    NodesAppearance.ExtendedSelectedStroke.Color = 11119017
    NodesAppearance.ExtendedDisabledFill.Color = 11119017
    NodesAppearance.ExtendedDisabledStroke.Kind = gskNone
    NodesAppearance.ExtendedDisabledStroke.Color = 11119017
    NodesAppearance.ExpandNodeIcon.Data = {
      07544269746D6170C2010000424DC20100000000000036000000280000000B00
      00000B00000001001800000000008C0100000000000000000000000000000000
      00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
      7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFF
      FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A
      FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
      FF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF4A4D4A4A
      4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFF7B7D7B0000007B7D7BFFFFFF
      FFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
      7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
      00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF
      7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
      7D7B7B7D7B7B7D7B7B7D7B000000}
    NodesAppearance.CollapseNodeIcon.Data = {
      07544269746D6170C2010000424DC20100000000000036000000280000000B00
      00000B00000001001800000000008C0100000000000000000000000000000000
      00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
      7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFF4A
      4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
      7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
      00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
      7D7B7B7D7B7B7D7B7B7D7B000000}
    NodesAppearance.ExpandNodeIconLarge.Data = {
      07544269746D61700E060000424D0E0600000000000036000000280000001600
      0000160000000100180000000000D80500000000000000000000000000000000
      00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
      7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
      7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
      7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
      7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
      7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
      4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
      00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
      7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A4A4D4A4A
      4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A
      FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A
      4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D
      4A4A4D4AFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
      7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
      4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
      00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
      7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
      7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
      7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
      7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
      7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
    NodesAppearance.CollapseNodeIconLarge.Data = {
      07544269746D61700E060000424D0E0600000000000036000000280000001600
      0000160000000100180000000000D80500000000000000000000000000000000
      00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
      7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
      7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
      7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
      7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
      7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
      00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
      7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
      4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF
      FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
      4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFF
      FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
      7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
      00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
      7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
      7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
      7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
      7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
      7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
    OnAfterSelectNode = AdvTreeView1AfterSelectNode
  end
  object AdvSkyDrive1: TAdvSkyDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\STOKENS.INI'
    Scopes.Strings = (
      'wl.signin'
      'wl.basic'
      'wl.offline_access'
      'wl.skydrive'
      'wl.skydrive_update')
    Logging = True
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnReceivedAccessToken = AdvDropBox1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Left = 24
    Top = 352
  end
  object OpenDialog1: TOpenDialog
    Left = 96
    Top = 424
  end
  object AdvHubic1: TAdvHubic
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://localhost:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\HTOKENS.INI'
    OnUploadProgress = AdvBoxNetDrive1UploadProgress
    OnDownloadProgress = AdvBoxNetDrive1DownloadProgress
    OnReceivedAccessToken = AdvDropBox1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 16
    Top = 416
  end
  object AdvDropBox1: TAdvDropBox
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\DTOKENS.INI'
    Logging = True
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnReceivedAccessToken = AdvDropBox1ReceivedAccessToken
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Language = dlEnglish
    Mode = dmRoot
    ExternalBrowser = False
    Left = 24
    Top = 288
  end
  object AdvBoxNetDrive1: TAdvBoxNetDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\BTOKENS.INI'
    Logging = True
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnReceivedAccessToken = AdvDropBox1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Left = 104
    Top = 288
  end
  object AdvGDrive1: TAdvGDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8889/'
    App.CallBackPort = 8889
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\GTOKENS.INI'
    Scopes.Strings = (
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.file'
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email')
    Logging = True
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnReceivedAccessToken = AdvDropBox1ReceivedAccessToken
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Left = 104
    Top = 352
  end
end
