// Client Info = Miscellaneous
unit MiscellaneousClientInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniPanel;

type
  TUniMiscellaneousClientInfo = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}



procedure TUniMiscellaneousClientInfo.UniFrameCreate(Sender: TObject);
var
  C : TUniClientInfoRec;
begin
  UniLabel7.Caption:=UniApplication.RemoteAddress;

  C:=UniApplication.ClientInfoRec;

  UniLabel6.Caption:=C.BrowserType;
  UniLabel4.Caption:=IntToStr(C.BrowserVersion);
  UniLabel5.Caption:=C.OSType;
end;

initialization
  RegisterClass(TUniMiscellaneousClientInfo);

end.
