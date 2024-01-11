unit januaformtest;

interface

uses
  SysUtils, Classes, Forms;

type
  Tjanuaformtest = class(TComponent)
  private
    Fshow: boolean;
    Ftestlist: TStringList;
    procedure Setshow(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure exectest;
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property show: boolean read Fshow write Setshow;
    property testlist: TStringList read Ftestlist;
  end;

procedure Register;

implementation

   // uses
  // udlgLista;

procedure Register;
begin
  RegisterComponents('Januaproject', [Tjanuaformtest]);
end;

{ Tjanuaformtest }



constructor Tjanuaformtest.Create(AOwner: TComponent);
begin
  inherited;
  Ftestlist := TStringList.Create;
end;

procedure Tjanuaformtest.exectest;
var
  temp: TComponent;
  i: integer;
  //dlgLista: TdlgLista;
begin
  if Owner is TForm then
  begin
    for i := 0 to TForm(Owner).ComponentCount - 1 do
    begin
        temp := TForm(Owner).Components [i] ;
        Ftestlist.Add(temp.Name);
    end;
  end;
  {
  try
    dlgLista := TdlgLista.Create(nil);
    dlgLista.Memo1.Lines.Assign(Ftestlist);
    dlgLista.ShowModal;
  finally
     dlgLista.Free; 
  end;
  }
end;

procedure Tjanuaformtest.Setshow(const Value: boolean);
begin
  Fshow := Value;
end;

end.
