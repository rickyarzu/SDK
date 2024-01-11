unit udlgDatasetFields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids,
  DBGrids;

type
  TdlgDatasetFields = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1FIELDNAME: TStringField;
    ClientDataSet1FIELDDESC: TStringField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgDatasetFields: TdlgDatasetFields;

implementation

{$R *.dfm}

end.


