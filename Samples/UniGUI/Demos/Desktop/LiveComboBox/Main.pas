//AllFeatures: Combobox,Live Combobox,icon-custom-template-combo
unit Main;

interface

uses
  MidasLib, Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniMultiItem, uniComboBox,
  uniLabel, DB, DBClient;

type
  TMainForm = class(TUniForm)
    UniComboBox1: TUniComboBox;
    UniLabel1: TUniLabel;
    ClientDataSet1: TClientDataSet;
    UniLabel2: TUniLabel;
    procedure UniComboBox1RemoteQuery(const QueryString: string;
      Result: TStrings);
    procedure UniComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniComboBox1RemoteQuery(const QueryString: string;
  Result: TStrings);
var
  I: Integer;
begin
  if Trim(QueryString)='' then Exit;

  ClientDataSet1.Filter:='country LIKE ''%'+QueryString+'%''';

  ClientDataSet1.First;
  while not ClientDataSet1.Eof do
  begin
    Result.Add(ClientDataSet1.FieldByName('country').AsString);
    ClientDataSet1.Next;
  end;
end;

procedure TMainForm.UniComboBox1Select(Sender: TObject);
begin
  UniLabel2.Text := UniComboBox1.Text;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
