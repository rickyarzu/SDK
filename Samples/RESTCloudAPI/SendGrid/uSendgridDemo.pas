unit uSendgridDemo;

interface

uses Vcl.TMSFNCCloudSendGrid;

type
  TSendGridTestClass = class
  private
    FTMSFNCCloudSendGrid: TTMSFNCCloudSendGrid;
    procedure SetTMSFNCCloudSendGrid(const Value: TTMSFNCCloudSendGrid);
  public
    constructor Create; overload;
    destructor Destroy; override;
  public
    property TMSFNCCloudSendGrid: TTMSFNCCloudSendGrid read FTMSFNCCloudSendGrid write SetTMSFNCCloudSendGrid;
  end;

implementation

{ TSendGridTestClass }

constructor TSendGridTestClass.Create;
begin
  FTMSFNCCloudSendGrid:= TTMSFNCCloudSendGrid.Create(nil)
end;

destructor TSendGridTestClass.Destroy;
begin
  FTMSFNCCloudSendGrid.Free;
  inherited;
end;

procedure TSendGridTestClass.SetTMSFNCCloudSendGrid(const Value: TTMSFNCCloudSendGrid);
begin
  FTMSFNCCloudSendGrid := Value;
end;

end.
