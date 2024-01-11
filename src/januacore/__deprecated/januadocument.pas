unit JanuaDocument;


interface

uses
  Classes, SysUtils,  JanuaCore;

{$TYPEINFO ON}

type

  { TJanuaDocument }

  TJanuaDocument = class(TObject)
  private
    FBarcode: TJanuaBarcode;
    FDate: TDateTime;
    FDocumentID: integer;
    FFirstName: string;
    FFullName: string;
    FSecondName: string;
    procedure SetBarcode(const AValue: TJanuaBarcode);
    procedure SetDate(const AValue: TDateTime);
    procedure SetDocumentID(const AValue: integer);
    procedure SetFirstName(const AValue: string);
    procedure SetFullName(const AValue: string);
    procedure SetSecondName(const AValue: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property Date: TDateTime read FDate write SetDate;
    property FirstName: string read FFirstName write SetFirstName;
    property SecondName: string read FSecondName write SetSecondName;
    property FullName: string read FFullName write SetFullName;
    property DocumentID: integer read FDocumentID write SetDocumentID;
    property Barcode: TJanuaBarcode read FBarcode write SetBarcode;
  end;

  procedure register;

implementation

  procedure register;
  begin
       // at the moment this does nothing
  end;


{ TJanuaDocument }

procedure TJanuaDocument.SetDate(const AValue: TDateTime);
begin
  if FDate=AValue then exit;
  FDate:=AValue;
end;

procedure TJanuaDocument.SetBarcode(const AValue: TJanuaBarcode);
begin
  if FBarcode=AValue then exit;
  FBarcode:=AValue;
end;

procedure TJanuaDocument.SetDocumentID(const AValue: integer);
begin
  if FDocumentID=AValue then exit;
  FDocumentID:=AValue;
end;

procedure TJanuaDocument.SetFirstName(const AValue: string);
begin
  if FFirstName=AValue then exit;
  FFirstName:=AValue;
end;

procedure TJanuaDocument.SetFullName(const AValue: string);
begin
  if FFullName=AValue then exit;
  FFullName:=AValue;
end;

procedure TJanuaDocument.SetSecondName(const AValue: string);
begin
  if FSecondName=AValue then exit;
  FSecondName:=AValue;
end;

end.
