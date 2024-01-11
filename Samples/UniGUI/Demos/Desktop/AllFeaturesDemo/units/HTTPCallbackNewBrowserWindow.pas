// New Browser Window= HTTP Callback
unit HTTPCallbackNewBrowserWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel, ServerModule,
  MainModule;

type
  TUniHTTPCallbackNewBrowserWindow = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniHTTPCallbackNewBrowserWindow.UniButton1Click(Sender: TObject);
var
  AUrl, CancelUrl, SubmitUrl : string;
begin
  SubmitUrl:=UniSession.CallbackUrlEx('mybrowsercallback', UniMainModule.Main , ['RES', 'OK'], True, True);
  CancelUrl:=UniSession.CallbackUrlEx('mybrowsercallback',  UniMainModule.Main , ['RES', 'CANCEL'], True, True);
  AUrl := UniServerModule.FilesFolderURL+'sim.html';
  AUrl := AUrl + '?submitUrl='+SubmitUrl+'&cancelUrl='+CancelUrl;
  UniSession.BrowserWindow(AUrl, 400, 300, '_blank');
end;

initialization
  RegisterClass(TUniHTTPCallbackNewBrowserWindow);
end.
