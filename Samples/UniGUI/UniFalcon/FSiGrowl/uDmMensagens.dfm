object dmMensagens: TdmMensagens
  OldCreateOrder = False
  Height = 421
  Width = 726
  object FSiGrowlComp: TUniFSiGrowl
    Messages = 'Hello World!'
    Types = Notice_Sat
    AlertSize = Regular
    Icon = linecons_lab
    UrlImage = 
      'http://www.falconsistemas.com.br/assets/images/falcon_sistemas_3' +
      '6.png'
    Delay = 2500
    Spacing = 20
    OffsetX = 20
    OffsetY = 20
    EnableAnimation = True
    EnterAnimation = fadeInDown
    ExitAnimation = bounceOut
    PlacementX = center
    PlacementY = top
    Left = 344
    Top = 200
  end
end
