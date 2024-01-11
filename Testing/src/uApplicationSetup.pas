unit uApplicationSetup;

interface

procedure ApplicationSetup;
procedure ApplicationTearDown;

implementation

uses Janua.VCL.Framework, System.types, Janua.Controls.Forms.Impl, Janua.TMS.NavBar, ufrmTest, ufrmTest2,
  ufrmTest3, uFrameTest, System.SysUtils, Janua.Application.Framework;

procedure ApplicationTearDown;
begin
  TJanuaFormsApplication.Applications.Clear;
end;

procedure ApplicationSetup;
var
  lApplication: TJanuaApplicationRecord;
  lApplication1: TJanuaApplicationRecord;
  tmpApplication: TJanuaApplicationRecord;
  lApplication2: TJanuaApplicationRecord;
  lApplication3: TJanuaApplicationRecord;
begin
  try
    TJanuaVCLApplication.Initialize;

    // lApplication è un Menu 'Container' cioè contiene un insieme di sotto-voci.
    lApplication := TJanuaApplicationRecord.Create('root', 'Root', 1, nil);
    // lApplication1 è il reale container dei pulsanti dell'applicazione
    lApplication1 := TJanuaApplicationRecord.Create('leaf1', 'Leaf 1', 1, nil);
    // Al sottomenu lApplication1 posso 'agganciare' dei pulsanti che possono essere connessi con Classi
    // Ma potrebbero anche essere connesse con 'Interfacce' che rappresentano tutti i forms dell'Applicazione
    lApplication1.AddForm(TJanuaFormRecord.Create('Form Test', lApplication1.Name, 15, TfrmTest, GUID_NULL));
    lApplication1.AddForm(TJanuaFormRecord.Create('Form Test 2', lApplication1.Name, 10, TfrmTest,
      GUID_NULL));

    lApplication.AddApplication(lApplication1);

    lApplication2 := TJanuaApplicationRecord.Create('leaf2', 'Leaf 2', 4, nil);
    lApplication2.AddForm(TJanuaFormRecord.Create('Form Test 3', lApplication2.Name, 13, TfrmTest3,
      GUID_NULL));
    lApplication.AddApplication(lApplication2);
    TJanuaFormsApplication.RegisterApplication(lApplication);

    // Esempio fatto con un Frame, il Frame in questo caso viene creato all'interno della AppBar
    // Occorre quindi indicare che si tratta di un 'frame' e non di un Form.
    // Questo avviene perchè l'ApplicationRecord viene Creato con un Frame <> nil basta questo x crearlo.
    // il frame deve implementare (supportare) l'interfaccia  IJanuaContainer
    // possiamo supportarla direttamente o possiamo (più semplicemente) discedere da TJanuaVCLFrameModel
    lApplication3 := TJanuaApplicationRecord.Create('App1', 'App 1', 6, TframeTest);
    TJanuaFormsApplication.RegisterApplication(lApplication3);
  except
    on e: exception do
      RaiseException('ApplicationSetup', e, nil);

  end;

end;

end.
