object UniFormWithParentPanelFrameFormWithParent: TUniFormWithParentPanelFrameFormWithParent
  Left = 0
  Top = 0
  Width = 540
  Height = 473
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 473
    Hint = ''
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    TitleVisible = True
    Title = 'UniPanel'
    Caption = 'UniPanel1'
    Layout = 'fit'
  end
  inline UniFrame31: TUniFrame3
    Left = 256
    Top = 0
    Width = 284
    Height = 473
    Layout = 'fit'
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitLeft = 256
    ExplicitWidth = 284
    ExplicitHeight = 473
  end
end
