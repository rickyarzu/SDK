unit rpDM;

interface

uses
  SysUtils, Classes, ppParameter, ppDesignLayer, ppBands, ppStrtch, ppMemo,
  ppCtrls, Vcl.Imaging.pngimage, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppPDFDevice;

type
  TrepDataModule = class(TDataModule)
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppImage1: TppImage;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel15: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel10: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
  private
    InvNum: string;
    procedure CloseDS;
    procedure OpenDS;
    { Private declarations }
  public
    { Public declarations }
    function GenRep(const InvN: string): string;
  end;

implementation

uses
  MainModule, ServerModule;

{$R *.dfm}


{ TrepDataModule }

function TrepDataModule.GenRep(const InvN: string): string;
var
 lPDFDevice:  TppPDFDevice;
begin
  InvNum := InvN;
  OpenDS();
  lPDFDevice    := TppPDFDevice.Create(nil);
  try
    lPDFDevice.PDFSettings := ppReport1.PDFSettings;
    lPDFDevice.FileName    := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', Result, True);
    lPDFDevice.Publisher   := ppReport1.Publisher;

    // generate the report

    ppReport1.PrintToDevices;
  finally
    lPDFDevice.Free;
    CloseDS;
  end;
end;

procedure TrepDataModule.CloseDS;
begin
  UniMainModule.ADOQuery1.Close;
end;

procedure TrepDataModule.OpenDS;
begin
  UniMainModule.ADOQuery1.Close;
  UniMainModule.ADOQuery1.SQL.Clear;
  UniMainModule.ADOQuery1.SQL.Add('SELECT *, InvDetailQty*InvDetailProdPrice as Total FROM ((tblInv INNER JOIN tblCust ON tblCust.CustNum = tblInv.InvCustNum) INNER JOIN tblInvDetail ON tblInvDetail.InvDetailInvNum = tblInv.InvNum) WHERE InvNum=:Num;');
  UniMainModule.ADOQuery1.Parameters.ParamByName('Num').Value := InvNum;
  UniMainModule.ADOQuery1.Open;
end;

end.
