unit Janua.VCL.Actions.Test;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes, Janua.Core.Classes.Intf;

type

  TActionTestComponent = class(TJanuaCoreComponent)
  private
    FTestDate: TDateTime;
    FTestInt: integer;
    FTestString: string;
    procedure SetTestDate(const Value: TDateTime);
    procedure SetTestInt(const Value: integer);
    procedure SetTestString(const Value: string);
  public
    property TestInt: integer read FTestInt write SetTestInt;
    property TestDate: TDateTime read FTestDate write SetTestDate;
    property TestString: string read FTestString write SetTestString;
  end;

  [TestFixture]
  TTestActions = class
  private
    FTestCaption: string;
    FTestEnabled: boolean;
    procedure Test2(const AValue1, AValue2: integer);
  public
    procedure OnExecute(const aAction: IJanuaAction);
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestTrue', 'Ciao,True')]
    [TestCase('TestFalse', 'Bau,False')]
    procedure TestAction(const AValue1: String; const AValue2: boolean);
    [Test]
    [TestCase('TestTrue', 'Ciao,True')]
    [TestCase('TestFalse', 'Bau,False')]
    procedure TestActionList(const AValue1: String; const AValue2: boolean);
    [Test]
    [TestCase('TestTrue', 'Ciao,True')]
    [TestCase('TestFalse', 'Bau,False')]
    procedure TestActionOnExecute(const AValue1: String; const AValue2: boolean);
    [Test]
    [TestCase('TestTrue', 'Ciao,True')]
    [TestCase('TestFalse', 'Bau,False')]
    procedure TestActionExecuteProc(const AValue1: String; const AValue2: boolean);
    [Test]
    [TestCase('TestTrue', 'Ciao,True')]
    [TestCase('TestFalse', 'Bau,False')]
    procedure TestActionListExecuteProc(const AValue1: String; const AValue2: boolean);
    [Test]
    procedure TestClassBind;
    [Test]
    procedure TestVCLToolbar;
  end;

implementation

uses System.SysUtils, System.DateUtils, System.StrUtils, Janua.VCL.Actions, VCL.ToolWin, VCL.ComCtrls,
  Janua.Application.Framework, Janua.Test.VCL.frmTest, Janua.VCL.Framework;

procedure TTestActions.OnExecute(const aAction: IJanuaAction);
begin
  self.FTestCaption := aAction.Caption;
  self.FTestEnabled := aAction.Enabled;
  aAction.Caption := ReverseString(FTestCaption);
  aAction.Enabled := not FTestEnabled;
end;

procedure TTestActions.Setup;
begin
  FTestEnabled := False;
  TJanuaVCLApplication.Initialize;
end;

procedure TTestActions.TearDown;
begin
  try
  except
    on E: Exception do
      RaiseException('TearDown', E, self);
  end;
end;

procedure TTestActions.Test2(const AValue1: integer; const AValue2: integer);
begin
end;

procedure TTestActions.TestAction(const AValue1: String; const AValue2: boolean);
var
  aJanuaAction: IJanuaAction;
begin
  aJanuaAction := TJanuaAction.Create;
  aJanuaAction.Caption := AValue1;
  aJanuaAction.Enabled := AValue2;
  Assert.AreEqual(AValue2, aJanuaAction.Enabled);
  Assert.AreEqual(AValue1, aJanuaAction.Caption);

end;

procedure TTestActions.TestActionExecuteProc(const AValue1: String; const AValue2: boolean);
var
  aJanuaAction: IJanuaAction;
begin
  aJanuaAction := TJanuaAction.Create;
  aJanuaAction.Caption := AValue1;
  aJanuaAction.Enabled := AValue2;
  aJanuaAction.ExecuteProc := procedure(bJanuaAction: IJanuaAction)
    begin
      self.FTestCaption := bJanuaAction.Caption;
      self.FTestEnabled := bJanuaAction.Enabled;
      bJanuaAction.Caption := ReverseString(FTestCaption);
      bJanuaAction.Enabled := not FTestEnabled;
    end;
  aJanuaAction.Execute;
  Assert.AreEqual(self.FTestCaption, AValue1);
  Assert.AreEqual(not AValue2, aJanuaAction.Enabled);
  Assert.AreEqual(ReverseString(AValue1), aJanuaAction.Caption);
end;

procedure TTestActions.TestActionList(const AValue1: String; const AValue2: boolean);
var
  aJanuaAction: IJanuaAction;
  // TJanuaActionList = class(TInterfacedObject, IJanuaActionList)
  aJanuaActionList: IJanuaActionList;
begin
  aJanuaActionList := TJanuaActionList.Create;
  aJanuaAction := aJanuaActionList.Add(AValue1, AValue2,
    procedure(bJanuaAction: IJanuaAction)
    begin
      self.FTestCaption := bJanuaAction.Caption;
      self.FTestEnabled := bJanuaAction.Enabled;
      bJanuaAction.Caption := ReverseString(FTestCaption);
      bJanuaAction.Enabled := not FTestEnabled;
    end, jasCustom);
  Assert.AreEqual(AValue2, aJanuaAction.Enabled);
  Assert.AreEqual(AValue1, aJanuaAction.Caption);
  Assert.AreEqual(1, aJanuaActionList.Actions.Count);
  aJanuaActionList.Actions[0].Execute;
  Assert.AreEqual(self.FTestCaption, AValue1);
  Assert.AreSame(aJanuaAction, aJanuaActionList.Actions[0]);
  Assert.AreEqual(not AValue2, aJanuaAction.Enabled);
  Assert.AreEqual(ReverseString(AValue1), aJanuaAction.Caption);
end;

procedure TTestActions.TestActionListExecuteProc(const AValue1: String; const AValue2: boolean);
var
  aJanuaAction: IJanuaAction;
  // TJanuaActionList = class(TInterfacedObject, IJanuaActionList)
  aJanuaActionList: IJanuaActionList;
begin
  aJanuaActionList := TJanuaActionList.Create;
  aJanuaAction := aJanuaActionList.Add(AValue1, AValue2, nil, jasCustom);
  Assert.AreEqual(AValue2, aJanuaAction.Enabled);
  Assert.AreEqual(AValue1, aJanuaAction.Caption);
  Assert.AreEqual(1, aJanuaActionList.Actions.Count);

end;

procedure TTestActions.TestActionOnExecute(const AValue1: String; const AValue2: boolean);
var
  aJanuaAction: IJanuaAction;
begin
  aJanuaAction := TJanuaAction.Create;
  aJanuaAction.Caption := AValue1;
  aJanuaAction.Enabled := AValue2;
  aJanuaAction.OnExecute := OnExecute;
  aJanuaAction.Execute;
  Assert.AreEqual(self.FTestCaption, AValue1);
  Assert.AreEqual(not AValue2, aJanuaAction.Enabled);
  Assert.AreEqual(ReverseString(AValue1), aJanuaAction.Caption);
end;

procedure TTestActions.TestClassBind;
var
  aTest: TActionTestComponent;
begin
  frmTest := TfrmTest.Create(nil);
  try
    aTest := TActionTestComponent.Create(frmTest);

    aTest.BindManager.Bind('TestInt', frmTest.SpinEdit1, 'Value');
    aTest.BindManager.Bind('TestString', frmTest.Edit1, 'Text');
    aTest.BindManager.Bind('TestDate', frmTest.JvDateEdit1, 'Date');
    aTest.TestInt := 1;
    aTest.TestString := 'Ciao';
    aTest.TestDate := Date();
    Assert.AreEqual(aTest.TestInt, frmTest.SpinEdit1.Value);
    Assert.AreEqual(aTest.TestString, frmTest.Edit1.Text);
    Assert.AreEqual(aTest.TestDate, frmTest.JvDateEdit1.Date);

  finally
    frmTest.Free;
    frmTest := nil;
  end;
end;

procedure TTestActions.TestVCLToolbar;
var
  aJanuaAction: IJanuaAction;
  JanuaActionViewController1: TJanuaActionViewController;
  aJanuaActionList: IJanuaActionList;
  aTest: TActionTestComponent;
begin
  aTest := TActionTestComponent.Create(nil);
  try
    aJanuaActionList := TJanuaActionList.Create;
    aJanuaAction := aJanuaActionList.Add('Uno', True,
      procedure(bJanuaAction: IJanuaAction)
      begin
        aTest.TestInt := 1;
        aTest.TestString := 'Ciao';
        aTest.TestDate := Date();
      end, jasCustom);
    Assert.IsNotNull(aJanuaAction);
    aJanuaAction.ImageIndex := 1;

    frmTest := TfrmTest.Create(nil);
    try
      JanuaActionViewController1 := TJanuaActionViewController.Create(frmTest);
      Assert.IsNotNull(JanuaActionViewController1);
      JanuaActionViewController1.TestMode := True;
      JanuaActionViewController1.ToolBar := frmTest.ToolBar1;
      JanuaActionViewController1.JanuaActionList := aJanuaActionList;
      JanuaActionViewController1.Activate;
      Assert.IsTrue(JanuaActionViewController1.Active);

      aTest.BindManager.Bind('TestInt', frmTest.SpinEdit1, 'Value');
      aTest.BindManager.Bind('TestString', frmTest.Edit1, 'Text');
      aTest.BindManager.Bind('TestDate', frmTest.JvDateEdit1, 'Date');

      JanuaActionViewController1.ActionList.Actions[0].Execute;

      Assert.AreEqual(aTest.TestInt, frmTest.SpinEdit1.Value);
      Assert.AreEqual(aTest.TestString, frmTest.Edit1.Text);
      Assert.AreEqual(aTest.TestDate, frmTest.JvDateEdit1.Date);

    finally
      frmTest.Free;
      frmTest := nil;
    end;
  finally
    aTest.Free;
  end;
end;

{ TActionTestComponent }

procedure TActionTestComponent.SetTestDate(const Value: TDateTime);
begin
  FTestDate := Value;
 BindManager.Notify('TestDate');
end;

procedure TActionTestComponent.SetTestInt(const Value: integer);
begin
  FTestInt := Value;
 BindManager.Notify('TestInt');
end;

procedure TActionTestComponent.SetTestString(const Value: string);
begin
  FTestString := Value;
 BindManager.Notify('TestString');
end;

initialization

TDUnitX.RegisterTestFixture(TTestActions);

end.
