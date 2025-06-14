unit Phoenix.Json.Config.DTO;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, Janua.Core.Json.DTO, REST.Json.Types;

{$M+}

type
  TContratti = class
  private
    [JSONName('CAP_FATTURAZIONE')]
    FCAPFATTURAZIONE: string;
    [JSONName('CELLULARE')]
    FCELLULARE: string;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('CODICE_FISCALE')]
    FCODICEFISCALE: string;
    [JSONName('COMUNE_FATTURAZIONE')]
    FCOMUNEFATTURAZIONE: string;
    [SuppressZero, JSONName('DATA_CONTRATTO')]
    FDATACONTRATTO: TDateTime;
    [JSONName('DESCRIZIONE_SCHEDA')]
    FDESCRIZIONESCHEDA: string;
    FEMAIL: string;
    [JSONName('INDIRIZZO_FATTURAZIONE')]
    FINDIRIZZOFATTURAZIONE: string;
    [JSONName('PARTITA_IVA')]
    FPARTITAIVA: string;
    [JSONName('PROVINCIA_FATTURAZIONE')]
    FPROVINCIAFATTURAZIONE: string;
    [JSONName('RAGIONE_SOCIALE')]
    FRAGIONESOCIALE: string;
    [JSONName('RAG_SOC_AMMINISTRATORE')]
    FRAGSOCAMMINISTRATORE: string;
    FTELEFONO1: string;
  published
    property CAPFATTURAZIONE: string read FCAPFATTURAZIONE write FCAPFATTURAZIONE;
    property CELLULARE: string read FCELLULARE write FCELLULARE;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property CODICEFISCALE: string read FCODICEFISCALE write FCODICEFISCALE;
    property COMUNEFATTURAZIONE: string read FCOMUNEFATTURAZIONE write FCOMUNEFATTURAZIONE;
    property DATACONTRATTO: TDateTime read FDATACONTRATTO write FDATACONTRATTO;
    property DESCRIZIONESCHEDA: string read FDESCRIZIONESCHEDA write FDESCRIZIONESCHEDA;
    property EMAIL: string read FEMAIL write FEMAIL;
    property INDIRIZZOFATTURAZIONE: string read FINDIRIZZOFATTURAZIONE write FINDIRIZZOFATTURAZIONE;
    property PARTITAIVA: string read FPARTITAIVA write FPARTITAIVA;
    property PROVINCIAFATTURAZIONE: string read FPROVINCIAFATTURAZIONE write FPROVINCIAFATTURAZIONE;
    property RAGIONESOCIALE: string read FRAGIONESOCIALE write FRAGIONESOCIALE;
    property RAGSOCAMMINISTRATORE: string read FRAGSOCAMMINISTRATORE write FRAGSOCAMMINISTRATORE;
    property TELEFONO1: string read FTELEFONO1 write FTELEFONO1;
  end;
  
  TTIPOPORTE = class
  private
    FChiave: Integer;
    FDescrizione: string;
    FTipologia: Integer;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
    property Tipologia: Integer read FTipologia write FTipologia;
  end;
  
  TTIPIRILEVATORILINEARIFUMI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMARCHERILLINEARIFUMI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPICENTRALIFUMI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMARCHECENTRALIFUMI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPIELEMIMPIANTIELETTRICI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPOLANCIA = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPOBOCCHELLI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPIMOTOPOMPEIDRANTI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMOTIVCONTROLLONEGATO = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMOTIVRITIROESTINTORI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMARCHELUCI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPOLUCI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMARCHEMANIGLIONEPORTE = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPIMANIGLIONIPORTE = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPISERRATURE = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMARCHEPORTE = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMARCHEELEMIMPIANTIELETTRICI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMARCHESPRINKLER = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPISPRINKLER = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TMARCHEESTINTORI = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPIINSTALLAZIONEPORTE = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TTIPIBATTERIE = class
  private
    FChiave: Integer;
    FDescrizione: string;
  published
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;
  
  TConfRoot = class(TJanuaJsonDTO)
  private
    [JSONName('Contratti'), JSONMarshalled(False)]
    FContrattiArray: TArray<TContratti>;
    [GenericListReflect]
    FContratti: TObjectList<TContratti>;
    [JSONName('MARCHE_CENTRALI_FUMI'), JSONMarshalled(False)]
    FMARCHECENTRALIFUMIArray: TArray<TMARCHECENTRALIFUMI>;
    [GenericListReflect]
    FMARCHECENTRALIFUMI: TObjectList<TMARCHECENTRALIFUMI>;
    [JSONName('MARCHE_ELEM_IMPIANTI_ELETTRICI'), JSONMarshalled(False)]
    FMARCHEELEMIMPIANTIELETTRICIArray: TArray<TMARCHEELEMIMPIANTIELETTRICI>;
    [GenericListReflect]
    FMARCHEELEMIMPIANTIELETTRICI: TObjectList<TMARCHEELEMIMPIANTIELETTRICI>;
    [JSONName('MARCHE_ESTINTORI'), JSONMarshalled(False)]
    FMARCHEESTINTORIArray: TArray<TMARCHEESTINTORI>;
    [GenericListReflect]
    FMARCHEESTINTORI: TObjectList<TMARCHEESTINTORI>;
    [JSONName('MARCHE_LUCI'), JSONMarshalled(False)]
    FMARCHELUCIArray: TArray<TMARCHELUCI>;
    [GenericListReflect]
    FMARCHELUCI: TObjectList<TMARCHELUCI>;
    [JSONName('MARCHE_MANIGLIONE_PORTE'), JSONMarshalled(False)]
    FMARCHEMANIGLIONEPORTEArray: TArray<TMARCHEMANIGLIONEPORTE>;
    [GenericListReflect]
    FMARCHEMANIGLIONEPORTE: TObjectList<TMARCHEMANIGLIONEPORTE>;
    [JSONName('MARCHE_PORTE'), JSONMarshalled(False)]
    FMARCHEPORTEArray: TArray<TMARCHEPORTE>;
    [GenericListReflect]
    FMARCHEPORTE: TObjectList<TMARCHEPORTE>;
    [JSONName('MARCHE_RIL_LINEARI_FUMI'), JSONMarshalled(False)]
    FMARCHERILLINEARIFUMIArray: TArray<TMARCHERILLINEARIFUMI>;
    [GenericListReflect]
    FMARCHERILLINEARIFUMI: TObjectList<TMARCHERILLINEARIFUMI>;
    [JSONName('MARCHE_SPRINKLER'), JSONMarshalled(False)]
    FMARCHESPRINKLERArray: TArray<TMARCHESPRINKLER>;
    [GenericListReflect]
    FMARCHESPRINKLER: TObjectList<TMARCHESPRINKLER>;
    [JSONName('MOTIV_CONTROLLO_NEGATO'), JSONMarshalled(False)]
    FMOTIVCONTROLLONEGATOArray: TArray<TMOTIVCONTROLLONEGATO>;
    [GenericListReflect]
    FMOTIVCONTROLLONEGATO: TObjectList<TMOTIVCONTROLLONEGATO>;
    [JSONName('MOTIV_RITIRO_ESTINTORI'), JSONMarshalled(False)]
    FMOTIVRITIROESTINTORIArray: TArray<TMOTIVRITIROESTINTORI>;
    [GenericListReflect]
    FMOTIVRITIROESTINTORI: TObjectList<TMOTIVRITIROESTINTORI>;
    [JSONName('TIPI_BATTERIE'), JSONMarshalled(False)]
    FTIPIBATTERIEArray: TArray<TTIPIBATTERIE>;
    [GenericListReflect]
    FTIPIBATTERIE: TObjectList<TTIPIBATTERIE>;
    [JSONName('TIPI_CENTRALI_FUMI'), JSONMarshalled(False)]
    FTIPICENTRALIFUMIArray: TArray<TTIPICENTRALIFUMI>;
    [GenericListReflect]
    FTIPICENTRALIFUMI: TObjectList<TTIPICENTRALIFUMI>;
    [JSONName('TIPI_ELEM_IMPIANTI_ELETTRICI'), JSONMarshalled(False)]
    FTIPIELEMIMPIANTIELETTRICIArray: TArray<TTIPIELEMIMPIANTIELETTRICI>;
    [GenericListReflect]
    FTIPIELEMIMPIANTIELETTRICI: TObjectList<TTIPIELEMIMPIANTIELETTRICI>;
    [JSONName('TIPI_INSTALLAZIONE_PORTE'), JSONMarshalled(False)]
    FTIPIINSTALLAZIONEPORTEArray: TArray<TTIPIINSTALLAZIONEPORTE>;
    [GenericListReflect]
    FTIPIINSTALLAZIONEPORTE: TObjectList<TTIPIINSTALLAZIONEPORTE>;
    [JSONName('TIPI_MANIGLIONI_PORTE'), JSONMarshalled(False)]
    FTIPIMANIGLIONIPORTEArray: TArray<TTIPIMANIGLIONIPORTE>;
    [GenericListReflect]
    FTIPIMANIGLIONIPORTE: TObjectList<TTIPIMANIGLIONIPORTE>;
    [JSONName('TIPI_MOTOPOMPE_IDRANTI'), JSONMarshalled(False)]
    FTIPIMOTOPOMPEIDRANTIArray: TArray<TTIPIMOTOPOMPEIDRANTI>;
    [GenericListReflect]
    FTIPIMOTOPOMPEIDRANTI: TObjectList<TTIPIMOTOPOMPEIDRANTI>;
    [JSONName('TIPI_RILEVATORI_LINEARI_FUMI'), JSONMarshalled(False)]
    FTIPIRILEVATORILINEARIFUMIArray: TArray<TTIPIRILEVATORILINEARIFUMI>;
    [GenericListReflect]
    FTIPIRILEVATORILINEARIFUMI: TObjectList<TTIPIRILEVATORILINEARIFUMI>;
    [JSONName('TIPI_SERRATURE'), JSONMarshalled(False)]
    FTIPISERRATUREArray: TArray<TTIPISERRATURE>;
    [GenericListReflect]
    FTIPISERRATURE: TObjectList<TTIPISERRATURE>;
    [JSONName('TIPI_SPRINKLER'), JSONMarshalled(False)]
    FTIPISPRINKLERArray: TArray<TTIPISPRINKLER>;
    [GenericListReflect]
    FTIPISPRINKLER: TObjectList<TTIPISPRINKLER>;
    [JSONName('TIPO_BOCCHELLI'), JSONMarshalled(False)]
    FTIPOBOCCHELLIArray: TArray<TTIPOBOCCHELLI>;
    [GenericListReflect]
    FTIPOBOCCHELLI: TObjectList<TTIPOBOCCHELLI>;
    [JSONName('TIPO_LANCIA'), JSONMarshalled(False)]
    FTIPOLANCIAArray: TArray<TTIPOLANCIA>;
    [GenericListReflect]
    FTIPOLANCIA: TObjectList<TTIPOLANCIA>;
    [JSONName('TIPO_LUCI'), JSONMarshalled(False)]
    FTIPOLUCIArray: TArray<TTIPOLUCI>;
    [GenericListReflect]
    FTIPOLUCI: TObjectList<TTIPOLUCI>;
    [JSONName('TIPO_PORTE'), JSONMarshalled(False)]
    FTIPOPORTEArray: TArray<TTIPOPORTE>;
    [GenericListReflect]
    FTIPOPORTE: TObjectList<TTIPOPORTE>;
    function GetContratti: TObjectList<TContratti>;
    function GetMARCHECENTRALIFUMI: TObjectList<TMARCHECENTRALIFUMI>;
    function GetMARCHEELEMIMPIANTIELETTRICI: TObjectList<TMARCHEELEMIMPIANTIELETTRICI>;
    function GetMARCHEESTINTORI: TObjectList<TMARCHEESTINTORI>;
    function GetMARCHELUCI: TObjectList<TMARCHELUCI>;
    function GetMARCHEMANIGLIONEPORTE: TObjectList<TMARCHEMANIGLIONEPORTE>;
    function GetMARCHEPORTE: TObjectList<TMARCHEPORTE>;
    function GetMARCHERILLINEARIFUMI: TObjectList<TMARCHERILLINEARIFUMI>;
    function GetMARCHESPRINKLER: TObjectList<TMARCHESPRINKLER>;
    function GetMOTIVCONTROLLONEGATO: TObjectList<TMOTIVCONTROLLONEGATO>;
    function GetMOTIVRITIROESTINTORI: TObjectList<TMOTIVRITIROESTINTORI>;
    function GetTIPIBATTERIE: TObjectList<TTIPIBATTERIE>;
    function GetTIPICENTRALIFUMI: TObjectList<TTIPICENTRALIFUMI>;
    function GetTIPIELEMIMPIANTIELETTRICI: TObjectList<TTIPIELEMIMPIANTIELETTRICI>;
    function GetTIPIINSTALLAZIONEPORTE: TObjectList<TTIPIINSTALLAZIONEPORTE>;
    function GetTIPIMANIGLIONIPORTE: TObjectList<TTIPIMANIGLIONIPORTE>;
    function GetTIPIMOTOPOMPEIDRANTI: TObjectList<TTIPIMOTOPOMPEIDRANTI>;
    function GetTIPIRILEVATORILINEARIFUMI: TObjectList<TTIPIRILEVATORILINEARIFUMI>;
    function GetTIPISERRATURE: TObjectList<TTIPISERRATURE>;
    function GetTIPISPRINKLER: TObjectList<TTIPISPRINKLER>;
    function GetTIPOBOCCHELLI: TObjectList<TTIPOBOCCHELLI>;
    function GetTIPOLANCIA: TObjectList<TTIPOLANCIA>;
    function GetTIPOLUCI: TObjectList<TTIPOLUCI>;
    function GetTIPOPORTE: TObjectList<TTIPOPORTE>;
  protected
    function GetAsJson: string; override;
  published
    property Contratti: TObjectList<TContratti> read GetContratti;
    property MARCHECENTRALIFUMI: TObjectList<TMARCHECENTRALIFUMI> read GetMARCHECENTRALIFUMI;
    property MARCHEELEMIMPIANTIELETTRICI: TObjectList<TMARCHEELEMIMPIANTIELETTRICI> read GetMARCHEELEMIMPIANTIELETTRICI;
    property MARCHEESTINTORI: TObjectList<TMARCHEESTINTORI> read GetMARCHEESTINTORI;
    property MARCHELUCI: TObjectList<TMARCHELUCI> read GetMARCHELUCI;
    property MARCHEMANIGLIONEPORTE: TObjectList<TMARCHEMANIGLIONEPORTE> read GetMARCHEMANIGLIONEPORTE;
    property MARCHEPORTE: TObjectList<TMARCHEPORTE> read GetMARCHEPORTE;
    property MARCHERILLINEARIFUMI: TObjectList<TMARCHERILLINEARIFUMI> read GetMARCHERILLINEARIFUMI;
    property MARCHESPRINKLER: TObjectList<TMARCHESPRINKLER> read GetMARCHESPRINKLER;
    property MOTIVCONTROLLONEGATO: TObjectList<TMOTIVCONTROLLONEGATO> read GetMOTIVCONTROLLONEGATO;
    property MOTIVRITIROESTINTORI: TObjectList<TMOTIVRITIROESTINTORI> read GetMOTIVRITIROESTINTORI;
    property TIPIBATTERIE: TObjectList<TTIPIBATTERIE> read GetTIPIBATTERIE;
    property TIPICENTRALIFUMI: TObjectList<TTIPICENTRALIFUMI> read GetTIPICENTRALIFUMI;
    property TIPIELEMIMPIANTIELETTRICI: TObjectList<TTIPIELEMIMPIANTIELETTRICI> read GetTIPIELEMIMPIANTIELETTRICI;
    property TIPIINSTALLAZIONEPORTE: TObjectList<TTIPIINSTALLAZIONEPORTE> read GetTIPIINSTALLAZIONEPORTE;
    property TIPIMANIGLIONIPORTE: TObjectList<TTIPIMANIGLIONIPORTE> read GetTIPIMANIGLIONIPORTE;
    property TIPIMOTOPOMPEIDRANTI: TObjectList<TTIPIMOTOPOMPEIDRANTI> read GetTIPIMOTOPOMPEIDRANTI;
    property TIPIRILEVATORILINEARIFUMI: TObjectList<TTIPIRILEVATORILINEARIFUMI> read GetTIPIRILEVATORILINEARIFUMI;
    property TIPISERRATURE: TObjectList<TTIPISERRATURE> read GetTIPISERRATURE;
    property TIPISPRINKLER: TObjectList<TTIPISPRINKLER> read GetTIPISPRINKLER;
    property TIPOBOCCHELLI: TObjectList<TTIPOBOCCHELLI> read GetTIPOBOCCHELLI;
    property TIPOLANCIA: TObjectList<TTIPOLANCIA> read GetTIPOLANCIA;
    property TIPOLUCI: TObjectList<TTIPOLUCI> read GetTIPOLUCI;
    property TIPOPORTE: TObjectList<TTIPOPORTE> read GetTIPOPORTE;
  public
    destructor Destroy; override;
  end;
  
implementation

{ TConfRoot }

destructor TConfRoot.Destroy;
begin
  GetTIPIBATTERIE.Free;
  GetTIPIINSTALLAZIONEPORTE.Free;
  GetMARCHEESTINTORI.Free;
  GetTIPISPRINKLER.Free;
  GetMARCHESPRINKLER.Free;
  GetMARCHEELEMIMPIANTIELETTRICI.Free;
  GetTIPIRILEVATORILINEARIFUMI.Free;
  GetTIPOPORTE.Free;
  GetMARCHEPORTE.Free;
  GetTIPISERRATURE.Free;
  GetTIPIMANIGLIONIPORTE.Free;
  GetMARCHEMANIGLIONEPORTE.Free;
  GetTIPOLUCI.Free;
  GetMARCHELUCI.Free;
  GetMOTIVRITIROESTINTORI.Free;
  GetMOTIVCONTROLLONEGATO.Free;
  GetTIPIMOTOPOMPEIDRANTI.Free;
  GetTIPOBOCCHELLI.Free;
  GetTIPOLANCIA.Free;
  GetTIPIELEMIMPIANTIELETTRICI.Free;
  GetMARCHECENTRALIFUMI.Free;
  GetTIPICENTRALIFUMI.Free;
  GetMARCHERILLINEARIFUMI.Free;
  GetContratti.Free;
  inherited;
end;

function TConfRoot.GetContratti: TObjectList<TContratti>;
begin
  Result := ObjectList<TContratti>(FContratti, FContrattiArray);
end;

function TConfRoot.GetMARCHECENTRALIFUMI: TObjectList<TMARCHECENTRALIFUMI>;
begin
  Result := ObjectList<TMARCHECENTRALIFUMI>(FMARCHECENTRALIFUMI, FMARCHECENTRALIFUMIArray);
end;

function TConfRoot.GetMARCHEELEMIMPIANTIELETTRICI: TObjectList<TMARCHEELEMIMPIANTIELETTRICI>;
begin
  Result := ObjectList<TMARCHEELEMIMPIANTIELETTRICI>(FMARCHEELEMIMPIANTIELETTRICI, FMARCHEELEMIMPIANTIELETTRICIArray);
end;

function TConfRoot.GetMARCHEESTINTORI: TObjectList<TMARCHEESTINTORI>;
begin
  Result := ObjectList<TMARCHEESTINTORI>(FMARCHEESTINTORI, FMARCHEESTINTORIArray);
end;

function TConfRoot.GetMARCHELUCI: TObjectList<TMARCHELUCI>;
begin
  Result := ObjectList<TMARCHELUCI>(FMARCHELUCI, FMARCHELUCIArray);
end;

function TConfRoot.GetMARCHEMANIGLIONEPORTE: TObjectList<TMARCHEMANIGLIONEPORTE>;
begin
  Result := ObjectList<TMARCHEMANIGLIONEPORTE>(FMARCHEMANIGLIONEPORTE, FMARCHEMANIGLIONEPORTEArray);
end;

function TConfRoot.GetMARCHEPORTE: TObjectList<TMARCHEPORTE>;
begin
  Result := ObjectList<TMARCHEPORTE>(FMARCHEPORTE, FMARCHEPORTEArray);
end;

function TConfRoot.GetMARCHERILLINEARIFUMI: TObjectList<TMARCHERILLINEARIFUMI>;
begin
  Result := ObjectList<TMARCHERILLINEARIFUMI>(FMARCHERILLINEARIFUMI, FMARCHERILLINEARIFUMIArray);
end;

function TConfRoot.GetMARCHESPRINKLER: TObjectList<TMARCHESPRINKLER>;
begin
  Result := ObjectList<TMARCHESPRINKLER>(FMARCHESPRINKLER, FMARCHESPRINKLERArray);
end;

function TConfRoot.GetMOTIVCONTROLLONEGATO: TObjectList<TMOTIVCONTROLLONEGATO>;
begin
  Result := ObjectList<TMOTIVCONTROLLONEGATO>(FMOTIVCONTROLLONEGATO, FMOTIVCONTROLLONEGATOArray);
end;

function TConfRoot.GetMOTIVRITIROESTINTORI: TObjectList<TMOTIVRITIROESTINTORI>;
begin
  Result := ObjectList<TMOTIVRITIROESTINTORI>(FMOTIVRITIROESTINTORI, FMOTIVRITIROESTINTORIArray);
end;

function TConfRoot.GetTIPIBATTERIE: TObjectList<TTIPIBATTERIE>;
begin
  Result := ObjectList<TTIPIBATTERIE>(FTIPIBATTERIE, FTIPIBATTERIEArray);
end;

function TConfRoot.GetTIPICENTRALIFUMI: TObjectList<TTIPICENTRALIFUMI>;
begin
  Result := ObjectList<TTIPICENTRALIFUMI>(FTIPICENTRALIFUMI, FTIPICENTRALIFUMIArray);
end;

function TConfRoot.GetTIPIELEMIMPIANTIELETTRICI: TObjectList<TTIPIELEMIMPIANTIELETTRICI>;
begin
  Result := ObjectList<TTIPIELEMIMPIANTIELETTRICI>(FTIPIELEMIMPIANTIELETTRICI, FTIPIELEMIMPIANTIELETTRICIArray);
end;

function TConfRoot.GetTIPIINSTALLAZIONEPORTE: TObjectList<TTIPIINSTALLAZIONEPORTE>;
begin
  Result := ObjectList<TTIPIINSTALLAZIONEPORTE>(FTIPIINSTALLAZIONEPORTE, FTIPIINSTALLAZIONEPORTEArray);
end;

function TConfRoot.GetTIPIMANIGLIONIPORTE: TObjectList<TTIPIMANIGLIONIPORTE>;
begin
  Result := ObjectList<TTIPIMANIGLIONIPORTE>(FTIPIMANIGLIONIPORTE, FTIPIMANIGLIONIPORTEArray);
end;

function TConfRoot.GetTIPIMOTOPOMPEIDRANTI: TObjectList<TTIPIMOTOPOMPEIDRANTI>;
begin
  Result := ObjectList<TTIPIMOTOPOMPEIDRANTI>(FTIPIMOTOPOMPEIDRANTI, FTIPIMOTOPOMPEIDRANTIArray);
end;

function TConfRoot.GetTIPIRILEVATORILINEARIFUMI: TObjectList<TTIPIRILEVATORILINEARIFUMI>;
begin
  Result := ObjectList<TTIPIRILEVATORILINEARIFUMI>(FTIPIRILEVATORILINEARIFUMI, FTIPIRILEVATORILINEARIFUMIArray);
end;

function TConfRoot.GetTIPISERRATURE: TObjectList<TTIPISERRATURE>;
begin
  Result := ObjectList<TTIPISERRATURE>(FTIPISERRATURE, FTIPISERRATUREArray);
end;

function TConfRoot.GetTIPISPRINKLER: TObjectList<TTIPISPRINKLER>;
begin
  Result := ObjectList<TTIPISPRINKLER>(FTIPISPRINKLER, FTIPISPRINKLERArray);
end;

function TConfRoot.GetTIPOBOCCHELLI: TObjectList<TTIPOBOCCHELLI>;
begin
  Result := ObjectList<TTIPOBOCCHELLI>(FTIPOBOCCHELLI, FTIPOBOCCHELLIArray);
end;

function TConfRoot.GetTIPOLANCIA: TObjectList<TTIPOLANCIA>;
begin
  Result := ObjectList<TTIPOLANCIA>(FTIPOLANCIA, FTIPOLANCIAArray);
end;

function TConfRoot.GetTIPOLUCI: TObjectList<TTIPOLUCI>;
begin
  Result := ObjectList<TTIPOLUCI>(FTIPOLUCI, FTIPOLUCIArray);
end;

function TConfRoot.GetTIPOPORTE: TObjectList<TTIPOPORTE>;
begin
  Result := ObjectList<TTIPOPORTE>(FTIPOPORTE, FTIPOPORTEArray);
end;

function TConfRoot.GetAsJson: string;
begin
  RefreshArray<TContratti>(FContratti, FContrattiArray);
  RefreshArray<TMARCHECENTRALIFUMI>(FMARCHECENTRALIFUMI, FMARCHECENTRALIFUMIArray);
  RefreshArray<TMARCHEELEMIMPIANTIELETTRICI>(FMARCHEELEMIMPIANTIELETTRICI, FMARCHEELEMIMPIANTIELETTRICIArray);
  RefreshArray<TMARCHEESTINTORI>(FMARCHEESTINTORI, FMARCHEESTINTORIArray);
  RefreshArray<TMARCHELUCI>(FMARCHELUCI, FMARCHELUCIArray);
  RefreshArray<TMARCHEMANIGLIONEPORTE>(FMARCHEMANIGLIONEPORTE, FMARCHEMANIGLIONEPORTEArray);
  RefreshArray<TMARCHEPORTE>(FMARCHEPORTE, FMARCHEPORTEArray);
  RefreshArray<TMARCHERILLINEARIFUMI>(FMARCHERILLINEARIFUMI, FMARCHERILLINEARIFUMIArray);
  RefreshArray<TMARCHESPRINKLER>(FMARCHESPRINKLER, FMARCHESPRINKLERArray);
  RefreshArray<TMOTIVCONTROLLONEGATO>(FMOTIVCONTROLLONEGATO, FMOTIVCONTROLLONEGATOArray);
  RefreshArray<TMOTIVRITIROESTINTORI>(FMOTIVRITIROESTINTORI, FMOTIVRITIROESTINTORIArray);
  RefreshArray<TTIPIBATTERIE>(FTIPIBATTERIE, FTIPIBATTERIEArray);
  RefreshArray<TTIPICENTRALIFUMI>(FTIPICENTRALIFUMI, FTIPICENTRALIFUMIArray);
  RefreshArray<TTIPIELEMIMPIANTIELETTRICI>(FTIPIELEMIMPIANTIELETTRICI, FTIPIELEMIMPIANTIELETTRICIArray);
  RefreshArray<TTIPIINSTALLAZIONEPORTE>(FTIPIINSTALLAZIONEPORTE, FTIPIINSTALLAZIONEPORTEArray);
  RefreshArray<TTIPIMANIGLIONIPORTE>(FTIPIMANIGLIONIPORTE, FTIPIMANIGLIONIPORTEArray);
  RefreshArray<TTIPIMOTOPOMPEIDRANTI>(FTIPIMOTOPOMPEIDRANTI, FTIPIMOTOPOMPEIDRANTIArray);
  RefreshArray<TTIPIRILEVATORILINEARIFUMI>(FTIPIRILEVATORILINEARIFUMI, FTIPIRILEVATORILINEARIFUMIArray);
  RefreshArray<TTIPISERRATURE>(FTIPISERRATURE, FTIPISERRATUREArray);
  RefreshArray<TTIPISPRINKLER>(FTIPISPRINKLER, FTIPISPRINKLERArray);
  RefreshArray<TTIPOBOCCHELLI>(FTIPOBOCCHELLI, FTIPOBOCCHELLIArray);
  RefreshArray<TTIPOLANCIA>(FTIPOLANCIA, FTIPOLANCIAArray);
  RefreshArray<TTIPOLUCI>(FTIPOLUCI, FTIPOLUCIArray);
  RefreshArray<TTIPOPORTE>(FTIPOPORTE, FTIPOPORTEArray);
  Result := inherited;
end;

end.
