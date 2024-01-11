unit Janua.VCL.System.ViewModel;

interface

uses System.Classes, VCL.ActnList, Janua.Core.Types, Janua.System.ViewModel;

type
  TJanuaVCLDBSystemViewModel = class;

  TSystemViewModelAction = class(TCustomAction)
  private
    FSystemViewModel: TJanuaVCLDBSystemViewModel;
    procedure SetSystemViewModel(Value: TJanuaVCLDBSystemViewModel);
  protected
    function GetSystemViewModel(Target: TObject): TJanuaVCLDBSystemViewModel;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    destructor Destroy; override;
    function HandlesTarget(Target: TObject): Boolean; override;
    procedure UpdateTarget(Target: TObject); override;
  published // properties from Ancestor class(es) (TAction->TCustomAction)
    property Caption;
    property Enabled;
    property HelpContext;
    property HelpKeyword;
    property HelpType;
    property Hint;
    property ImageIndex;
    property ShortCut;
    property SecondaryShortCuts;
    property Visible;
    property OnExecute; { This property could be omitted. But if you want to be
      able to override the default behavior of this action
      (zooming in on a TSystemViewModel component), then you need to
      assign this event. From within the event handler
      you could invoke the default behavior manually. }
    property OnHint;
    property OnUpdate;
  published // property from this Action .............................................................
    property SystemViewModel: TJanuaVCLDBSystemViewModel read FSystemViewModel write SetSystemViewModel;
  end;

  TSearchUsersAction = class(TSystemViewModelAction)
  public
    constructor Create(AOwner: TComponent); override;
    procedure ExecuteTarget(Target: TObject); override;
  end;

  TJanuaVCLDBSystemViewModel = class(TJanuaDBSystemViewModel)
  strict protected
    procedure InternalCreate; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

procedure Register;

implementation

uses System.Actions, VCL.Menus, Janua.Postgres.System.Impl, Janua.Core.Functions;

procedure Register;
begin
  RegisterComponents('VCLSystemViewModel', [TJanuaVCLDBSystemViewModel]);
  RegisterActions('SystemSearchUserAction', [TSearchUsersAction], nil);
end;

{ TSystemViewModelAction }

destructor TSystemViewModelAction.Destroy;
begin
  if FSystemViewModel <> nil then
    FSystemViewModel.RemoveFreeNotification(Self);
  inherited Destroy;
end;

function TSystemViewModelAction.GetSystemViewModel(Target: TObject): TJanuaVCLDBSystemViewModel;
var
  LVM: TJanuaVCLDBSystemViewModel;
  function FindSystemViewModel: Boolean;
  var
    I: integer;
  begin
    LVM := nil;
    Result := False;
    for I := 0 to Pred(Owner.ComponentCount) do
      if Owner.Components[I] is TJanuaVCLDBSystemViewModel then
      begin
        LVM := Owner.Components[I] as TJanuaVCLDBSystemViewModel;
        exit(True)
      end;
  end;

begin
  if FSystemViewModel <> nil then
    Result := FSystemViewModel
  else if (Target is TJanuaVCLDBSystemViewModel) then
    Result := TJanuaVCLDBSystemViewModel(Target)
  else if FindSystemViewModel then
  begin
    FSystemViewModel := LVM;
    Result := LVM
  end
  else
    { This should not happen! HandlesTarget is called before ExecuteTarget,
      or the action is disabled }
    Result := nil;

end;

function TSystemViewModelAction.HandlesTarget(Target: TObject): Boolean;
begin
  // Verifico che il 'Target' sia attivo e che sia non nullo ...
  Result := ((FSystemViewModel <> nil) and FSystemViewModel.Active) or
    ((FSystemViewModel = nil) and (Target is TJanuaVCLDBSystemViewModel) and TJanuaVCLDBSystemViewModel(Target).Active);

end;

procedure TSystemViewModelAction.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (AComponent = FSystemViewModel) then
    FSystemViewModel := nil;

end;

procedure TSystemViewModelAction.SetSystemViewModel(Value: TJanuaVCLDBSystemViewModel);
begin
  if FSystemViewModel <> Value then
  begin
    if FSystemViewModel <> nil then
      FSystemViewModel.RemoveFreeNotification(Self);
    FSystemViewModel := Value;
    if FSystemViewModel <> nil then
      FSystemViewModel.FreeNotification(Self);
  end;

end;

procedure TSystemViewModelAction.UpdateTarget(Target: TObject);
begin
  // inherited; override della procedura ......
  Enabled := HandlesTarget(Target);
end;

{ TSearchUsersAction }

constructor TSearchUsersAction.Create(AOwner: TComponent);
begin

  inherited Create(AOwner);
  Caption := 'Zoom in';
  Hint := 'Zoom in|Zooms in on the selected zoomer control';
  ShortCut := VCL.Menus.ShortCut(Word('R'), [ssCtrl]);

end;

procedure TSearchUsersAction.ExecuteTarget(Target: TObject);
begin
  inherited;
  if Assigned(FSystemViewModel) then
    FSystemViewModel.SearchUser
end;

{ TJanuaVCLDBSystemViewModel }

constructor TJanuaVCLDBSystemViewModel.Create(AOwner: TComponent);
begin
  ExecProc(
    procedure
    begin
      inherited;
    end, 'Create', Self);
end;

procedure TJanuaVCLDBSystemViewModel.InternalCreate;
begin
  ExecProc(
    procedure
    begin
      inherited;
      Self.FFActory := Janua.Postgres.System.Impl.TJanuaServerPgSystemFactory.Create;
    end, 'InternalCreate', Self);
end;

end.
