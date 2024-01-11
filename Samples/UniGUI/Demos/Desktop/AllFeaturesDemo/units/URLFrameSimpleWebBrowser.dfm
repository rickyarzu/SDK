object UniURLFrameSimpleWebBrowser: TUniURLFrameSimpleWebBrowser
  Left = 0
  Top = 0
  Width = 925
  Height = 553
  TabOrder = 0
  ParentRTL = False
  object UniMainContainer: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 553
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 12
    ExplicitTop = 13
    ExplicitWidth = 1033
    ExplicitHeight = 670
    object UniPageControl1: TUniPageControl
      Left = 0
      Top = 0
      Width = 925
      Height = 553
      Hint = ''
      ActivePage = UniTabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1033
      ExplicitHeight = 670
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'New Tab'
        ExplicitWidth = 1025
        ExplicitHeight = 642
        object UniURLFrame1: TUniURLFrame
          Left = 0
          Top = 22
          Width = 917
          Height = 503
          Hint = ''
          Align = alClient
          TabOrder = 0
          ParentColor = False
          Color = clBtnFace
          ExplicitWidth = 1025
          ExplicitHeight = 620
        end
        object UniComboBox1: TUniComboBox
          Left = 0
          Top = 0
          Width = 917
          Hint = ''
          Text = 'http://'
          Items.Strings = (
            'http://www.unigui.com'
            'http://forums.unigui.com')
          Align = alTop
          TabOrder = 1
          ClearButton = True
          Triggers = <
            item
              ImageIndex = 0
              ButtonId = 0
              HandleClicks = True
            end
            item
              ImageIndex = 1
              ButtonId = 1
              HandleClicks = True
            end>
          Images = UniNativeImageList1
          HideDefaultTrigger = False
          IconItems = <>
          OnSelect = UniComboBox1Select
          OnKeyDown = UniComboBox1KeyDown
          OnTriggerEvent = UniComboBox1TriggerEvent
          ExplicitWidth = 1025
        end
      end
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 328
    Top = 275
    Images = {
      02000000FFFFFF1F04E400000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF61000000097048597300000EC300000EC301C7
      6FA8640000009649444154388DED92B10D8340100417CB05E04EDC022D7CE612
      9CEE4B14E1E0534AA00C922FC09D4007EB04AC93398C3F20F3A4FBDABB1F1D30
      D3F69DDABE130A397F0B49DAC2094093527ADA37D5D6D4C7ED5E497A673146B7
      E454B26E08A1063090BCAE42CF810C2425493967911C9712D7815DDD327F0300
      6A0003808BBBAA7E6011BC72F0617E972289FF82830ADC433207733C2F310A6A
      A478DCE1250000000049454E44AE426082FFFFFF1F044E01000089504E470D0A
      1A0A0000000D49484452000000100000001008060000001FF3FF610000000970
      48597300000EC300000EC301C76FA8640000010049444154388DA59231728330
      10451F99345C81CABE0947704B072554B698910B8A242D054E2AB9834E2E7383
      7083F8083E426EA0148819C5968D66F22B69F5F566F557F04F45F34208611EF8
      86AEEB8A87242184F14908619AA6314288DE77EF29A4CDAAAA88E338F7418200
      4992DC853C8700EABA76B739709BC7BD0CACBE8D311B1F3CA483218AA2426A95
      4AAD5E6DED027C028725C0797F3AEEA4565F407A75F602AC9642DC59630AFC30
      BD7D0D0CC00A16A6B03F1DCFC07686B5593958607E63F685B8D01D1010A2D4CA
      050D6D561652AB1CE883008EDE810F7BF930D7FE00AE3E8CAB0B53165BA73602
      6F91CFED4A6AD5334D63834D1E18DBAC1C017E0139108D089AEA5AE800000000
      49454E44AE426082}
  end
end
