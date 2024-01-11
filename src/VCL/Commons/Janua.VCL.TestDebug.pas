unit Janua.VCL.TestDebug;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.System, VCL.StdCtrls, VCL.Controls, VCL.ExtCtrls,
  Janua.Core.Classes, Janua.Core.JPublic, Janua.Core.Users;

type
  TJanuaVCLTestLog = class(TJanuaCoreComponent)
  private
    FJanuaServerSystem: TJanuaCustomServerSystem;
    FMemoSystem: TListBox;
    FMemoJPublic: TListBox;
    FJanuaServerJPublic: TJanuaCustomServerJPublic;
    FJanuaProfile: TJanuaProfile;
    FMemoProfile: TListBox;
    FMemoAddress: TListBox;
    FMemoBirth: TListBox;
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
    procedure SetMemo(const Value: TListBox);
    procedure SetMemoJPublic(const Value: TListBox);
    procedure SetJanuaServerJPublic(const Value: TJanuaCustomServerJPublic);
    procedure SetJanuaProfile(const Value: TJanuaProfile);
    procedure SetMemoProfile(const Value: TListBox);
    procedure SetMemoAddress(const Value: TListBox);
    procedure SetMemoBirth(const Value: TListBox);
    { Private declarations }
  protected
    { Protected declarations }
    (*
    function SetBind(const aServer: TJanuaCoreComponent; aTarget: TListBox): boolean;  // *** bindings
    function SetBindObject(const aServer: TJanuaBindObject; aTarget: TListBox): boolean; // *** bindings
    *)
  public
    { Public declarations }
    function BindSystem: boolean;
  published
    { Published declarations }
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem
      write SetJanuaServerSystem;
    property JanuaServerJPublic: TJanuaCustomServerJPublic read FJanuaServerJPublic
      write SetJanuaServerJPublic;
    property MemoSystem: TListBox read FMemoSystem write SetMemo;
    property MemoJPublic: TListBox read FMemoJPublic write SetMemoJPublic;
    property JanuaProfile: TJanuaProfile read FJanuaProfile write SetJanuaProfile;
    property MemoProfile: TListBox read FMemoProfile write SetMemoProfile;
    property MemoAddress: TListBox read FMemoAddress write SetMemoAddress;
    property MemoBirth: TListBox read FMemoBirth write SetMemoBirth;
  end;


implementation


{ TJanuaVCLLog }

function TJanuaVCLTestLog.BindSystem: boolean;
begin
  Result := Assigned(FJanuaServerSystem) and Assigned(FMemoSystem);
 // if Result then
 //   FJanuaServerSystem.Bind('Log', FMemoSystem, 'Items'); // *** bindings
end;
 (*
function TJanuaVCLTestLog.SetBind(const aServer: TJanuaCoreComponent; aTarget: TListBox): boolean;
begin
  Result := Assigned(aServer) and Assigned(aTarget);
  if Result then
    aServer.Bind('Log', aTarget, 'Items');
  self.WriteLog('SetBind' + aTarget.Name + '.Items' + aServer.Name + 'Log');
end;

function TJanuaVCLTestLog.SetBindObject(const aServer: TJanuaBindObject; aTarget: TListBox): boolean;
begin
  Result := Assigned(aServer) and Assigned(aTarget);
  if Result then
    aServer.Bind('Log', aTarget, 'Items');
  self.WriteLog('SetBind' + aTarget.Name + '.Items' + aServer.ClassName + 'Log');
end;
*)

procedure TJanuaVCLTestLog.SetJanuaProfile(const Value: TJanuaProfile);
begin
  FJanuaProfile := Value;
end;

procedure TJanuaVCLTestLog.SetJanuaServerJPublic(const Value: TJanuaCustomServerJPublic);
begin
  FJanuaServerJPublic := Value;
end;

procedure TJanuaVCLTestLog.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

procedure TJanuaVCLTestLog.SetMemo(const Value: TListBox);
begin
  if Assigned(FMemoSystem) and not Assigned(Value) then
  begin
    //self.ClearBindings; // *** bindings
    FMemoSystem := Value;
  end
  else
  begin
    FMemoSystem := Value;
  end;
end;

procedure TJanuaVCLTestLog.SetMemoAddress(const Value: TListBox);
begin
  if Assigned(FMemoAddress) and not Assigned(Value) then
  begin
   // self.ClearBindings;   // *** bindings
    FMemoAddress := Value;
  end
  else
  begin
    FMemoAddress := Value;
  end;
end;

procedure TJanuaVCLTestLog.SetMemoBirth(const Value: TListBox);
begin
  FMemoBirth := Value;
end;

procedure TJanuaVCLTestLog.SetMemoJPublic(const Value: TListBox);
begin
  if Assigned(FMemoJPublic) and not Assigned(Value) then
  begin
    // self.ClearBindings;  // *** bindings
    FMemoJPublic := Value;
  end
  else
  begin
    FMemoJPublic := Value;
  end;
end;

procedure TJanuaVCLTestLog.SetMemoProfile(const Value: TListBox);
begin
  if Assigned(FMemoProfile) and not Assigned(Value) then
  begin
    // self.ClearBindings;
    FMemoProfile := Value;
  end
  else
  begin
    FMemoProfile := Value;
  end;

end;

end.
