// Infinite Scroll = Grids
unit GridsInfiniteScroll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, DB,
  DBClient, uniLabel, uniBasicGrid, uniDBGrid, uniStrUtils;

type
  TUniGridsInfiniteScroll = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ServerModule;



procedure TUniGridsInfiniteScroll.UniFrameCreate(Sender: TObject);
var
  F : TFileStream;
  FolderPath : string;
begin
  FolderPath := TranslateFullPath(UniServerModule.StartPath, '..\..\CommonData\');

  F := TFileStream.Create(FolderPath + 'EmployeeLarge.cds', fmShareDenyNone);
  try
    ClientDataSet1.LoadFromStream(F);
  finally
    F.Free;
  end;
  UniLabel1.Caption := 'Total Records: ' + IntToStr(ClientDataSet1.RecordCount);
end;

initialization
  RegisterClass(TUniGridsInfiniteScroll);
end.
