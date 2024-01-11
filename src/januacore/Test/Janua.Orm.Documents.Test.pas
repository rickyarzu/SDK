unit Janua.Orm.Documents.Test;

interface

uses DUnitX.TestFramework, JOrm.Documents.Intf;

type

  [TestFixture]
  TDocTest = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure DocHeadViewRecord;
    [Test]
    procedure DocRowViewRecord;
  end;

implementation

uses JOrm.Documents.Impl;

{ TDocTest }

procedure TDocTest.DocHeadViewRecord;
var
  lHead: IDocHeadView;
begin
  lHead := TDocHeadView.New;
  Assert.IsNotNull(lHead, 'lHead');
end;

procedure TDocTest.DocRowViewRecord;
var
  lRow: IDocRowView;
  lTest: Currency;
begin
  lRow := TDocRowView.New('DocHeadView');
  Assert.IsNotNull(lRow, 'lHead');
  lRow.Quantity.AsInteger := 1;
  lRow.Price.AsCurrency := 100.00;
  lRow.VatRate.AsFloat := 22;
  lTest := 100 * 1;
  Assert.AreEqual(lTest, lRow.NetAmount.AsCurrency);
  lTest := lTest * 0.22;
  Assert.AreEqual(lTest, lRow.VatAmount.AsCurrency);
  lTest := (100*1) + lTest;
  Assert.AreEqual(lTest, lRow.TotalAmount.AsCurrency);

end;

procedure TDocTest.Setup;
begin

end;

procedure TDocTest.TearDown;
begin

end;

initialization

TDUnitX.RegisterTestFixture(TDocTest);

end.
