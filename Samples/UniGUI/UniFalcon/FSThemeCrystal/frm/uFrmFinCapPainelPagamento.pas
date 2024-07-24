unit uFrmFinCapPainelPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniDBGrid, uniGUIBaseClasses,
  uniPanel, uniButton, uniBitBtn, UniFSButton, Data.DB, Datasnap.DBClient,
  UniFSConfirm;

type
  TfrmFinCapPainelPagamento = class(TUniFrame)
    pnl1: TUniPanel;
    btn1: TUniFSButton;
    DS: TDataSource;
    CDS: TClientDataSet;
    strngfldCDSAtivo: TStringField;
    intgrfldCDSDocumento: TIntegerField;
    strngfldCDSDescricao: TStringField;
    strngfldCDSFornecedor: TStringField;
    dtmfldCDSVencimento: TDateTimeField;
    strngfldCDSPago: TStringField;
    dbg1: TUniDBGrid;
    fltfldCDSValor: TFloatField;
    strngfldCDSEditar: TStringField;
    strngfldCDSExcluir: TStringField;
    Confirm: TUniFSConfirm;
    procedure btn1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure strngfldCDSAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure strngfldCDSEditarGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure strngfldCDSExcluirGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbg1CellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uFrmCapLancamento, uDmImagens;

{$R *.dfm}


{Lembrar de registrar todas as telas}
procedure TfrmFinCapPainelPagamento.btn1Click(Sender: TObject);
begin
  frmCapLancamento.ShowModal();
end;

procedure TfrmFinCapPainelPagamento.dbg1CellClick(Column: TUniDBGridColumn);
begin
  if Column.FieldName = 'Excluir' then
  begin
    Confirm.Question('Confirma Exclusão','Documento '+CDS.FieldByName('Documento').AsString+'',
    'far fa-question-circle', TTypeColor.red, TTheme.modern,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
      begin
        CDS.Delete;
      end;
    end)
  end;

end;

procedure TfrmFinCapPainelPagamento.strngfldCDSAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := '<i title="Ativo" class="x-fa4 fa-lg fa4-check-circle-o"; style="color:#34A853;cursor:pointer;font-style: normal;"></i>';
end;

procedure TfrmFinCapPainelPagamento.strngfldCDSEditarGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text :=
    '<i title="Editar" class="x-fa4 fa-lg fa4-pencil-square-o"; style="color:#404040;cursor:pointer;font-style: normal;"></i>';
end;

procedure TfrmFinCapPainelPagamento.strngfldCDSExcluirGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
    Text :=
    '<i title="Excluir" class="x-fa4 fa-lg fa4-trash-o"; style="color:red;cursor:pointer;font-style: normal;"></i>';
end;

procedure TfrmFinCapPainelPagamento.UniFrameCreate(Sender: TObject);
begin
  CDS.CreateDataSet;
  CDS.AppendRecord(['S',11866,'Dsecrição do Documento','Bruno Oliveira',StrToDate('18/07/2019'),         'S', 1000 ]);
  CDS.AppendRecord(['S',11869,'Dsecrição do Documento','Bruno Oliveira',StrToDate('18/07/2019'),         'S', 1000 ]);
  CDS.AppendRecord(['S',11904,'Dsecrição do Documento','Altair da Costa',StrToDate('19/07/2019'),        'S', 1000 ]);
  CDS.AppendRecord(['S',11918,'Dsecrição do Documento','Altair da Costa',StrToDate('20/07/2019'),        'S', 1000 ]);
  CDS.AppendRecord(['S',11932,'Dsecrição do Documento','Fulano da Silva',StrToDate('22/07/2019'),        'S', 1000 ]);
  CDS.AppendRecord(['S',11933,'Dsecrição do Documento','Fulano da Silva',StrToDate('22/07/2019'),        'S', 1000 ]);
  CDS.AppendRecord(['S',11950,'Dsecrição do Documento','Jose de Abreu',StrToDate('22/07/2019'),          'S', 1000 ]);
  CDS.AppendRecord(['S',11975,'Dsecrição do Documento','Jose de Abreu',StrToDate('23/07/2019'),          'S', 1000 ]);
  CDS.AppendRecord(['S',11983,'Dsecrição do Documento','Fabiano da Silva Sauro',StrToDate('23/07/2019'), 'S', 1000 ]);
  CDS.AppendRecord(['S',12001,'Dsecrição do Documento','Fabiano da Silva Sauro',StrToDate('24/07/2019'), 'S', 1000 ]);
  CDS.AppendRecord(['S',12021,'Dsecrição do Documento','Cleber dos Santos',StrToDate('23/07/2019'),      'S', 1000 ]);
  CDS.AppendRecord(['S',12024,'Dsecrição do Documento','Cleber dos Santos',StrToDate('25/07/2019'),      'S', 1000 ]);
  CDS.AppendRecord(['S',12028,'Dsecrição do Documento','Jonathan Rorigues',StrToDate('25/07/2019'),      'S', 1000 ]);
  CDS.AppendRecord(['S',12029,'Dsecrição do Documento','Jonathan Rorigues',StrToDate('25/07/2019'),      'S', 1000 ]);
  CDS.AppendRecord(['S',12051,'Dsecrição do Documento','Fabiano da Silva Sauro',StrToDate('25/07/2019'), 'S', 1000 ]);
  CDS.Open;

  CDS.First;
  while not CDS.Eof do
  begin
    CDS.Edit;
    CDS.FieldByName('Valor').AsInteger := Random(99999);
    CDS.Post;
    CDS.Next;
  end;
end;

initialization
  RegisterClass(TfrmFinCapPainelPagamento);

end.
