unit Janua.VCL.Actions;

interface

uses System.UITypes, System.Classes, Spring.Collections, Data.DB,
  VCL.ComCtrls, VCL.ActnList, VCL.ImgList, VCL.DBCtrls, Janua.VCL.Interposers,
  Janua.Core.Classes, Janua.Core.Classes.Intf;

type
  TJanuaButtonImageSize = (jbs16, jbs24, jbs32, jbs48);

  TJanuaActionViewController = class(TJanuaCoreComponent)
  private
    FToolBar: TToolbar;
    [weak]
    FJanuaActionList: IJanuaActionList;
    FActionList: TActionList;
    FImages: TCustomImageList;
    FButtonSize: TJanuaButtonImageSize;
    FACtionBindings: IDictionary<TObject, IJanuaAction>;
    FActionTranslate: IDictionary<IJanuaAction, TAction>;
    FDataSource: TDataSource;
    FDBNavigator: TDBNavigator;
    FMasterActions: TJanuaActionViewController;
    procedure SetActionList(const Value: TActionList);
    procedure SetButtonSize(const Value: TJanuaButtonImageSize);
    procedure SetImages(const Value: TCustomImageList);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetDBNavigator(const Value: TDBNavigator);
    procedure SetMasterActions(const Value: TJanuaActionViewController);
  protected
    procedure SetToolBar(const Value: TToolbar);
    procedure SetJanuaActionList(const Value: IJanuaActionList);
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
  public
    /// <summary> Add Action creates a VCL Action based on an IJanuaAction Model and Adds to List </summary>
    function AddAction(const aAction: IJanuaAction): TAction;
    procedure ExecuteJanuaAction(Sender: TObject);
    /// <summary> Can Find the TAction (VCL) that is linked to its IJanauAction Counterpart. </summary>
    /// <param name="aJanuaAction">IJanuaAction: Index Acton To Search</param>
    /// <param name="aAction">TAction: Output as TAction (VCL) </param>
    /// <returns>Boolean:  True if Found, False Elsewhere</returns>
    function FindAction(const aJanuaAction: IJanuaAction; out aAction: TAction): boolean;
    procedure UpdateActions(Sender: TObject);
  public
    property JanuaActionList: IJanuaActionList read FJanuaActionList write SetJanuaActionList;
    property ActionList: TActionList read FActionList write SetActionList;
    property Images: TCustomImageList read FImages write SetImages;
    property DataSource: TDataSource read FDataSource write SetDataSource;
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  published
    property ToolBar: TToolbar read FToolBar write SetToolBar;
    property ButtonSize: TJanuaButtonImageSize read FButtonSize write SetButtonSize;
    property DBNavigator: TDBNavigator read FDBNavigator write SetDBNavigator;
  end;

implementation

uses System.SysUtils, System.Math, System.Generics.Collections, Spring,
  Janua.VCL.Framework, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaActionViewController }

constructor TJanuaActionViewController.Create(AOwner: TComponent);
begin
  inherited;
  FACtionBindings := TCollections.CreateDictionary<TObject, IJanuaAction>;
  FActionTranslate := TCollections.CreateDictionary<IJanuaAction, TAction>;
  FActionList := TActionList.Create(self);
end;

function TJanuaActionViewController.AddAction(const aAction: IJanuaAction): TAction;
begin
  Assert(Assigned(aAction), ClassName + '.AddAction aAction cannot be nil');
  if not FindAction(aAction, Result) then
  begin
    Result := TAction.Create(FActionList);
    Result.ActionList := FActionList;
    aAction.Bind('Caption', Result, 'Caption');
    Result.OnExecute := ExecuteJanuaAction;
    Result.ImageIndex := aAction.ImageIndex;
    aAction.Bind('ImageIndex', Result, 'ImageIndex');
    Result.Hint := aAction.Caption;
    aAction.Bind('Caption', Result, 'Hint');
    Result.Enabled := aAction.Enabled;
    aAction.Bind('Enabled', Result, 'Enabled');
    Result.Visible := aAction.Visible;
    aAction.Bind('Visible', Result, 'Visible');

    FACtionBindings.Add((Result as TObject), aAction);
    FActionTranslate.Add(aAction, Result);

  end;
end;

destructor TJanuaActionViewController.Destroy;
begin
  FACtionBindings.Clear;
  FACtionBindings := nil;
  inherited;
end;

procedure TJanuaActionViewController.ExecuteJanuaAction(Sender: TObject);
var
  LJanuaAction: IJanuaAction;
begin
  // function TryGetValue(const key: TKey; out value: TValue): Boolean;
  if FACtionBindings.TryGetValue(Sender, LJanuaAction) then
  begin
    LJanuaAction.ExecuteAction(Sender);
  end;
end;

function TJanuaActionViewController.FindAction(const aJanuaAction: IJanuaAction; out aAction: TAction): boolean;
begin
  Result := FActionTranslate.TryGetValue(aJanuaAction, aAction)
end;

function TJanuaActionViewController.InternalActivate: boolean;
var
  LJanuaAction: IJanuaAction;
  LWidth: integer;
  LLastButton: TToolButton;

  function AddButtonToToolbar(Caption: string; aAction: TAction; aAddAfteridx: integer = -1): TToolButton;
  var
    prevBtnIdx: integer;
  begin
    Assert(Assigned(aAction), 'AddButtonToToolbar aAction is nil');
    Assert(Assigned(FToolBar), 'AddButtonToToolbar FToolBar is nil');
    Result := TToolButton.Create(FToolBar);
    try
      Result.Caption := Caption;
      Result.Visible := aAction.Visible;
      Result.Enabled := aAction.Enabled;
      Result.Hint := aAction.Hint;
      // if they asked us to add it after a specific location, then do so
      // otherwise, just add it to the end (after the last existing button)
      with FToolBar do
      begin
        // if the index provided to be *after* does not exist: just add to the end
        prevBtnIdx := IfThen(aAddAfteridx = -1, ButtonCount - 1, IfThen(ButtonCount <= aAddAfteridx, ButtonCount - 1,
          aAddAfteridx));

        if prevBtnIdx > -1 then
          Result.Left := Buttons[prevBtnIdx].Left + Buttons[prevBtnIdx].Width
        else
          Result.Left := 0;
      end;

      Result.Parent := FToolBar;
      // sets the correct action to the button
      Result.Action := aAction;
    except
      on E: Exception do
        RaiseException('AddButtonToToolbar', E, self, self.LogString);
    end;
  end;

begin
  Result := Active;
  LWidth := 0;
  LLastButton := nil;
  if not Result then
    try
      Result := inherited and notDesigning;
      if Result then
      begin
        try
          // a Detail Object should not have an Action List so this procedure should not be called
          Guard.CheckNotNull(JanuaActionList, 'JanuaActionList not set');
          Guard.CheckNotNull(FActionList, 'ActionList not set');
          // TJanuaVCLInfrastructure
          case FButtonSize of
            jbs16:
              FImages := TJanuaVCLApplication.FontVCLIcons16;
            jbs24:
              FImages := TJanuaVCLApplication.FontVCLIcons24;
            jbs32:
              FImages := TJanuaVCLApplication.FontVCLIcons32;
            jbs48:
              FImages := TJanuaVCLApplication.FontVCLIcons48;
          end;
          FActionList.Images := FImages;
          if Assigned(FToolBar) and Assigned(JanuaActionList) then
          begin
            FToolBar.Images := FImages;
            LWidth := 0;
            for LJanuaAction in JanuaActionList.Actions do
              if LJanuaAction.Visible then
              begin
                LLastButton := AddButtonToToolbar(LJanuaAction.Caption, AddAction(LJanuaAction));
                { Inserts a new button on the bar and increases the bar width of the new button's width }
                Inc(LWidth, LLastButton.Width);
              end
          end;
          Result := True;
          LWidth := Max(LWidth, LLastButton.Left + LLastButton.Width);
          FToolBar.Width := LWidth + 20;
        except
          on E: Exception do
            RaiseException('Execute', E, self, LogString);
        end;
      end;
    except
      on E: Exception do
        RaiseLocalException('InternalActivate', E);
    end;
end;

procedure TJanuaActionViewController.SetActionList(const Value: TActionList);
begin
  FActionList := Value;
end;

procedure TJanuaActionViewController.SetButtonSize(const Value: TJanuaButtonImageSize);
begin
  FButtonSize := Value;
end;

procedure TJanuaActionViewController.SetDataSource(const Value: TDataSource);
begin
  FDataSource := Value;
  if Assigned(self.FDBNavigator) then
    FDBNavigator.DataSource := Value;
end;

procedure TJanuaActionViewController.SetDBNavigator(const Value: TDBNavigator);
begin
  FDBNavigator := Value;
  if Assigned(self.FDataSource) then
    FDBNavigator.DataSource := FDataSource
end;

procedure TJanuaActionViewController.SetImages(const Value: TCustomImageList);
begin
  FImages := Value;
end;

procedure TJanuaActionViewController.SetJanuaActionList(const Value: IJanuaActionList);
begin
  FJanuaActionList := Value;
  if Assigned(FJanuaActionList) then
    FJanuaActionList.OnUpdateAction := self.UpdateActions;
end;

procedure TJanuaActionViewController.SetMasterActions(const Value: TJanuaActionViewController);
begin
  FMasterActions := Value;
end;

procedure TJanuaActionViewController.SetToolBar(const Value: TToolbar);
begin
  FToolBar := Value;
end;

procedure TJanuaActionViewController.UpdateActions(Sender: TObject);
{ var
  aPair: TPair<IJanuaAction, TAction>; }
begin
  // FActionTranslate: IDictionary<IJanuaAction, TAction>;
  for var aPair in FActionTranslate do
  begin
    aPair.Value.Enabled := aPair.Key.Enabled;
    aPair.Value.Visible := aPair.Key.Visible;
  end;
end;

end.
