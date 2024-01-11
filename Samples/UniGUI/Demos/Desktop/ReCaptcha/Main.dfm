object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 299
  ClientWidth = 635
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniReCAPTCHA1: TUniReCAPTCHA
    Left = 144
    Top = 96
    Width = 321
    Height = 105
    Hint = ''
    SiteKey = '6LewzxMUAAAAAFwoZuz5RO51vMVooezQ78fO3eKQ'
    SecretKey = '6LewzxMUAAAAAGgVp1xYzgdoOmuSA1NjHxNPTmjg'
    OnVerified = UniReCAPTCHA1Verified
  end
end
