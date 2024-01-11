object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ImageKit - TIKPageView - Demo'
  ClientHeight = 460
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DurationLabel: TLabel
      Left = 337
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Duration:'
    end
    object Label3: TLabel
      Left = 541
      Top = 18
      Width = 28
      Height = 13
      Caption = 'Type:'
    end
    object Label4: TLabel
      Left = 126
      Top = 19
      Width = 28
      Height = 13
      Caption = 'Style:'
    end
    object Button1: TButton
      Left = 11
      Top = 9
      Width = 102
      Height = 34
      Caption = 'Change Page'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Duration: TTrackBar
      Left = 389
      Top = 15
      Width = 141
      Height = 22
      Max = 5000
      Min = 100
      Position = 1000
      TabOrder = 1
      ThumbLength = 17
      TickMarks = tmBoth
      TickStyle = tsNone
      OnChange = DurationChange
    end
    object ComboBox2: TComboBox
      Left = 578
      Top = 14
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'ikpv3DYRotation'
      OnChange = ComboBox2Change
      Items.Strings = (
        'ikpv3DYRotation'
        'ikpv3DXRotation'
        'ikpv3DYXRotation'
        'ikpv3DXYRotation'
        'ikpv3DYRotation270'
        'ikpv3DXRotation270'
        'ikpv3DYXRotation270'
        'ikpv3DXYRotation270')
    end
    object ComboBox3: TComboBox
      Left = 160
      Top = 14
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      OnChange = ComboBox3Change
      Items.Strings = (
        '')
    end
  end
  object IKPageView1: TIKPageView
    Left = 0
    Top = 57
    Width = 746
    Height = 403
    Align = alClient
    TransitionEnabled = True
    TransitionKind = ikpv3DYRotation
    TransitionDuration = 1.000000000000000000
    FillColor = clBtnFace
    PageIndex = 0
    Pages = <
      item
        Page = IKPageViewPage1
      end
      item
        Page = IKPageViewPage2
      end>
    Transparent = False
    ActivePage = IKPageViewPage1
    TabOrder = 1
    object IKPageViewPage2: TIKPageViewPage
      Left = 0
      Top = 0
      Width = 746
      Height = 403
      BackgroundStyle = ikpbColor
      FillColor = clBtnFace
      Align = alClient
      TabOrder = 1
      Visible = False
      object ListBox1: TListBox
        Left = 24
        Top = 24
        Width = 153
        Height = 153
        ItemHeight = 13
        Items.Strings = (
          'Item1'
          'Item2'
          'Item3'
          'Item4'
          'Item5'
          'Item6'
          'Item7'
          'Item8'
          'Item9'
          'Item10'
          'Item11'
          'Item12'
          'Item13'
          'Item14'
          'Item15'
          'Item16'
          'Item17')
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 192
        Top = 24
        Width = 225
        Height = 137
        Caption = 'Panel2'
        TabOrder = 1
        object Edit2: TEdit
          Left = 16
          Top = 92
          Width = 193
          Height = 21
          TabOrder = 0
          Text = 'Edit2'
        end
      end
      object StringGrid1: TStringGrid
        Left = 439
        Top = 116
        Width = 261
        Height = 120
        TabOrder = 2
        ColWidths = (
          64
          64
          64
          64
          64)
      end
      object Memo1: TMemo
        Left = 24
        Top = 232
        Width = 153
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 232
        Top = 200
        Width = 169
        Height = 137
        Caption = 'GroupBox1'
        TabOrder = 4
      end
      object ScrollBar1: TScrollBar
        Left = 472
        Top = 48
        Width = 193
        Height = 17
        Ctl3D = False
        PageSize = 40
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    object IKPageViewPage1: TIKPageViewPage
      Left = 0
      Top = 0
      Width = 746
      Height = 403
      BackgroundStyle = ikpbColor
      FillColor = clBtnFace
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 27
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Edit1: TEdit
        Left = 27
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object CheckBox1: TCheckBox
        Left = 27
        Top = 98
        Width = 97
        Height = 17
        Caption = 'CheckBox1'
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 200
        Top = 44
        Width = 145
        Height = 21
        TabOrder = 2
        Text = 'ComboBox1'
        Items.Strings = (
          'Item1'
          'Item2'
          'Item3'
          'Item4'
          'Item5'
          'Item6'
          'Item7')
      end
      object ListView1: TListView
        Left = 443
        Top = 44
        Width = 250
        Height = 137
        Columns = <
          item
            Caption = 'Column1'
            Width = 80
          end
          item
            Caption = 'Column2'
            Width = 100
          end>
        DoubleBuffered = True
        Items.ItemData = {
          05EF0100000900000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF000000
          00054900740065006D003100064900740065006D0031003100D06DAE26000000
          00FFFFFFFFFFFFFFFF01000000FFFFFFFF00000000054900740065006D003200
          064900740065006D00320031003072AE2600000000FFFFFFFFFFFFFFFF010000
          00FFFFFFFF00000000054900740065006D003300064900740065006D00330031
          006872AE2600000000FFFFFFFFFFFFFFFF01000000FFFFFFFF00000000054900
          740065006D003400064900740065006D0034003100A072AE2600000000FFFFFF
          FFFFFFFFFF01000000FFFFFFFF00000000054900740065006D00350006490074
          0065006D0035003100D872AE2600000000FFFFFFFFFFFFFFFF01000000FFFFFF
          FF00000000054900740065006D003600064900740065006D00360031001073AE
          2600000000FFFFFFFFFFFFFFFF01000000FFFFFFFF0000000005490074006500
          6D003700064900740065006D00370031004873AE2600000000FFFFFFFFFFFFFF
          FF01000000FFFFFFFF00000000054900740065006D003800064900740065006D
          00380031008073AE2600000000FFFFFFFFFFFFFFFF01000000FFFFFFFF000000
          00054900740065006D003900064900740065006D0039003100B873AE26FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 3
        ViewStyle = vsReport
      end
      object TabControl1: TTabControl
        Left = 27
        Top = 144
        Width = 390
        Height = 209
        TabOrder = 4
        Tabs.Strings = (
          'Tab1'
          'Tab2')
        TabIndex = 0
        OnChange = TabControl1Change
        object IKPageView2: TIKPageView
          Left = 4
          Top = 24
          Width = 382
          Height = 181
          Align = alClient
          TransitionEnabled = True
          TransitionKind = ikpv3DYRotation
          TransitionDuration = 1.000000000000000000
          FillColor = clBtnFace
          PageIndex = 0
          Pages = <
            item
              Page = IKPageViewPage3
            end
            item
              Page = IKPageViewPage4
            end>
          Transparent = True
          ActivePage = IKPageViewPage3
          TabOrder = 0
          object IKPageViewPage4: TIKPageViewPage
            Left = 0
            Top = 0
            Width = 382
            Height = 181
            BackgroundStyle = ikpbTab
            FillColor = clBtnFace
            Align = alClient
            TabOrder = 1
            Visible = False
            object Memo2: TMemo
              Left = 16
              Top = 24
              Width = 201
              Height = 113
              Lines.Strings = (
                'Memo2')
              TabOrder = 0
            end
            object Button2: TButton
              Left = 248
              Top = 24
              Width = 105
              Height = 41
              Caption = 'Button2'
              TabOrder = 1
            end
            object Panel3: TPanel
              Left = 240
              Top = 104
              Width = 137
              Height = 41
              BevelInner = bvLowered
              BiDiMode = bdLeftToRight
              Caption = 'Panel3'
              ParentBiDiMode = False
              TabOrder = 2
            end
          end
          object IKPageViewPage3: TIKPageViewPage
            Left = 0
            Top = 0
            Width = 382
            Height = 181
            BackgroundStyle = ikpbTab
            FillColor = clBtnFace
            Align = alClient
            TabOrder = 0
            object Label2: TLabel
              Left = 19
              Top = 16
              Width = 127
              Height = 13
              Caption = 'Change Tab for 3D effect!'
            end
            object ListBox2: TListBox
              Left = 19
              Top = 44
              Width = 153
              Height = 121
              ItemHeight = 13
              Items.Strings = (
                'Item1'
                'Item2'
                'Item3'
                'Item4'
                'Item5'
                'Item6'
                'Item7'
                'Item8'
                'Item9'
                'Item10'
                'Item11'
                'Item12'
                'Item13'
                'Item14'
                'Item15'
                'Item16'
                'Item17')
              TabOrder = 0
            end
            object CheckBox2: TCheckBox
              Left = 192
              Top = 64
              Width = 97
              Height = 17
              Caption = 'CheckBox2'
              TabOrder = 1
            end
            object ProgressBar1: TProgressBar
              Left = 192
              Top = 112
              Width = 173
              Height = 33
              Position = 50
              TabOrder = 2
            end
          end
        end
      end
      object Button3: TButton
        Left = 200
        Top = 88
        Width = 145
        Height = 37
        Caption = 'Button3'
        TabOrder = 5
      end
      object TreeView1: TTreeView
        Left = 443
        Top = 216
        Width = 250
        Height = 137
        DoubleBuffered = True
        Indent = 19
        ParentDoubleBuffered = False
        TabOrder = 6
        Items.NodeData = {
          030A000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
          000000000001054900740065006D003100280000000000000000000000FFFFFF
          FFFFFFFFFF00000000000000000000000001054900740065006D003200280000
          000000000000000000FFFFFFFFFFFFFFFF000000000000000002000000010549
          00740065006D0033002A0000000000000000000000FFFFFFFFFFFFFFFF000000
          00000000000000000001064900740065006D00330031002A0000000000000000
          000000FFFFFFFFFFFFFFFF00000000000000000000000001064900740065006D
          0033003200280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
          000000000001054900740065006D003400280000000000000000000000FFFFFF
          FFFFFFFFFF00000000000000000000000001054900740065006D003500280000
          000000000000000000FFFFFFFFFFFFFFFF000000000000000000000000010549
          00740065006D003600280000000000000000000000FFFFFFFFFFFFFFFF000000
          00000000000300000001054900740065006D0037002A00000000000000000000
          00FFFFFFFFFFFFFFFF00000000000000000000000001064900740065006D0037
          0031002A0000000000000000000000FFFFFFFFFFFFFFFF000000000000000002
          00000001064900740065006D00370032002C0000000000000000000000FFFFFF
          FFFFFFFFFF00000000000000000000000001074900740065006D003700320031
          002C0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
          0001074900740065006D003700320032002A0000000000000000000000FFFFFF
          FFFFFFFFFF00000000000000000000000001064900740065006D003700330028
          0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
          054900740065006D003800280000000000000000000000FFFFFFFFFFFFFFFF00
          000000000000000000000001054900740065006D0039002A0000000000000000
          000000FFFFFFFFFFFFFFFF00000000000000000000000001064900740065006D
          0031003000}
      end
    end
  end
end
