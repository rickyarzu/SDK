unit uframeFMXAnagraphPersonalMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Cloud, Janua.Core.Anagraph, Janua.FMX.Forms,
  Janua.Core.RESTClient.Health, Janua.Anagraph.Types,
  // FGX    // libreria componenti Firemonkey di
  // FGX.ProgressDialog,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSBaseControl,
  FMX.TMSBaseGroup, FMX.TMSRadioGroup, FMX.Edit, FMX.DateTimeCtrls, FMX.Controls.Presentation, FMX.Layouts;

type
  TframeFMXAnagraphPersonalMobile = class(TFrame)
    VertScrollBox1: TVertScrollBox;
    btnUndo: TButton;
    edLuogoNascita: TEdit;
    Panel4: TPanel;
    edBirthDate: TDateEdit;
    lbBirthDate: TLabel;
    edAddress: TEdit;
    edFiscalCode: TEdit;
    edFirstName: TEdit;
    edLastName: TEdit;
    Panel2: TPanel;
    rgGender: TTMSFMXRadioGroup;
    btnSave2: TButton;
    Layout1: TLayout;
    lbError: TLabel;
    procedure edLastNameChange(Sender: TObject);
    procedure edFirstNameChange(Sender: TObject);
    procedure edFiscalCodeChange(Sender: TObject);
    procedure edAddressChange(Sender: TObject);
    procedure rgGenderClick(Sender: TObject);
    procedure edBirthDateChange(Sender: TObject);
    procedure btnSave1Click(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
  private
    AlphaColorRec: TAlphaColorRec;
    FAnagraph: TJanuaAnagraphRecord;
    FChecked: boolean;
    FLasErrorMessage: string;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    FJanuaFMXFormManager: TJanuaFMXFormManager;
    procedure SetAnagraph(const Value: TJanuaAnagraphRecord);
    procedure UpdateFrame;
    procedure SetChecked(const Value: boolean);
    procedure SetLasErrorMessage(const Value: string);
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    procedure SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
    { Private declarations }
  public
    procedure Clear;
    procedure Default;
    function CheckAnagraph: boolean;
    procedure SetupFormManager;
  public
    { Public declarations }
    property JanuaFMXFormManager: TJanuaFMXFormManager read FJanuaFMXFormManager write SetJanuaFMXFormManager;
    property Checked: boolean read FChecked write SetChecked;
    property LasErrorMessage: string read FLasErrorMessage write SetLasErrorMessage;
    property Anagraph: TJanuaAnagraphRecord read FAnagraph write SetAnagraph;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
  end;

implementation

{$R *.fmx}
{ TframeFMXAnagraphPersonalMobile }

procedure TframeFMXAnagraphPersonalMobile.btnSave1Click(Sender: TObject);
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXAnagraphPersonalMobile.btnSave1Click JanuaRESTHealthClient not set');
  if self.CheckAnagraph then
  begin
    FChecked := True;
    if Assigned(FJanuaRESTHealthClient) then
    begin
      FJanuaRESTHealthClient.Relative := self.FAnagraph;
    end;
  end
  else
  begin
    self.FChecked := False;
  end;
end;

procedure TframeFMXAnagraphPersonalMobile.btnUndoClick(Sender: TObject);
begin
  self.FAnagraph.Clear;
  self.FJanuaRESTHealthClient.Relative.Clear;

end;

function TframeFMXAnagraphPersonalMobile.CheckAnagraph: boolean;
begin
  Result := False;
  self.FLasErrorMessage := '';
  begin
    if FAnagraph.FirstName = '' then
    begin
      FLasErrorMessage := 'Attenzione occorre inserire il Nome';
      // self.lbFirstName.FontColor := self.AlphaColorRec.Red;
    end
    else if FAnagraph.LastName = '' then
    begin
      FLasErrorMessage := 'Attenzione occorre inserire il Cognome';
      // self.lbLastName.FontColor := self.AlphaColorRec.Red;
    end
    else if FAnagraph.FiscalCode = '' then
    begin
      FLasErrorMessage := 'Attenzione occorre inserire il Codice Fiscale';
      // self.lbFiscalCode.FontColor := self.AlphaColorRec.Red;
    end
    else if Janua.Core.Functions.StringLength(FAnagraph.FiscalCode) <> 16 then
    // if not Janua.Core.Functions.VerifyFiscalCode(FAnagraph.FiscalCode, FLasErrorMessage) then
    begin
      // self.lbFiscalCode.FontColor := self.AlphaColorRec.Red;
      self.edFiscalCode.FontColor := self.AlphaColorRec.Red;
      FLasErrorMessage := 'Attenzione Codice Fiscale Errato';
    end
    else if FAnagraph.Gender.GenderIndex = -1 then
    begin
      FLasErrorMessage := 'Attenzione occorre indicare il sesso';
      self.rgGender.FontColor := self.AlphaColorRec.Red;
    end
    else if FAnagraph.an_birthdate = -1 then
    begin
      FLasErrorMessage := 'Attenzione occorre indicare il sesso';
      self.rgGender.FontColor := self.AlphaColorRec.Red;
    end
    else
    begin
      Result := True;
    end;
    self.FChecked := Result;
  end;
  self.lbError.Text := self.FLasErrorMessage;
  self.lbError.Visible := not self.FChecked;
end;

procedure TframeFMXAnagraphPersonalMobile.Clear;
begin
  self.FAnagraph.Clear;
  UpdateFrame;
end;

procedure TframeFMXAnagraphPersonalMobile.Default;
begin
  self.UpdateFrame
end;

procedure TframeFMXAnagraphPersonalMobile.edAddressChange(Sender: TObject);
begin
  self.FAnagraph.Address.AddressFull := self.edAddress.Text;
end;

procedure TframeFMXAnagraphPersonalMobile.edBirthDateChange(Sender: TObject);
begin
  self.FAnagraph.an_birthdate := edBirthDate.Date;
end;

procedure TframeFMXAnagraphPersonalMobile.edFirstNameChange(Sender: TObject);
begin
  self.FAnagraph.FirstName := self.edFirstName.Text;
end;

procedure TframeFMXAnagraphPersonalMobile.edFiscalCodeChange(Sender: TObject);
var
  vErrore: string;
begin
  self.FAnagraph.FiscalCode := self.edFiscalCode.Text.ToUpper;

  if (Janua.Core.Functions.StringLength(FAnagraph.FiscalCode) <> 16) then
  begin
    edFiscalCode.FontColor := self.AlphaColorRec.Red;
    ShowMessage(vErrore);
  end
  else
  begin
    edFiscalCode.FontColor := self.AlphaColorRec.Black;
  end;
  {
    if (Janua.Core.Functions.StringLength(FAnagraph.FiscalCode) <> 16) then
    // if not   Janua.Core.Functions.VerifyFiscalCode(FAnagraph.FiscalCode, vErrore) then
    begin
    edFiscalCode.FontColor := self.AlphaColorRec.Red;
    ShowMessage('Codice fiscale di lunghezza errata');
    end
    else
    begin
    edFiscalCode.FontColor := self.AlphaColorRec.Black;
    end;
  }
end;

procedure TframeFMXAnagraphPersonalMobile.edLastNameChange(Sender: TObject);
begin
  self.FAnagraph.LastName := self.edLastName.Text;
end;

procedure TframeFMXAnagraphPersonalMobile.rgGenderClick(Sender: TObject);
begin
  self.FAnagraph.Gender.GenderIndex := self.rgGender.ItemIndex;
end;

procedure TframeFMXAnagraphPersonalMobile.SetAnagraph(const Value: TJanuaAnagraphRecord);
begin
  FAnagraph := Value;
  UpdateFrame;
end;

procedure TframeFMXAnagraphPersonalMobile.SetChecked(const Value: boolean);
begin
  FChecked := Value;
end;

procedure TframeFMXAnagraphPersonalMobile.SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
begin
  FJanuaFMXFormManager := Value;
end;

procedure TframeFMXAnagraphPersonalMobile.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
end;

procedure TframeFMXAnagraphPersonalMobile.SetLasErrorMessage(const Value: string);
begin
  FLasErrorMessage := Value;
end;

procedure TframeFMXAnagraphPersonalMobile.SetupFormManager;
begin
  FJanuaFMXFormManager.VertScrollBox := self.VertScrollBox1;
  FJanuaFMXFormManager.MainLayout := self.Layout1;
  FJanuaFMXFormManager.Activate;
  // FJanuaFMXFormManager.MainLayout :=
end;

procedure TframeFMXAnagraphPersonalMobile.UpdateFrame;
begin
  self.edLastName.Text := self.FAnagraph.LastName;
  self.edFirstName.Text := self.FAnagraph.FirstName;
  self.edFiscalCode.Text := self.FAnagraph.FiscalCode;
  self.edAddress.Text := self.FAnagraph.Address.AddressFull;
  self.rgGender.ItemIndex := self.FAnagraph.Gender.GenderIndex;
  edBirthDate.Date := self.FAnagraph.an_birthdate;
end;

end.
