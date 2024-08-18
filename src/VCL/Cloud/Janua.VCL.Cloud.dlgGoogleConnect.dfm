object dlgVclCloudGoogleConnect: TdlgVclCloudGoogleConnect
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Google Connections'
  ClientHeight = 275
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object SVGIconImage1: TSVGIconImage
    Left = 64
    Top = 24
    Width = 281
    Height = 225
    AutoSize = False
    SVGText = 
      '<?xml version="1.0" encoding="iso-8859-1"?>'#13#10'<!-- Generator: Ado' +
      'be Illustrator 19.0.0, SVG Export Plug-In . SVG Version: 6.00 Bu' +
      'ild 0)  -->'#13#10'<svg version="1.1" id="Layer_1" xmlns="http://www.w' +
      '3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0p' +
      'x" y="0px"'#13#10#9' viewBox="0 0 512 512" style="enable-background:new' +
      ' 0 0 512 512;" xml:space="preserve">'#13#10'<path style="fill:#167EE6;' +
      '" d="M492.668,211.489l-208.84-0.01c-9.222,0-16.697,7.474-16.697,' +
      '16.696v66.715'#13#10#9'c0,9.22,7.475,16.696,16.696,16.696h117.606c-12.8' +
      '78,33.421-36.914,61.41-67.58,79.194L384,477.589'#13#10#9'c80.442-46.523' +
      ',128-128.152,128-219.53c0-13.011-0.959-22.312-2.877-32.785C507.6' +
      '65,217.317,500.757,211.489,492.668,211.489z"/>'#13#10'<path style="fil' +
      'l:#12B347;" d="M256,411.826c-57.554,0-107.798-31.446-134.783-77.' +
      '979l-86.806,50.034'#13#10#9'C78.586,460.443,161.34,512,256,512c46.437,0' +
      ',90.254-12.503,128-34.292v-0.119l-50.147-86.81'#13#10#9'C310.915,404.08' +
      '3,284.371,411.826,256,411.826z"/>'#13#10'<path style="fill:#0F993E;" d' +
      '="M384,477.708v-0.119l-50.147-86.81c-22.938,13.303-49.48,21.047-' +
      '77.853,21.047V512'#13#10#9'C302.437,512,346.256,499.497,384,477.708z"/>' +
      #13#10'<path style="fill:#FFD500;" d="M100.174,256c0-28.369,7.742-54.' +
      '91,21.043-77.847l-86.806-50.034C12.502,165.746,0,209.444,0,256'#13#10 +
      #9's12.502,90.254,34.411,127.881l86.806-50.034C107.916,310.91,100.' +
      '174,284.369,100.174,256z"/>'#13#10'<path style="fill:#FF4B26;" d="M256' +
      ',100.174c37.531,0,72.005,13.336,98.932,35.519c6.643,5.472,16.298' +
      ',5.077,22.383-1.008'#13#10#9'l47.27-47.27c6.904-6.904,6.412-18.205-0.96' +
      '3-24.603C378.507,23.673,319.807,0,256,0C161.34,0,78.586,51.557,3' +
      '4.411,128.119'#13#10#9'l86.806,50.034C148.202,131.62,198.446,100.174,25' +
      '6,100.174z"/>'#13#10'<path style="fill:#D93F21;" d="M354.932,135.693c6' +
      '.643,5.472,16.299,5.077,22.383-1.008l47.27-47.27'#13#10#9'c6.903-6.904,' +
      '6.411-18.205-0.963-24.603C378.507,23.672,319.807,0,256,0v100.174' +
      'C293.53,100.174,328.005,113.51,354.932,135.693z"/>'#13#10'<g>'#13#10'</g>'#13#10'<' +
      'g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13 +
      #10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g' +
      '>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'</svg>'
  end
  object AdvGCalendar1: TAdvGCalendar
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'google_janua'
    Scopes.Strings = (
      'https://www.googleapis.com/auth/calendar')
    OnReceivedAccessToken = AdvGCalendar1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Calendars = <>
    Items = <>
    Left = 186
    Top = 128
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer1Timer
    Left = 368
    Top = 120
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer2Timer
    Left = 368
    Top = 56
  end
end
