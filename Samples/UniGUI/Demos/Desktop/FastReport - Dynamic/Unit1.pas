unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, DB, uniGUIBaseClasses, uniURLFrame,
  unimURLFrame, ServerModule, uniButton;

type
  TUniForm1 = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    InvNum: string;
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
  RepUrl : string;
begin
  dm := TfrDM.Create(nil);
  try
    RepUrl := dm.GenReportPDF(InvNum);
  finally
    dm.Free;
  end;

  UniURLFrame1.URL := RepUrl;
end;

end.
