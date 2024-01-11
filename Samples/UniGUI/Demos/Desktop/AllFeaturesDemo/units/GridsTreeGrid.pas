// TreeGrid = Grids
unit GridsTreeGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniButton, uniBitBtn,
  uniEdit, uniDateTimePicker, uniPanel, uniDBEdit, uniDBNavigator, uniImage,
  uniDBImage, uniBasicGrid, uniDBGrid, uniDBTreeGrid, uniGUIBaseClasses;

type
  TUniGridsTreeGrid = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBTreeGrid1: TUniDBTreeGrid;
    UniDBTreeGrid2: TUniDBTreeGrid;
    UniDBImage1: TUniDBImage;
    UniDBNavigator1: TUniDBNavigator;
    UniDBEdit1: TUniDBEdit;
    UniHiddenPanel1: TUniHiddenPanel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniEdit1: TUniEdit;
    UniHiddenPanel2: TUniHiddenPanel;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    UniBitBtn1: TUniBitBtn;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1Company: TStringField;
    ClientDataSet1Addr1: TStringField;
    ClientDataSet1Addr2: TStringField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    ClientDataSet1Zip: TStringField;
    ClientDataSet1Country: TStringField;
    ClientDataSet1Phone: TStringField;
    ClientDataSet1FAX: TStringField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Contact: TStringField;
    ClientDataSet1LastInvoiceDate: TDateTimeField;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2Id: TIntegerField;
    ClientDataSet2ParentId: TIntegerField;
    ClientDataSet2Country: TStringField;
    ClientDataSet2Capital: TBooleanField;
    ClientDataSet2Population: TIntegerField;
    ClientDataSet2image: TGraphicField;
    DataSource2: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TUniGridsTreeGrid.UniBitBtn1Click(Sender: TObject);
begin
  UniDBTreeGrid2.FullExpand;
end;

procedure TUniGridsTreeGrid.UniFrameCreate(Sender: TObject);
var
  ImagesPath : string;
begin
  ImagesPath := UniServerModule.FilesFolderPath + 'images\';

  with ClientDataSet2 do
  begin
    Append;
    FieldByName('Id').AsInteger := 1;
    FieldByName('ParentId').AsInteger := 0;
    FieldByName('Population').AsInteger := 126000000;
    FieldByName('Name').AsString := 'Japan';
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'japan.png');
    Post;

    Append;
    FieldByName('Id').AsInteger := 2;
    FieldByName('ParentId').AsInteger := 0;
    FieldByName('Population').AsInteger := 82000000;
    FieldByName('Name').AsString := 'Germany';
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'de.png');
    Post;

    Append;
    FieldByName('Id').AsInteger := 3;
    FieldByName('ParentId').AsInteger := 0;
    FieldByName('Population').AsInteger := 79000000;
    FieldByName('Name').AsString := 'Turkey';
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'turkiye.png');
    Post;

    Append;
    FieldByName('Id').AsInteger := 4;
    FieldByName('ParentId').AsInteger := 1;
    FieldByName('Name').AsString := 'Tokyo';
    FieldByName('Population').AsInteger := 13620000;
    FieldByName('Capital').AsBoolean := True;
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'tokyo.png');
    Post;

    Append;
    FieldByName('Id').AsInteger := 5;
    FieldByName('ParentId').AsInteger := 2;
    FieldByName('Name').AsString := 'Berlin';
    FieldByName('Population').AsInteger := 3670000;
    FieldByName('Capital').AsBoolean := True;
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'berlin.jpg');
    Post;

    Append;
    FieldByName('Id').AsInteger := 6;
    FieldByName('ParentId').AsInteger := 3;
    FieldByName('Name').AsString := 'Ankara';
    FieldByName('Population').AsInteger := 5270000;
    FieldByName('Capital').AsBoolean := True;
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'ankara.png');
    Post;

    Append;
    FieldByName('Id').AsInteger := 7;
    FieldByName('ParentId').AsInteger := 6;
    FieldByName('Name').AsString := 'Çankaya';
    FieldByName('Population').AsInteger := 1200000;
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'cankaya.jpg');
    Post;

    Append;
    FieldByName('Id').AsInteger := 8;
    FieldByName('ParentId').AsInteger := 0;
    FieldByName('Population').AsInteger := 324000000;
    FieldByName('Name').AsString := 'US';
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'US.png');
    Post;

    Append;
    FieldByName('Id').AsInteger := 9;
    FieldByName('ParentId').AsInteger := 8;
    FieldByName('Name').AsString := 'Seattle';
    FieldByName('Population').AsInteger := 608000;
    TBlobField(FieldByName('image')).LoadFromFile(ImagesPath + 'seattle.jpg');
    Post;

    First;
  end;
end;

initialization
  RegisterClass(TUniGridsTreeGrid);
end.
