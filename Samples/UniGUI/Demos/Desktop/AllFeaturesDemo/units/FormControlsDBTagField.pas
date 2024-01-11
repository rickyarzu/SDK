// TagField - DB = Form Controls
unit FormControlsDBTagField;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, DB,
  DBClient, uniDBNavigator, uniMultiItem, uniListBox, uniDBListBox,
  uniBasicGrid, uniDBGrid;

type
  TUniFormControlsDBTagField = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBTagField1: TUniDBTagField;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1TextField: TStringField;
    DataSource1: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsDBTagField.UniFrameCreate(Sender: TObject);
begin
  ClientDataSet1.Append;
  ClientDataSet1TextField.AsString := 'Banana';
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1TextField.AsString := 'Banana;Apple';
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1TextField.AsString := 'Orange;Banana;Apple';
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1TextField.AsString := 'Apple';
  ClientDataSet1.Post;

  ClientDataSet1.First;
end;

initialization
  RegisterClass(TUniFormControlsDBTagField);

end.
