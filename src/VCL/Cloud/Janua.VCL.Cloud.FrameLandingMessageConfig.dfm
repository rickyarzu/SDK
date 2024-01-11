object FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
  Left = 0
  Top = 0
  Width = 1440
  Height = 1000
  TabOrder = 0
  object pnlButtons: TPanel
    Left = 0
    Top = 0
    Width = 1440
    Height = 81
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1440
      81)
    object lblMailImagesURL: TLabel
      Left = 16
      Top = 50
      Width = 61
      Height = 15
      Caption = 'Landing Url'
    end
    object lbMasterDataset: TLabel
      Left = 520
      Top = 24
      Width = 78
      Height = 15
      Caption = 'Master Dataset'
    end
    object btnMsgConfig: TButton
      Left = 24
      Top = 16
      Width = 161
      Height = 25
      Caption = 'Save MsgConfig'
      TabOrder = 0
      OnClick = btnMsgConfigClick
    end
    object btnLoadMsgConfig: TButton
      Left = 191
      Top = 16
      Width = 155
      Height = 25
      Caption = 'Load Msg Config'
      TabOrder = 1
      OnClick = btnLoadMsgConfigClick
    end
    object btnGenerateMessage: TButton
      Left = 352
      Top = 16
      Width = 137
      Height = 25
      Caption = 'Generate Msg Html'
      TabOrder = 2
      OnClick = btnGenerateMessageClick
    end
    object edtLandingUrl: TEdit
      Left = 96
      Top = 47
      Width = 1098
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      Text = 'https://cdn.januaservers.com'
      TextHint = 'From'
    end
    object btnGenerateTinyUrl: TButton
      Left = 1211
      Top = 16
      Width = 137
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Generate tiny Url'
      TabOrder = 4
    end
    object edtTinyUrl: TEdit
      Left = 1211
      Top = 47
      Width = 225
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 5
      Text = 'https://cdn.januaservers.com'
      TextHint = 'From'
    end
  end
  object pgcCustomerMail: TPageControl
    Left = 185
    Top = 81
    Width = 1255
    Height = 847
    ActivePage = tabEditor
    Align = alClient
    TabOrder = 1
    object tabEditor: TTabSheet
      Caption = 'Editor'
      ImageIndex = 5
      inline frameHTMLEditor1: TframeHTMLEditor
        Left = 0
        Top = 0
        Width = 1247
        Height = 817
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1247
        ExplicitHeight = 817
        inherited Splitter1: TSplitter
          Top = 82
          Height = 713
          ExplicitTop = 82
          ExplicitHeight = 535
        end
        inherited ToolBar1: TToolBar
          Width = 1247
          ExplicitWidth = 1247
        end
        inherited ToolBar2: TToolBar
          Width = 1247
          Height = 26
          ExplicitWidth = 1247
          ExplicitHeight = 26
          inherited ToolButton10: TToolButton
            Left = 742
            Wrap = False
            ExplicitLeft = 742
            ExplicitHeight = 22
          end
          inherited LoadSampleBtn: TToolButton
            Left = 750
            Top = 0
            ExplicitLeft = 750
            ExplicitTop = 0
          end
          inherited CanvasCombo: TComboBox
            Left = 975
            Top = 0
            ExplicitLeft = 975
            ExplicitTop = 0
          end
          inherited TemplateCombo: TComboBox
            Left = 1089
            Top = 0
            ExplicitLeft = 1089
            ExplicitTop = 0
          end
        end
        inherited E: THtmlEditor
          Top = 82
          Width = 969
          Height = 713
          StyleElements = [seBorder]
          ExplicitTop = 82
          ExplicitWidth = 969
          ExplicitHeight = 713
        end
        inherited pnlFooter: TPanel
          Top = 795
          Width = 1247
          ExplicitTop = 795
          ExplicitWidth = 1247
          inherited TrackBar1: TTrackBar
            Left = 883
            ExplicitLeft = 883
          end
        end
        inherited LeftPages: TPageControl
          Top = 82
          Height = 713
          ExplicitTop = 82
          ExplicitHeight = 713
          inherited TabSheet1: TTabSheet
            inherited TreePanel: THtPanel
              ExplicitHeight = 624
            end
          end
          inherited TabSheet2: TTabSheet
            inherited SearchPanel: THtPanel
              ExplicitHeight = 596
            end
          end
          inherited tabTag: TTabSheet
            ExplicitHeight = 685
            inherited pnlLists: TPanel
              Height = 685
              ExplicitHeight = 685
              inherited lst1: TListBox
                OnClick = frameHTMLEditor1lst1Click
              end
              inherited lst2: TListBox
                Height = 165
                ExplicitHeight = 165
              end
            end
          end
        end
      end
    end
    object tabCustomerMailPreview: TTabSheet
      Caption = 'Anteprima'
      ImageIndex = 1
      OnShow = tabCustomerMailPreviewShow
      object brwModelMessage: TTMSFNCWebBrowser
        Left = 0
        Top = 0
        Width = 1247
        Height = 817
        Align = alClient
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        URL = 
          'data:text/html;charset=utf-8;base64,PCFET0NUWVBFIGh0bWw+PGh0bWwg' +
          'bGFuZz0iZW4iPjxoZWFkPiAgPG1ldGEgY2hhcnNldD0idXRmLTgiPg0gIDxtZXRh' +
          'IGh0dHAtZXF1aXY9IlgtVUEtQ29tcGF0aWJsZSIgY29udGVudD0iSUU9ZWRnZSI+' +
          'DSAgPG1ldGEgbmFtZT0idmlld3BvcnQiIGNvbnRlbnQ9IndpZHRoPWRldmljZS13' +
          'aWR0aCwgaW5pdGlhbC1zY2FsZT0xIj4NICA8dGl0bGU+NDA0IEhUTUwgVGVtcGxh' +
          'dGUgYnkgQ29sb3JsaWI8L3RpdGxlPg0gIDxsaW5rIGhyZWY9Imh0dHBzOi8vZm9u' +
          'dHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Nb250c2VycmF0OjIwMCw0MDAs' +
          'NzAwIiByZWw9InN0eWxlc2hlZXQiPg0gIDxsaW5rIHR5cGU9InRleHQvY3NzIiBy' +
          'ZWw9InN0eWxlc2hlZXQiIGhyZWY9ImNzcy9zdHlsZS5jc3MiIC8+DSAgPHN0eWxl' +
          'Pg0gICogew0gICAgLXdlYmtpdC1ib3gtc2l6aW5nOiBib3JkZXItYm94Ow0gICAg' +
          'ICAgICAgICBib3gtc2l6aW5nOiBib3JkZXItYm94Ow0gIH0NICBodG1sLCBib2R5' +
          'IHsNICAgIGJhY2tncm91bmQ6ICNkN2ViZjY7DSAgICBwYWRkaW5nOiAwOw0gICAg' +
          'Ym9yZGVyOiAjMDAwMDAwOw0gICAgd2lkdGg6IDEwMCU7DSAgICBoZWlnaHQ6IDEw' +
          'MCU7DSAgICBtYXJnaW46IDA7DSAgICBwYWRkaW5nOiAwOw0gICAgYm9yZGVyOiBz' +
          'b2xpZCAjMjExYjE5Ow0gICAgYm9yZGVyLXdpZHRoOiB0aGluOw0gICAgb3ZlcmZs' +
          'b3c6aGlkZGVuOw0gICAgZGlzcGxheTpibG9jazsNICB9DSAgI25vdGZvdW5kIHsN' +
          'ICAgIHBvc2l0aW9uOiByZWxhdGl2ZTsNICAgIGhlaWdodDogMTAwdmg7DSAgfQ0g' +
          'ICNub3Rmb3VuZCAubm90Zm91bmQgew0gICAgcG9zaXRpb246IGFic29sdXRlOw0g' +
          'ICAgbGVmdDogNTAlOw0gICAgdG9wOiA1MCU7DSAgICAtd2Via2l0LXRyYW5zZm9y' +
          'bTogdHJhbnNsYXRlKC01MCUsIC01MCUpOw0gICAgICAgIC1tcy10cmFuc2Zvcm06' +
          'IHRyYW5zbGF0ZSgtNTAlLCAtNTAlKTsNICAgICAgICAgICAgdHJhbnNmb3JtOiB0' +
          'cmFuc2xhdGUoLTUwJSwgLTUwJSk7DSAgfQ0gIC5ub3Rmb3VuZCB7DSAgICBtYXgt' +
          'd2lkdGg6IDUyMHB4Ow0gICAgd2lkdGg6IDEwMCU7DSAgICBsaW5lLWhlaWdodDog' +
          'MS40Ow0gICAgdGV4dC1hbGlnbjogY2VudGVyOw0gIH0NICAubm90Zm91bmQgLm5v' +
          'dGZvdW5kLTQwNCB7DSAgICBwb3NpdGlvbjogcmVsYXRpdmU7DSAgICBoZWlnaHQ6' +
          'IDIwMHB4Ow0gICAgbWFyZ2luOiAwcHggYXV0byAyMHB4Ow0gICAgei1pbmRleDog' +
          'LTE7DSAgfQ0gIC5ub3Rmb3VuZCAubm90Zm91bmQtNDA0IGgyIHsNICAgIGZvbnQt' +
          'ZmFtaWx5OiAnTW9udHNlcnJhdCcsIHNhbnMtc2VyaWY7DSAgICBmb250LXNpemU6' +
          'IDI4cHg7DSAgICBmb250LXdlaWdodDogNDAwOw0gICAgdGV4dC10cmFuc2Zvcm06' +
          'IHVwcGVyY2FzZTsNICAgIGNvbG9yOiAjMjExYjE5Ow0gICAgYmFja2dyb3VuZDog' +
          'I2Q3ZWJmNjsNICAgIHBhZGRpbmc6IDEwcHggNXB4Ow0gICAgbWFyZ2luOiBhdXRv' +
          'Ow0gICAgZGlzcGxheTogaW5saW5lLWJsb2NrOw0gICAgcG9zaXRpb246IGFic29s' +
          'dXRlOw0gICAgYm90dG9tOiAwcHg7DSAgICBsZWZ0OiAwOw0gICAgcmlnaHQ6IDA7' +
          'DSAgfQ0gIEBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1heC13aWR0aDogNzY3cHgp' +
          'IHsNICAgIC5ub3Rmb3VuZCAubm90Zm91bmQtNDA0IGgxIHsNICAgICAgZm9udC1z' +
          'aXplOiAxNDhweDsNICAgIH0NICB9DSAgQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAo' +
          'bWF4LXdpZHRoOiA0ODBweCkgew0gICAgLm5vdGZvdW5kIC5ub3Rmb3VuZC00MDQg' +
          'ew0gICAgICBoZWlnaHQ6IDE0OHB4Ow0gICAgICBtYXJnaW46IDBweCBhdXRvIDEw' +
          'cHg7DSAgICB9DSAgICAubm90Zm91bmQgLm5vdGZvdW5kLTQwNCBoMSB7DSAgICAg' +
          'IGZvbnQtc2l6ZTogODZweDsNICAgIH0NICAgIC5ub3Rmb3VuZCAubm90Zm91bmQt' +
          'NDA0IGgyIHsNICAgICAgZm9udC1zaXplOiAxNnB4Ow0gICAgfQ0gICAgLm5vdGZv' +
          'dW5kIGEgew0gICAgICBwYWRkaW5nOiA3cHggMTVweDsNICAgICAgZm9udC1zaXpl' +
          'OiAxNHB4Ow0gICAgfQ0gIH0NIDwvc3R5bGU+DTwvaGVhZD4NPGJvZHk+DSAgPGRp' +
          'diBpZD0ibm90Zm91bmQiPg0gICAgPGRpdiBjbGFzcz0ibm90Zm91bmQiPg0gICAg' +
          'ICA8ZGl2IGNsYXNzPSJub3Rmb3VuZC00MDQiPg0gICAgICAgIDxoMj5FZGdlIENo' +
          'cm9taXVtICBpcyBzdWNjZXNzZnVsbHkgaW5pdGlhbGl6ZWQhDSAgICAgIDwvZGl2' +
          'Pg0gICAgPC9kaXY+DSAgPC9kaXY+DTwvYm9keT4NPC9odG1sPg=='
      end
    end
    object tabCustomerTestMail: TTabSheet
      Caption = 'Test Message'
      ImageIndex = 3
      OnShow = tabCustomerTestMailShow
      object lblMailCustomerCC: TLabel
        Left = 736
        Top = 47
        Width = 16
        Height = 15
        Caption = 'CC'
      end
      object edtMailTestSubject: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 1241
        Height = 23
        Align = alTop
        TabOrder = 0
      end
      object pnlMailTest: TPanel
        Left = 0
        Top = 0
        Width = 1247
        Height = 41
        Align = alTop
        TabOrder = 1
        object lblMailFrom1: TLabel
          Left = 9
          Top = 14
          Width = 44
          Height = 15
          Caption = 'Msg Url:'
        end
        object lblTestMailTo1: TLabel
          Left = 548
          Top = 14
          Width = 43
          Height = 15
          Caption = 'Tiny Url:'
        end
        object edtMsgTestFrom: TEdit
          Left = 59
          Top = 10
          Width = 483
          Height = 23
          TabOrder = 0
          TextHint = 'From'
        end
        object edtTestTinyUrl: TEdit
          Left = 598
          Top = 10
          Width = 281
          Height = 23
          TabOrder = 1
          TextHint = 'recipient@mail.com'
        end
      end
      object pgcTestPreview: TPageControl
        Left = 0
        Top = 70
        Width = 1247
        Height = 747
        ActivePage = tabPagePreview
        Align = alClient
        TabOrder = 2
        object tabPagePreview: TTabSheet
          Caption = 'Preview'
          OnShow = tabPagePreviewShow
          object brwTestMessage: TTMSFNCWebBrowser
            Left = 0
            Top = 0
            Width = 1239
            Height = 717
            Align = alClient
            ParentDoubleBuffered = False
            DoubleBuffered = True
            TabOrder = 0
            URL = 
              'data:text/html;charset=utf-8;base64,PCFET0NUWVBFIGh0bWw+PGh0bWwg' +
              'bGFuZz0iZW4iPjxoZWFkPiAgPG1ldGEgY2hhcnNldD0idXRmLTgiPg0gIDxtZXRh' +
              'IGh0dHAtZXF1aXY9IlgtVUEtQ29tcGF0aWJsZSIgY29udGVudD0iSUU9ZWRnZSI+' +
              'DSAgPG1ldGEgbmFtZT0idmlld3BvcnQiIGNvbnRlbnQ9IndpZHRoPWRldmljZS13' +
              'aWR0aCwgaW5pdGlhbC1zY2FsZT0xIj4NICA8dGl0bGU+NDA0IEhUTUwgVGVtcGxh' +
              'dGUgYnkgQ29sb3JsaWI8L3RpdGxlPg0gIDxsaW5rIGhyZWY9Imh0dHBzOi8vZm9u' +
              'dHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Nb250c2VycmF0OjIwMCw0MDAs' +
              'NzAwIiByZWw9InN0eWxlc2hlZXQiPg0gIDxsaW5rIHR5cGU9InRleHQvY3NzIiBy' +
              'ZWw9InN0eWxlc2hlZXQiIGhyZWY9ImNzcy9zdHlsZS5jc3MiIC8+DSAgPHN0eWxl' +
              'Pg0gICogew0gICAgLXdlYmtpdC1ib3gtc2l6aW5nOiBib3JkZXItYm94Ow0gICAg' +
              'ICAgICAgICBib3gtc2l6aW5nOiBib3JkZXItYm94Ow0gIH0NICBodG1sLCBib2R5' +
              'IHsNICAgIGJhY2tncm91bmQ6ICNkN2ViZjY7DSAgICBwYWRkaW5nOiAwOw0gICAg' +
              'Ym9yZGVyOiAjMDAwMDAwOw0gICAgd2lkdGg6IDEwMCU7DSAgICBoZWlnaHQ6IDEw' +
              'MCU7DSAgICBtYXJnaW46IDA7DSAgICBwYWRkaW5nOiAwOw0gICAgYm9yZGVyOiBz' +
              'b2xpZCAjMjExYjE5Ow0gICAgYm9yZGVyLXdpZHRoOiB0aGluOw0gICAgb3ZlcmZs' +
              'b3c6aGlkZGVuOw0gICAgZGlzcGxheTpibG9jazsNICB9DSAgI25vdGZvdW5kIHsN' +
              'ICAgIHBvc2l0aW9uOiByZWxhdGl2ZTsNICAgIGhlaWdodDogMTAwdmg7DSAgfQ0g' +
              'ICNub3Rmb3VuZCAubm90Zm91bmQgew0gICAgcG9zaXRpb246IGFic29sdXRlOw0g' +
              'ICAgbGVmdDogNTAlOw0gICAgdG9wOiA1MCU7DSAgICAtd2Via2l0LXRyYW5zZm9y' +
              'bTogdHJhbnNsYXRlKC01MCUsIC01MCUpOw0gICAgICAgIC1tcy10cmFuc2Zvcm06' +
              'IHRyYW5zbGF0ZSgtNTAlLCAtNTAlKTsNICAgICAgICAgICAgdHJhbnNmb3JtOiB0' +
              'cmFuc2xhdGUoLTUwJSwgLTUwJSk7DSAgfQ0gIC5ub3Rmb3VuZCB7DSAgICBtYXgt' +
              'd2lkdGg6IDUyMHB4Ow0gICAgd2lkdGg6IDEwMCU7DSAgICBsaW5lLWhlaWdodDog' +
              'MS40Ow0gICAgdGV4dC1hbGlnbjogY2VudGVyOw0gIH0NICAubm90Zm91bmQgLm5v' +
              'dGZvdW5kLTQwNCB7DSAgICBwb3NpdGlvbjogcmVsYXRpdmU7DSAgICBoZWlnaHQ6' +
              'IDIwMHB4Ow0gICAgbWFyZ2luOiAwcHggYXV0byAyMHB4Ow0gICAgei1pbmRleDog' +
              'LTE7DSAgfQ0gIC5ub3Rmb3VuZCAubm90Zm91bmQtNDA0IGgyIHsNICAgIGZvbnQt' +
              'ZmFtaWx5OiAnTW9udHNlcnJhdCcsIHNhbnMtc2VyaWY7DSAgICBmb250LXNpemU6' +
              'IDI4cHg7DSAgICBmb250LXdlaWdodDogNDAwOw0gICAgdGV4dC10cmFuc2Zvcm06' +
              'IHVwcGVyY2FzZTsNICAgIGNvbG9yOiAjMjExYjE5Ow0gICAgYmFja2dyb3VuZDog' +
              'I2Q3ZWJmNjsNICAgIHBhZGRpbmc6IDEwcHggNXB4Ow0gICAgbWFyZ2luOiBhdXRv' +
              'Ow0gICAgZGlzcGxheTogaW5saW5lLWJsb2NrOw0gICAgcG9zaXRpb246IGFic29s' +
              'dXRlOw0gICAgYm90dG9tOiAwcHg7DSAgICBsZWZ0OiAwOw0gICAgcmlnaHQ6IDA7' +
              'DSAgfQ0gIEBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1heC13aWR0aDogNzY3cHgp' +
              'IHsNICAgIC5ub3Rmb3VuZCAubm90Zm91bmQtNDA0IGgxIHsNICAgICAgZm9udC1z' +
              'aXplOiAxNDhweDsNICAgIH0NICB9DSAgQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAo' +
              'bWF4LXdpZHRoOiA0ODBweCkgew0gICAgLm5vdGZvdW5kIC5ub3Rmb3VuZC00MDQg' +
              'ew0gICAgICBoZWlnaHQ6IDE0OHB4Ow0gICAgICBtYXJnaW46IDBweCBhdXRvIDEw' +
              'cHg7DSAgICB9DSAgICAubm90Zm91bmQgLm5vdGZvdW5kLTQwNCBoMSB7DSAgICAg' +
              'IGZvbnQtc2l6ZTogODZweDsNICAgIH0NICAgIC5ub3Rmb3VuZCAubm90Zm91bmQt' +
              'NDA0IGgyIHsNICAgICAgZm9udC1zaXplOiAxNnB4Ow0gICAgfQ0gICAgLm5vdGZv' +
              'dW5kIGEgew0gICAgICBwYWRkaW5nOiA3cHggMTVweDsNICAgICAgZm9udC1zaXpl' +
              'OiAxNHB4Ow0gICAgfQ0gIH0NIDwvc3R5bGU+DTwvaGVhZD4NPGJvZHk+DSAgPGRp' +
              'diBpZD0ibm90Zm91bmQiPg0gICAgPGRpdiBjbGFzcz0ibm90Zm91bmQiPg0gICAg' +
              'ICA8ZGl2IGNsYXNzPSJub3Rmb3VuZC00MDQiPg0gICAgICAgIDxoMj5FZGdlIENo' +
              'cm9taXVtICBpcyBzdWNjZXNzZnVsbHkgaW5pdGlhbGl6ZWQhDSAgICAgIDwvZGl2' +
              'Pg0gICAgPC9kaXY+DSAgPC9kaXY+DTwvYm9keT4NPC9odG1sPg=='
          end
        end
        object tabHtmlPreview: TTabSheet
          Caption = 'Html Preview'
          ImageIndex = 1
          object advmMailHtmlPreview: TAdvMemo
            Left = 0
            Top = 0
            Width = 1239
            Height = 717
            Cursor = crIBeam
            StyleElements = [seBorder]
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -12
            AutoCompletion.Font.Name = 'Segoe UI'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BkColor = clWindow
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Gutter.GutterColorTo = clBtnFace
            Gutter.LineNumberTextColor = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = -16776961
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            TabOrder = 0
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = False
            Version = '3.9.0.1'
            WordWrap = wwNone
          end
        end
        object tabJsonPreview: TTabSheet
          Caption = 'Json Preview'
          ImageIndex = 2
          object advmMailJsonPreview: TAdvMemo
            Left = 0
            Top = 0
            Width = 1239
            Height = 717
            Cursor = crIBeam
            StyleElements = [seBorder]
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -12
            AutoCompletion.Font.Name = 'Segoe UI'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BkColor = clWindow
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Gutter.GutterColorTo = clBtnFace
            Gutter.LineNumberTextColor = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = -16776961
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            TabOrder = 0
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = False
            Version = '3.9.0.1'
            WordWrap = wwNone
          end
        end
      end
    end
    object tabAdvanced: TTabSheet
      Caption = 'Advanced'
      ImageIndex = 6
      object pgAdvanced: TPageControl
        Left = 0
        Top = 0
        Width = 902
        Height = 817
        ActivePage = tabAdvancedHtml
        Align = alClient
        TabOrder = 0
        StyleElements = [seBorder]
        object tabAdvancedHtml: TTabSheet
          Caption = 'Html'
          object advmMailHtml: TAdvMemo
            Left = 0
            Top = 0
            Width = 894
            Height = 787
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -12
            AutoCompletion.Font.Name = 'Segoe UI'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BkColor = clWindow
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderColor = 10724259
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Gutter.BorderColor = 10724259
            Gutter.GutterColor = clWhite
            Gutter.GutterColorTo = clBtnFace
            Gutter.LineNumberTextColor = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = -16776961
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = astHtml
            TabOrder = 0
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '3.9.0.1'
            WordWrap = wwNone
          end
        end
        object tabAdvancedJson: TTabSheet
          Caption = 'Json'
          ImageIndex = 1
          object advmMailJson: TAdvMemo
            Left = 0
            Top = 0
            Width = 894
            Height = 787
            Cursor = crIBeam
            StyleElements = [seBorder]
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -12
            AutoCompletion.Font.Name = 'Segoe UI'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BkColor = clWindow
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderColor = 10724259
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Gutter.BorderColor = 10724259
            Gutter.GutterColor = clWhite
            Gutter.GutterColorTo = clBtnFace
            Gutter.LineNumberTextColor = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = -16776961
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            TabOrder = 0
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = False
            Version = '3.9.0.1'
            WordWrap = wwNone
          end
        end
        object tabAdvancedLog: TTabSheet
          Caption = 'Log'
          ImageIndex = 2
          object advmLogMessage: TAdvMemo
            Left = 0
            Top = 0
            Width = 894
            Height = 787
            Cursor = crIBeam
            StyleElements = [seBorder]
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -12
            AutoCompletion.Font.Name = 'Segoe UI'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BkColor = clWindow
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderColor = 10724259
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Gutter.BorderColor = 10724259
            Gutter.GutterColor = clWhite
            Gutter.GutterColorTo = clBtnFace
            Gutter.LineNumberTextColor = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = -16776961
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            TabOrder = 0
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '3.9.0.1'
            WordWrap = wwNone
          end
        end
      end
      object dbgrdParams: TDBGrid
        Left = 902
        Top = 0
        Width = 345
        Height = 817
        Align = alRight
        DataSource = dsParams
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'key'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Value'
            Width = 280
            Visible = True
          end>
      end
    end
  end
  object pnlLists: TPanel
    Left = 0
    Top = 81
    Width = 185
    Height = 847
    Align = alLeft
    TabOrder = 2
    OnClick = pnlListsClick
    object spl2: TSplitter
      Left = 1
      Top = 513
      Width = 183
      Height = 8
      Cursor = crVSplit
      Align = alTop
    end
    object edLabelTag: TEdit
      Left = 1
      Top = 1
      Width = 183
      Height = 23
      Align = alTop
      TabOrder = 0
      Text = 'edLabelTag'
    end
    object lst1: TListBox
      Left = 1
      Top = 24
      Width = 183
      Height = 489
      Align = alTop
      ItemHeight = 15
      TabOrder = 1
      OnClick = lst1Click
    end
    object lst2: TListBox
      Left = 1
      Top = 521
      Width = 183
      Height = 325
      Align = alClient
      ItemHeight = 15
      TabOrder = 2
      OnClick = lst2Click
    end
  end
  object grdMaster: TDBGrid
    Left = 0
    Top = 928
    Width = 1440
    Height = 72
    Align = alBottom
    DataSource = dsMaster
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object fdmParams: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 580
    Top = 267
    object fldParamskey: TStringField
      FieldName = 'key'
      Size = 128
    end
    object fldParamsValue: TStringField
      FieldName = 'Value'
      Size = 512
    end
  end
  object dsParams: TDataSource
    DataSet = fdmParams
    Left = 564
    Top = 331
  end
  object astHtml: TAdvHTMLMemoStyler
    AutoFormat = False
    LineComment = '//'
    MultiCommentLeft = '<!--'
    MultiCommentRight = '-->'
    CommentStyle.TextColor = clSilver
    CommentStyle.BkColor = clNone
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clBlack
    NumberStyle.BkColor = clNone
    NumberStyle.Style = []
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          '&lt'
          'ABREV'
          'ACRONYM'
          'ADDRESS'
          'APPLET'
          'AREA'
          'AU'
          'AUTHOR'
          'B'
          'BANNER'
          'BASE'
          'BASEFONT'
          'BGSOUND'
          'BIG'
          'BLINK'
          'BLOCKQUOTE'
          'BODY'
          'BQ'
          'BR'
          'CAPTION'
          'CENTER'
          'CITE'
          'CODE'
          'COL'
          'COLGROUP'
          'COMMENT'
          'CREDIT'
          'DEL'
          'DFN'
          'DIR'
          'DIV'
          'DL'
          'DT'
          'DD'
          'EM'
          'EMBED'
          'FIG'
          'FN'
          'FONT'
          'FORM'
          'FRAME'
          'FRAMESET'
          'HEAD'
          'H1'
          'H2'
          'H3'
          'H4'
          'H5'
          'H6'
          'HR'
          'HTML'
          'I'
          'IFRAME'
          'IMG'
          'INPUT'
          'INS'
          'ISINDEX'
          'KBD'
          'LANG'
          'LH'
          'LI'
          'LINK'
          'LISTING'
          'MAP'
          'MARQUEE'
          'MATH'
          'MENU'
          'META'
          'MULTICOL'
          'NOBR'
          'NOFRAMES'
          'NOTE'
          'OL'
          'OVERLAY'
          'P'
          'PARAM'
          'PERSON'
          'PLAINTEXT'
          'PRE'
          'Q'
          'RANGE'
          'SAMP'
          'SCRIPT'
          'SELECT'
          'SMALL'
          'SPACER'
          'SPOT'
          'STRIKE'
          'STRONG'
          'SUB'
          'SUP'
          'TAB'
          'TBODY'
          'TEXTAREA'
          'TEXTFLOW'
          'TFOOT'
          'TH'
          'THEAD'
          'TITLE'
          'TT'
          'U'
          'UL'
          'VAR'
          'WBR'
          'XMP'
          'DOCTYPE'
          'PUBLIC')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Standard Default'
      end
      item
        KeyWords.Strings = (
          'TABLE'
          'BORDER'
          'TD'
          'TR'
          'STYLE'
          'BORDERCOLOR'
          'WIDTH'
          'ID'
          'BORDERCOLORLIGHT'
          'BORDERCOLORDARK')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Table Keywords'
      end
      item
        KeyWords.Strings = (
          'A'
          'HREF')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Link Keywords'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Bracket'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Bracket'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.()[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'Web pages'
    Filter = 'HTML Document (*.htm,*.html)|*.htm;*.html'
    DefaultExtension = '.html'
    StylerName = 'HTML document'
    Extensions = 'htm;html'
    RegionDefinitions = <
      item
        Identifier = '<BODY>'
        RegionStart = '<BODY>'
        RegionEnd = '</BODY>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<HEAD>'
        RegionStart = '<HEAD>'
        RegionEnd = '</HEAD>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<HTML>'
        RegionStart = '<HTML>'
        RegionEnd = '</HTML>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<SCRIPT>'
        RegionStart = '<SCRIPT>'
        RegionEnd = '</SCRIPT>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<STYLE>'
        RegionStart = '<STYLE>'
        RegionEnd = '</STYLE>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<FORM>'
        RegionStart = '<FORM>'
        RegionEnd = '</FORM>'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 252
    Top = 326
  end
  object astJson: TAdvJSONMemoStyler
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'NULL'
          'TRUE'
          'FALSE')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'JSON Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ',:(){}[]='
        Info = 'Symbols'
      end>
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    HexIdentifier = '0x'
    Description = 'JSON'
    Filter = 'JSON Files (*.json)|*.json'
    DefaultExtension = '.json'
    StylerName = 'JSON'
    Extensions = 'json'
    RegionDefinitions = <
      item
        Identifier = '{'
        RegionStart = '{'
        RegionEnd = '}'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 252
    Top = 533
  end
  object dsMaster: TDataSource
    Left = 260
    Top = 411
  end
end
