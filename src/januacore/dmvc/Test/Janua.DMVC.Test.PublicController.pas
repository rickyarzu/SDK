unit Janua.DMVC.Test.PublicController;

interface

uses
  MVCFramework, MVCFramework.Commons;

type
  [MVCPath('/test')]
  TPublicController = class(TMVCController)
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index(const vInput: string = 'Ciccio');
  end;

implementation

uses
  System.SysUtils;

procedure TPublicController.Index(const vInput: string );
begin
  { we are going to produce simple text.
    let's inform the client about the format
    of the body response format }
  ContentType := TMVCMediaType.TEXT_PLAIN;
  { Render a simple string }
  Render('Hello ' + vInput + ' It''s ' + TimeToStr(Time) + ' in DMVCFrameworkland');
end;

end.
