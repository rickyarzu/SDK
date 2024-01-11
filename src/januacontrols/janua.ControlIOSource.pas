unit janua.ControlIOSource;

interface

{$IF FireMonkeyVersion >= 16}
   {$DEFINE HAS_FMX}
{$ELSE}
   {$DEFINE HAS_VCL}
{$ENDIF}

uses
  System.SysUtils, System.Classes,
  {$IFDEF HAS_FMX} FMX.Controls,  FMX.StdCtrls,{$ENDIF}
  {$IFDEF HAS_VCL} VCL.Controls,  VCL.StdCtrls,{$ENDIF}
   januaiosource;

type
  TJanuaTreeNode = record
    node_id: integer;
    parent_id: integer;
    node_name: string;
    directory: boolean;
     {$IFDEF HAS_VCL} TreeNode: TTreeNode; {$ENDIF}
  end;


type
  TJanuaVCLIOSource = class(TJanuaIOSource)
  private
     {$IFDEF HAS_VCL}  FTreeView: TTReeView; {$ENDIF}
    FMemo: TMemo;
    FTreeNodes: array of TJanuaTreeNode;
    procedure SetMemo(const Value: TMemo);
     {$IFDEF HAS_VCL} procedure SetTreeView(const Value: TTReeView); {$ENDIF}
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
   {$IFDEF HAS_VCL} property TreeView: TTReeView read FTreeView write SetTreeView; {$ENDIF}
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua Controls', [TJanuaVCLIOSource]);
end;

{ TJanuaVCLIOSource }

procedure TJanuaVCLIOSource.AddNode(id, parent_id: integer; node_name: string;
  directory: boolean);
begin
  if FNodeCount > 0 then Inc(i);
  FNodeCount := i + 1;
  {$IFDEF HAS_VCL} SetLength(FTreeNodes, FNodeCount) ;  {$ENDIF}

end;

constructor TJanuaVCLIOSource.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TJanuaVCLIOSource.LogToMemo(log: String);
begin
  if Assigned (FMemo) then FMemo.Lines.Add(log);


end;

procedure TJanuaVCLIOSource.SetMemo(const Value: TMemo);
begin
  FMemo := Value;
end;

{$IFDEF HAS_VCL}
procedure TJanuaVCLIOSource.SetTreeView(const Value: TTReeView);
begin
  FTreeView := Value;
end;
{$ENDIF}

end.
