unit UmyCloudDataUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvUtil, Grids, AdvObj, BaseGrid, AdvGrid, CloudBase, CloudBaseWin,
  CloudCustomDataStore, CloudCustomMyCloudData, CloudMyCloudData, StdCtrls;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvMyCloudData1: TAdvMyCloudData;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure AdvMyCloudData1Connected(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{$I TMSAPPIDS.INC}

procedure TForm2.AdvMyCloudData1Connected(Sender: TObject);
begin
  //
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  i,r: integer;
begin
  AdvMyCloudData1.GetUsers;

  AdvStringGrid1.RowCount := AdvMyCloudData1.Users.Count + 1;
  AdvStringGrid1.ColCount := 5;


  for i := 0 to AdvMyCloudData1.Users.Count - 1 do
  begin
    r := i + 1;
    advstringgrid1.Cells[0, r] := inttostr(r);
    advstringgrid1.Cells[1, r] := AdvMyCloudData1.Users[i].FirstName + ' ' + AdvMyCloudData1.Users[i].LastName;
    advstringgrid1.Cells[2, r] := AdvMyCloudData1.Users[i].Email;
    advstringgrid1.Cells[3, r] := inttostr(integer(AdvMyCloudData1.Users[i].Status));
    advstringgrid1.Cells[4, r] := DateToStr(AdvMyCloudData1.Users[i].Created);
  end;

  AdvStringGrid1.AutoSizeColumns(false);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  fn: string;
begin
  advstringgrid1.ColCount := 3;
  advstringgrid1.SaveFixedCells := false;

  if SaveDialog1.Execute then
  begin
    fn := savedialog1.FileName;
    if ExtractFileExt(fn) =''  then
      fn := fn + '.csv';
    AdvStringGrid1.SaveToCSV(fn);
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  fd: TFilterData;

begin
  advstringgrid1.Filter.Clear;
  fd := advstringgrid1.Filter.Add;
  fd.Condition := '=1';
  fd.Column := 3;
  advstringgrid1.FilterActive := true;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  AdvMyCloudData1.PersistTokens.Location := plIniFile;
  AdvMyCloudData1.PersistTokens.Key := '.\myclouddata.ini';
  AdvMyCloudData1.PersistTokens.Section := 'tokens';

  AdvMyCloudData1.App.Key := MYCLOUDDATAKEY;
  AdvMyCloudData1.App.Secret := MYCLOUDDATASECRET;

  AdvMyCloudData1.App.CallBackPort := 8888;
  AdvMyCloudData1.App.CallBackURL := 'http://127.0.0.1:8888';

  AdvMyCloudData1.Connect;

end;

end.
