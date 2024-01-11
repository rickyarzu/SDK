unit ufrmMDCTestStatisticsQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmMDCStatisticsQueries, Janua.Core.Classes,
  Janua.VCL.Statistics.MainFormController, Vcl.Menus, AdvMenus, System.ImageList, Vcl.ImgList, AdvAppStyler,
  AdvOfficePager, Vcl.ComCtrls, Vcl.ExtCtrls, AdvSplitter, Janua.VCL.Dialogs;

type
  TfrmMDCTestStatisticsQueries = class(TfrmMDCStatisticsQueries)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMDCTestStatisticsQueries: TfrmMDCTestStatisticsQueries;

implementation

{$R *.dfm}

uses udmJanuaCoreTesting;

end.
