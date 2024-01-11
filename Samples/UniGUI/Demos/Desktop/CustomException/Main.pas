//AllFeatures: Miscellaneous,Custom Exception,icon-webdesktop
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Grids, DBGrids, uniDBGrid,
  StdCtrls, UniButton, uniGUIBaseClasses, uniGUIRegClasses,  uniguiclasses, UniBasicGrid;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  PByte(0)^ := 0;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  raise Exception.Create('Custom exception raised');
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  TMainForm.Create(nil);
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  UniMainModule.ClientDataSet1.FieldByName('BugsBunny').AsString := 'Carrot';
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
