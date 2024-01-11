unit unitTestTmsAppBar;

interface

{$I januacore.inc}

uses
  System.Classes, System.SysUtils, DUnitX.TestFramework, VCL.Forms, ufrmTestContainer, udmSVGImageList,
  Janua.Controls.Forms.Impl;

type

  [TestFixture]
  TTestTMSAppBar = class
  private
    FFormTestContainer: TfrmTestContainer;
    FTestFormRecord: TJanuaFormRecord;
    FImageList: TdmSVGImageList;
  public
    procedure TestFormRecord(aRecord: TJanuaFormRecord);
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestCreate;
    [Test]
    procedure TestCreateMenu;
    [Test]
    procedure TestCreateMenuClick;
  end;

implementation

uses Janua.Controls.Forms.Intf, Janua.TMS.NavBar,
  // test forms
  VCL.CategoryButtons, uApplicationSetup;

procedure TTestTMSAppBar.Setup;
begin
  // Application Setup Creates the testing Menu Components
  ApplicationSetup;

  FFormTestContainer := TfrmTestContainer.Create(nil);
  // This Creates a Sample Image List from the standard Image List SVG Components.
  FImageList := TdmSVGImageList.Create(nil);
end;

procedure TTestTMSAppBar.TearDown;
begin
  FreeAndNil(FImageList);
  FreeAndNil(FFormTestContainer);
  ApplicationTearDown;
end;

procedure TTestTMSAppBar.TestCreate;
var
  aController: TJanuaTMSNavBarController;
begin
  aController := TJanuaTMSNavBarController.Create(FFormTestContainer);
  Assert.IsNotNull(aController);
end;

procedure TTestTMSAppBar.TestCreateMenu;
var
  aController: TJanuaTMSNavBarController;
begin
  aController := TJanuaTMSNavBarController.Create(FFormTestContainer);
  aController.Container := FFormTestContainer.SplitView1;
  aController.ImageList := self.FImageList.SVGIconImageList;
  aController.Activate;
  Assert.IsTrue(aController.Active);
end;

procedure TTestTMSAppBar.TestCreateMenuClick;
var
  aController: TJanuaTMSNavBarController;
  Sender: TObject;
begin
  aController := TJanuaTMSNavBarController.Create(FFormTestContainer);
  aController.Container := FFormTestContainer.SplitView1;
  aController.ImageList := FImageList.SVGIconImageList;
  aController.Activate;
  if aController.Active then
  begin
    aController.OnRecordFound := TestFormRecord;
    Assert.IsTrue(Assigned(aController.OnRecordFound), 'aController.OnRecordFound');
    Assert.IsNotNull(aController.catMenuItems, 'aController.catMenuItems');
    Assert.IsTrue(aController.catMenuItems.Categories.Count > 0, 'Categories = 0');
    Assert.IsTrue(aController.catMenuItems.Categories[0].Items.Count > 0, 'Items = 0');
    Sender := aController.catMenuItems.Categories[0].Items[0];
    (Sender as TButtonItem).OnClick(aController.catMenuItems);
    Assert.AreEqual(FTestFormRecord.ClassName, '');
  end;
end;

procedure TTestTMSAppBar.TestFormRecord(aRecord: TJanuaFormRecord);
begin
  // l'evento viene 'riepito' dal Record fornito dall'evento click del pulsante.
  FTestFormRecord := aRecord;
end;

initialization

TDUnitX.RegisterTestFixture(TTestTMSAppBar);

end.
