unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniFieldSet,
  uniDBEdit, uniEdit;

type
  TUniForm1 = class(TUniForm)
    UniFieldSet1: TUniFieldSet;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBNumberEdit1: TUniDBNumberEdit;
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DB;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrOK then
  begin
    if UniMainModule.DataSource1.DataSet.State in dsEditModes then
      UniMainModule.DataSource1.DataSet.Post;
  end
  else if UniMainModule.DataSource1.DataSet.State in dsEditModes then
    UniMainModule.DataSource1.DataSet.Cancel;
end;

end.
