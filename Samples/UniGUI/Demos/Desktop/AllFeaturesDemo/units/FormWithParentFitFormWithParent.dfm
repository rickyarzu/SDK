object UniFormWithParentFitFormWithParent: TUniFormWithParentFitFormWithParent
  Left = 0
  Top = 0
  Width = 520
  Height = 403
  OnCreate = UniFrameCreate
  Layout = 'fit'
  LayoutConfig.BodyPadding = '15'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  DesignSize = (
    520
    403)
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 520
    Height = 403
    Hint = ''
    Anchors = []
    TabOrder = 0
    BorderStyle = ubsSolid
    TitleVisible = True
    Title = 'UniPanel'
    Caption = 'UniPanel1'
    Layout = 'fit'
  end
end
