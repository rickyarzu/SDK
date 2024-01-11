unit Janua.Legacy.ReadOnly;

interface

uses
  SysUtils, Classes, Forms, DBCtrls, JvDBControls, DBAdvOfficeButtons, Janua.VCL.EnhCRDBGrid;

type
  TJanuaReadOnly = class(TComponent)
  private
    FReadOnly: boolean;
    procedure SetReadOnly(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure execute;
  published
    { Published declarations }
    property ReadOnly: boolean read FReadOnly write SetReadOnly;

  end;

implementation

{ TJanuaReadOnly }

procedure TJanuaReadOnly.execute;
var
  i, j: integer;
  temp, temp2: TComponent;
begin
  if FReadOnly then
    for i := 0 to (Owner as TForm).ComponentCount - 1 do
    begin
      temp := (Owner as TForm).Components[i];
      if temp is tdbedit then
        (temp as tdbedit).ReadOnly := True
      else if temp is tjvdbcomboedit then
        (temp as tjvdbcomboedit).ReadOnly := True
      else if temp is TDBAdvOfficeRadioGroup then
        (temp as TDBAdvOfficeRadioGroup).ReadOnly := True
      else if temp is Tenhcrdbgrid then
        (temp as Tenhcrdbgrid).ReadOnly := True
      else if temp is TFRame then
        for j := 0 to (temp as TFRame).ComponentCount - 1 do
        begin
          temp2 := (temp as TFRame).Components[j];
          if temp2 is tdbedit then
            (temp2 as tdbedit).ReadOnly := True
          else if temp2 is tjvdbcomboedit then
            (temp2 as tjvdbcomboedit).ReadOnly := True
          else if temp2 is Tenhcrdbgrid then
            (temp2 as Tenhcrdbgrid).ReadOnly := True
          else if temp2 is TDBAdvOfficeRadioGroup then
            (temp2 as TDBAdvOfficeRadioGroup).ReadOnly := True
        end;
    end;
end;

procedure TJanuaReadOnly.SetReadOnly(const Value: boolean);
begin
  FReadOnly := Value;
end;

end.
