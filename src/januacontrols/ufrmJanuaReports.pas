unit ufrmJanuaReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, MemDS, DBAccess, Ora;

type
  TfrmJanuaReport = class(TForm)
    QuickRep1: TQuickRep;
    OraQuery1: TOraQuery;
    testSession: TOraSession;
    procedure FormCreate(Sender: TObject);
  private
    Fparams: TParams;
    FOraSession: TOraSession;
    FQuickRep: TQuickRep;
    procedure SetOraSession(const Value: TOraSession);
    { Private declarations }
  public
    { Public declarations }
    procedure parambyname(paramname: string; const aValue: Variant);
  published
    property params: TParams read Fparams;
    property OraSession: TOraSession read FOraSession write SetOraSession;
    property QuickRep: TQuickRep read FQuickRep;
  end;

var
  frmJanuaReport: TfrmJanuaReport;

implementation

{$R *.dfm}

{ TfrmJanuaReport }


{ TfrmJanuaReport }

procedure TfrmJanuaReport.FormCreate(Sender: TObject);
begin
  Fparams := TParams.Create(self);
  FQuickRep := QuickRep1;
   
end;

procedure TfrmJanuaReport.parambyname(paramname: string; const aValue: Variant);
begin
  FParams.ParamByName(paramname).Value := aValue; 
end;

procedure TfrmJanuaReport.SetOraSession(const Value: TOraSession);
begin
  FOraSession := Value;
  if Assigned(FOraSession) then OraQuery1.Session := FOraSession; 
  
end;

end.
