object UniScrollBoxScrollBox: TUniScrollBoxScrollBox
  Left = 0
  Top = 0
  Width = 804
  Height = 538
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    804
    538)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 798
    Height = 532
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      798
      532)
    object UniScrollBox1: TUniScrollBox
      Left = 56
      Top = 80
      Width = 393
      Height = 345
      Hint = ''
      Anchors = []
      TabOrder = 0
      DesignSize = (
        391
        343)
      object UniButton1: TUniButton
        Left = 16
        Top = 497
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'UniButton1'
        Anchors = []
        TabOrder = 0
      end
      object UniButton2: TUniButton
        Left = 497
        Top = 16
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'UniButton2'
        Anchors = []
        TabOrder = 1
      end
      object UniButton3: TUniButton
        Left = 24
        Top = 16
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'UniButton3'
        Anchors = []
        TabOrder = 2
      end
      object UniDBGrid1: TUniDBGrid
        Left = 310
        Top = 232
        Width = 320
        Height = 160
        Hint = ''
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        Anchors = []
        TabOrder = 3
      end
    end
    object UniScrollBox2: TUniScrollBox
      Left = 480
      Top = 80
      Width = 241
      Height = 345
      Hint = ''
      Anchors = []
      Color = 14221232
      TabOrder = 1
      DesignSize = (
        239
        343)
      object UniBitBtn1: TUniBitBtn
        Left = 75
        Top = 497
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'UniBitBtn1'
        Anchors = []
        TabOrder = 0
      end
    end
  end
end
