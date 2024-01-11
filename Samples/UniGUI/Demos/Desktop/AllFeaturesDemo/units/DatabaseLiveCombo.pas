// Live Combo = Database
unit DatabaseLiveCombo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniMultiItem, uniComboBox,
  uniGUIBaseClasses, uniPanel, MainModule, DB, ServerModule, DBClient;

type
  TUniDatabaseLiveCombo = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniComboBox1: TUniComboBox;
    UniLabel1: TUniLabel;
    ClientDataSet1: TClientDataSet;
    procedure UniComboBox1RemoteQuery(const QueryString: string;
      Result: TStrings);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}



procedure TUniDatabaseLiveCombo.UniComboBox1RemoteQuery(const QueryString: string;
  Result: TStrings);
begin
  if Trim(QueryString)='' then Exit;

  ClientDataSet1.Filter:='country LIKE ''%'+QueryString+'%''';

   ClientDataSet1.First;
  while not  ClientDataSet1.Eof do
  begin
    Result.Add( ClientDataSet1.FieldByName('country').AsString);
     ClientDataSet1.Next;
  end;
end;

procedure TUniDatabaseLiveCombo.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Country.cds');

  ClientDataSet1.FilterOptions := [foCaseInsensitive];
  ClientDataSet1.Filtered := True;

  (OwnerForm as TUniForm).ActiveControl := UniComboBox1;
end;

initialization
  RegisterClass(TUniDatabaseLiveCombo);

end.
