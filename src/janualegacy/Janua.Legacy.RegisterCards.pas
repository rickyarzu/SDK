unit Janua.Legacy.RegisterCards;

interface

uses
  System.Classes, Janua.Legacy.Anagraph;

type
  TJanuaRegisterCards = class(TComponent)
  private
    FAnagraph: TJanuaAnagraph;
    FCardID: int64;
    FisvalidCard: boolean;
    FAnagraphID: int64;
    FCompanyID: int64;
    FCardCode: string;
    procedure SetAnagraph(const Value: TJanuaAnagraph);
    procedure SetAnagraphID(const Value: int64);
    procedure SetCardCode(const Value: string);
    procedure SetCardID(const Value: int64);
    procedure SetCompanyID(const Value: int64);
    procedure SetisvalidCard(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function ValidateCard: boolean; Overload;
    function ValidateCard(sCard: string): boolean; overload;
    function ValidateCard(iCard: int64): boolean; Overload;
  published
    { Published declarations }
    property Anagraph: TJanuaAnagraph read FAnagraph write SetAnagraph;
    property AnagraphID: int64 read FAnagraphID write SetAnagraphID;
    property isvalidCard: boolean read FisvalidCard write SetisvalidCard;
    property CompanyID: int64 read FCompanyID write SetCompanyID;
    property CardCode: string read FCardCode write SetCardCode;
    property CardID: int64 read FCardID write SetCardID;
  end;

implementation

uses System.SysUtils;

{ TJanuaRegisterCards }

procedure TJanuaRegisterCards.SetAnagraph(const Value: TJanuaAnagraph);
begin
  FAnagraph := Value;
end;

procedure TJanuaRegisterCards.SetAnagraphID(const Value: int64);
begin
  FAnagraphID := Value;
end;

procedure TJanuaRegisterCards.SetCardCode(const Value: string);
begin
  FCardCode := Value;
end;

procedure TJanuaRegisterCards.SetCardID(const Value: int64);
begin
  FCardID := Value;
end;

procedure TJanuaRegisterCards.SetCompanyID(const Value: int64);
begin
  FCompanyID := Value;
end;

procedure TJanuaRegisterCards.SetisvalidCard(const Value: boolean);
begin
  FisvalidCard := Value;
end;

function TJanuaRegisterCards.ValidateCard: boolean;
begin
  Result := False;
end;

function TJanuaRegisterCards.ValidateCard(sCard: string): boolean;
begin
  Result := False;
end;

function TJanuaRegisterCards.ValidateCard(iCard: int64): boolean;
begin
  Result := False;
end;

end.
