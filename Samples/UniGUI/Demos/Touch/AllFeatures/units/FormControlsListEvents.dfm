object UniFormControlsListEvents: TUniFormControlsListEvents
  Left = 0
  Top = 0
  Width = 320
  Height = 333
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 333
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimList1: TUnimList
      Left = 35
      Top = 3
      Width = 254
      Height = 310
      Hint = ''
      Items.Strings = (
        'Click'
        'Hold'
        'Double Click'
        'Disclosure'
        'Select'
        'Swipe')
      DisclosureIcon = True
      OnDisclose = UnimList1Disclose
      OnSelect = UnimList1Select
      OnSwipe = UnimList1Swipe
      OnClick = UnimList1Click
      OnClickHold = UnimList1ClickHold
      OnDblClick = UnimList1DblClick
    end
  end
end
