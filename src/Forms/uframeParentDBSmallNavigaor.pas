unit uframeParentDBSmallNavigaor;

interface

uses
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,  ExtCtrls, DBCtrls, Buttons, OleServer,     Math,   ExcelXP, Functions, 
   JvComponent, JvSpeedButton, JvxSpeedButton, Shader ,  ShellApI, 
  StdCtrls,  Variants,   DBClient, Midaslib, JvExControls,  Windows  ,
  UFlxMessages, UCustomFlexcelReport, UFlxFormats , EnhCrDBGrid, 
   AdvPanel, Menus, AdvMenus,   UFlexCelReport,
  UExcelAdapter, XLSAdapter, AdvGlowButton, AdvAppStyler, OLEAdapter, Excel2000,
  Grids, BaseGrid, AdvGrid, DBAdvGrid;

type
  TframeParentDBSmallNavigaor = class(TFrame)
    DataSource: TDataSource;
    ExcelApplication1: TExcelApplication;
    dsDetail: TDataSource;
    dsParent: TDataSource;
    dsSql: TDataSource;
    Shader1: TShader;
    btnPrimo: TAdvGlowButton;
    btnPrev: TAdvGlowButton;
    btnNext: TAdvGlowButton;
    btnLast: TAdvGlowButton;
    btnNuovo: TAdvGlowButton;
    dbNavigator: TDBNavigator;
    btnModifica: TAdvGlowButton;
    btnSalva: TAdvGlowButton;
    btnAnnulla: TAdvGlowButton;
    btElimina: TAdvGlowButton;
    btnExcel: TAdvGlowButton;
    btnHelp: TAdvGlowButton;
    btnRefresh: TAdvGlowButton;
    lbWebsite: TLabel;
    AdvPopupMenu1: TAdvPopupMenu;
    EsportaSuExcel1: TMenuItem;
    CreaReport1: TMenuItem;
    VediReport1: TMenuItem;
    N1: TMenuItem;
    InviaViaMail1: TMenuItem;
    SalvainHTML1: TMenuItem;
    JvxSpeedButton1: TAdvGlowButton;
    btnPdf: TAdvGlowButton;
    AdvFormStyler1: TAdvFormStyler;
    FlexCelReport1: TFlexCelReport;
    XLSAdapter1: TXLSAdapter;
    OLEAdapter1: TOLEAdapter;
    DBAdvGrid1: TDBAdvGrid;
    grdStampa: TDBAdvGrid;
    procedure btnRefreshClick(Sender: TObject);
    procedure InviaViaMail1Click(Sender: TObject);
    procedure VediReport1Click(Sender: TObject);
    procedure CreaReport1Click(Sender: TObject);
    procedure btnNuovoClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnAnnullaClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure btnModificaClick(Sender: TObject);
    procedure btnPrimoClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    function  Verifica: boolean;
    procedure SetColor(MainColor: integer);
    procedure JvxSpeedButton1Click(Sender: TObject);
  private
    FReferenceGrid: TEnhCrDbGrid;
    FSilent: Boolean;
    procedure ExecuteReport;
    function VerificaExcel: boolean;
    procedure SetSilent(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
  published
    property ReferenceGrid: TEnhCrDbGrid read FReferenceGrid write FReferenceGrid;
    property Silent: Boolean read FSilent write SetSilent;
  end;

implementation


{$R *.DFM}


procedure TframeParentDBSmallNavigaor.SetColor(MainColor: integer);
var
   i: integer;
begin
// non fa + nulla ...

end;

procedure TframeParentDBSmallNavigaor.SetSilent(const Value: Boolean);
begin
  FSilent := Value;
end;

procedure TframeParentDBSmallNavigaor.btnNuovoClick(Sender: TObject);
begin
     if not verifica then exit;
     
     if assigned(Datasource.DataSet) then Datasource.DataSet.insert;
end;

procedure TframeParentDBSmallNavigaor.btEliminaClick(Sender: TObject);
begin
     if not verifica then exit;
     
     if assigned(Datasource.DataSet) then begin
     if Datasource.DataSet.RecordCount > 0 then
     if JMessageDlg('Attenzione, la riga selezionata sarà cancellata. Procedo?')then
        Datasource.DataSet.Delete;
     end;
end;

procedure TframeParentDBSmallNavigaor.btnSalvaClick(Sender: TObject);
begin
   if not verifica then exit;
   
   if assigned(Datasource.DataSet) then
   begin
    if ((Datasource.Dataset.State = dsInsert) or
       (Datasource.Dataset.State = dsEdit)) then
       Datasource.DataSet.Post;
    if (Datasource.DataSet is TClientDataset)  then
       if TClientDataset(Datasource.DataSet).ProviderName > '' then
           TClientDataset(Datasource.DataSet).ApplyUpdates(-1);
    end;
end;

procedure TframeParentDBSmallNavigaor.CreaReport1Click(Sender: TObject);
var
  filename, filetemplate: PAnsiChar;
begin
    if FlexCelReport1.Template = '' then
    begin
       FlexCelReport1.Template := 'c:\januaproject\resources\flexcel\'+ self.Name + Owner.Name +'.xls';
       filetemplate := PAnsiChar('c:\januaproject\resources\flexcel\'+ self.Name + Owner.Name +'.xls');
       //***********************************************************************
       //** se non esiste un template già pronto per il file occorre crearlo ***
       //***********************************************************************
       if not FileExists(FlexCelReport1.Template) then
          CopyFile('c:\januaproject\resources\flexcel\template.xls', filetemplate, True);
    end;

    // ******* imposto se non è impostato il file name del Flexcel report ******
    if FlexCelReport1.FileName = '' then
       FlexCelReport1.FileName := 'c:\januaproject\temp\' + self.Name + Owner.Name   +'.xls';
    filename := PAnsiChar('c:\januaproject\temp\' + Owner.Name +'.xls');

    CopyFile(filetemplate, filename, True);

    if FlexCelReport1.DataModule.Name = self.Name
    then
       FlexCelReport1.DataModule := Datasource.DataSet.Owner;


  //  InvokeExcelEditor(FlexCelReport1);
end;

procedure TframeParentDBSmallNavigaor.btnAnnullaClick(Sender: TObject);
begin
    if not verifica then exit;
    if assigned(Datasource.DataSet) then DataSource.DataSet.Cancel;
end;


procedure TframeParentDBSmallNavigaor.btnExcelClick(Sender: TObject);
begin
    if not verifica then exit;
   // dmApplicationStart.ExcelExport(Datasource.DataSet, dsDetail.DataSet);
end;




procedure TframeParentDBSmallNavigaor.btnHelpClick(Sender: TObject);
begin
     if lbWebsite.Caption <> 'lbWebsite' then
     begin
         // dmImpostazionicomandi.ViewHelp(lbWebsite.Caption);
         // occorrerà implementare un componente di Gestione Help Centralizzati..
     end;
end;

procedure TframeParentDBSmallNavigaor.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
     if Assigned(Datasource.DataSet) then
     begin
         if DataSource.DataSet.Active then
         begin
          btnNuovo.Enabled := DataSource.DataSet.CanModify;
          btnModifica.Enabled := DataSource.DataSet.CanModify
                                 and
                                 (DataSource.DataSet.RecordCount > 0);
                                 
          btnSalva.Enabled :=   (DataSource.DataSet.Modified
                                 or
                                 (DataSource.DataSet.State = dsInsert));

          if (Datasource.DataSet is TClientDataset) and not btnSalva.Enabled
              then
                 if (TClientDataset(Datasource.DataSet).ProviderName > '') then
                 if (TClientDataset(Datasource.DataSet).ChangeCount > 0) then
                    btnSalva.Enabled := True;

          btnAnnulla.Enabled := (DataSource.DataSet.Modified
                                 or
                                 (DataSource.DataSet.State = dsInsert));

          if (Datasource.DataSet is TClientDataset) and not btnAnnulla.Enabled
              then
                 if (TClientDataset(Datasource.DataSet).ProviderName > '') then
                 if (TClientDataset(Datasource.DataSet).ChangeCount > 0) then
                    btnAnnulla.Enabled := True;

          btElimina.Enabled := DataSource.DataSet.CanModify
                               and
                               (DataSource.DataSet.RecordCount > 0);
                               
          btnExcel.Enabled :=(DataSource.DataSet.RecordCount > 0);
          btnHelp.Enabled := True;
          btnPrimo.Enabled := not Datasource.DataSet.Bof and (DataSource.DataSet.RecordCount > 0);
          btnPrev.Enabled := not Datasource.DataSet.Bof and (DataSource.DataSet.RecordCount > 0);
          btnLast.Enabled :=  not Datasource.DataSet.Eof and (DataSource.DataSet.RecordCount > 0);
          btnNext.Enabled :=  not Datasource.DataSet.Eof and (DataSource.DataSet.RecordCount > 0);
         end
         else
         begin
            btnPrimo.Enabled := False;
            btnPrev.Enabled := False;
            btnLast.Enabled := False;
            btnNext.Enabled := False;
            btnExcel.Enabled := False;
            btElimina.Enabled := False;
            
         end;
     end;
end;

procedure TframeParentDBSmallNavigaor.VediReport1Click(Sender: TObject);
begin
    if  VerificaExcel then
    begin
        ExecuteReport;
        ShellExecute( Handle,'open', PCHAR(FlexCelReport1.FileName), NIL,NIL, SW_SHOW)
    end;
end;

function TframeParentDBSmallNavigaor.Verifica: boolean;
begin
     if not Assigned(Datasource.DataSet) then
     begin
        JShowError
        ('Attenzione barra non utilizzabile, manca collegamento dati. Segnalate questo errore all''assistenza','','');
        Result := False
     end
     else
     result := True;
end;

procedure TframeParentDBSmallNavigaor.ExecuteReport;
var
   filename: PAnsiChar;

begin

  if Verifica  then
  begin
     filename := PAnsiChar(FlexCelReport1.FileName);
     if FileExists(FlexCelReport1.FileName) then DeleteFile(filename);
     Application.ProcessMessages;
     FlexCelReport1.Run;
  end;
end;

function TframeParentDBSmallNavigaor.VerificaExcel: Boolean;
var
   Present: TDateTime;
   Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
     Present :=  Now();

     // dmApplicationStart.DateTime;
     DecodeDate(Present , Year, Month, Day);
     DecodeTime(Present, Hour, Min, Sec, MSec);
     FlexCelReport1.FileName := 'c:\januaproject\temp\' +
                                IntTostr(Year) + IntTostr(Month) + IntTostr(Month)
                               + IntTostr(Day) + IntTostr(Hour) + IntTostr(Min)
                               +'.xls';

  if FlexCelReport1.DataModule.Name = self.Name
    then
       FlexCelReport1.DataModule := Datasource.DataSet.Owner;
  Result := True;
  if (FlexCelReport1.Template = '')   then
      FlexCelReport1.Template := 'c:\januaproject\resources\flexcel\' + Name 
          + Owner.Name +'.xls';
  if  FileExists( FlexCelReport1.Template ) then
  begin
      Result := True
  end
  else
  begin
       JShowWarning('Attenzione create prima un report andando su modifica report','','');
       Result := False;
  end;
end;

procedure TframeParentDBSmallNavigaor.InviaViaMail1Click(Sender: TObject);
begin
    if verifica and verificaexcel then
    begin
        ExecuteReport;

        //dlgMail.frameMail1.AddAttachment(FlexCelReport1.FileName );
        //dlgMail.ShowModal;
    end;
end;

procedure TframeParentDBSmallNavigaor.JvxSpeedButton1Click(Sender: TObject);
begin
 // comando di stampa da implementare
 JShowWarning('Comando non implementato completamente', '', '');
end;

procedure TframeParentDBSmallNavigaor.btnModificaClick(Sender: TObject);
begin
      if not verifica then exit;
      
     if assigned(Datasource.DataSet) then Datasource.DataSet.Edit;
end;

procedure TframeParentDBSmallNavigaor.btnPrimoClick(Sender: TObject);
begin
     if not verifica then exit;
     
     if Datasource.DataSet.RecordCount > 0 then
        if not Datasource.DataSet.Bof then Datasource.DataSet.First;
end;

procedure TframeParentDBSmallNavigaor.btnRefreshClick(Sender: TObject);
var
   Bookmark: TBookmark;
begin
     if not verifica then exit;
     if Datasource.DataSet.RecordCount > 0 then
     begin
       Bookmark := Datasource.DataSet.GetBookmark;
       Datasource.DataSet.Close;
       Datasource.DataSet.Open;
        if Datasource.DataSet.RecordCount > 0 then
        try
          Datasource.DataSet.GotoBookmark(Bookmark);
        except on e: exception
        do
          begin
              JShowWarning('Attenzione, la riga su cui eravate non è più in elenco', e.Message, '');
          end;
        end;
     end
     else
     begin
          Datasource.DataSet.Close;
          Datasource.DataSet.Open;
     end;
end;

procedure TframeParentDBSmallNavigaor.btnPrevClick(Sender: TObject);
begin
     if not verifica then exit;

     if Datasource.DataSet.RecordCount > 0 then
        if not Datasource.DataSet.Bof then Datasource.DataSet.Prior;
end;

procedure TframeParentDBSmallNavigaor.btnNextClick(Sender: TObject);
begin
      if not verifica then exit;
      
     if Datasource.DataSet.RecordCount > 0 then
        if not Datasource.DataSet.Eof then Datasource.DataSet.Next;
end;

procedure TframeParentDBSmallNavigaor.btnLastClick(Sender: TObject);
begin
     if not verifica then exit;
     
     if Datasource.DataSet.RecordCount > 0 then
        if not Datasource.DataSet.Eof then Datasource.DataSet.Last;
end;

end.
