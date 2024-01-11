unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniURLFrame,
  ServerModule;

type
  TUniForm1 = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniButton1: TUniButton;
    procedure UniFormBeforeShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ID, RepName: string;
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, frDataModule;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.UniButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TUniForm1.UniFormBeforeShow(Sender: TObject);
var
  dm : TfrDM;
  PdfUrl : string;
begin
  dm := TfrDM.Create(nil);
  try
    PdfUrl := dm.GenReportPDF(RepName, Id)
  finally
    dm.Free;
  end;

  UniURLFrame1.URL := PdfUrl;
end;

end.
