unit Janua.FMX.ControlIOSource;

interface



uses
  System.SysUtils, System.Classes, FMX.Controls,  FMX.StdCtrls, FMX.Memo,
   Janua.Core.System;

type
  TJanuaTreeNode = record
    node_id: integer;
    parent_id: integer;
    node_name: string;
    directory: boolean;
  end;


type
  TJanuaFMXIOSource = class(TJanuaIOSource)
  private
    FMemo: TMemo;
    FTreeNodes: array of TJanuaTreeNode;
    procedure SetMemo(const Value: TMemo);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    Procedure LogToMemo(log: String); override;
    Procedure AddNode(id: integer; parent_id: integer; node_name: string; directory: boolean); override;
    Constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Memo: TMemo read FMemo write SetMemo;
  end;


implementation

{ TJanuaVCLIOSource }

procedure TJanuaFMXIOSource.AddNode(id, parent_id: integer; node_name: string;
  directory: boolean);
begin
  if FNodeCount > 0 then Inc(i);
  FNodeCount := i + 1;
  {$IFDEF HAS_VCL} SetLength(FTreeNodes, FNodeCount) ;  {$ENDIF}

end;

constructor TJanuaFMXIOSource.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TJanuaFMXIOSource.LogToMemo(log: String);
begin
  if Assigned (FMemo) then FMemo.Lines.Add(log);


end;

procedure TJanuaFMXIOSource.SetMemo(const Value: TMemo);
begin
  FMemo := Value;
end;


end.
