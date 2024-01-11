unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniURLFrame,
  uniBasicGrid, uniDBGrid, pngimage;

type
  TUniForm1 = class(TUniForm)
    UniButton1: TUniButton;
    UniURLFrame1: TUniURLFrame;
    procedure UniFormBeforeShow(Sender: TObject);
  private
    { Private declarations }
  public
    InvNum: string;
    { Public declarations }
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, rpDM, ServerModule;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;


procedure TUniForm1.UniFormBeforeShow(Sender: TObject);
var
  dm : TrepDataModule;
begin
  dm := TrepDataModule.Create(nil);
  try
    UniURLFrame1.URL := dm.GenRep(InvNum)
  finally
    dm.Free;
  end;
end;

end.
