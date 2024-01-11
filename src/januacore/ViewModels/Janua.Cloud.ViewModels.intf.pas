unit Janua.Cloud.ViewModels.intf;

interface

uses Janua.Core.Classes.intf, Janua.Controls.Forms.intf, Janua.Orm.intf, Data.DB, JOrm.Anagraph.Intf,
  Janua.Bindings.intf, Janua.ViewModels.intf, Janua.Cloud.Files.intf, Spring.Collections, Janua.Http.Types;

{
  0: Result := AdvDropBox1;
  1: Result := AdvGDrive1;
  2: Result := AdvSkyDrive1;
  3: Result := AdvBoxNetDrive1;
  4: Result := AdvHubic1;
  5: Result := AdvHiDrive1;
  6: Result := AdvYandexDisk1;
}

type
  TJanuaCloudDrive = (jcdDropBox, jcdGDrive, jcdSkyDrive, jcdBoxNetDrive, jcdHubic, jcdHiDrive,
    jcdYandexDisk, jcdJanuaproject, jcdWebDav);


type
  IJanuaCloudDataModule = interface(IJanuaDataModuleContainer)
    ['{4CEB8FEE-3C36-46E1-972B-C031BAC267A1}']

  end;

  IJanuaCloudModelStorage = interface(IJanuaInterface)
    ['{D8ACE1B0-856B-4178-B5F1-24E374418167}']

  end;

  IJanuaDBModelStorage = interface(IJanuaInterface)
    ['{AFE7BA59-FD74-4325-8B2E-479DC6437402}']
  end;

  IJanuaCloudModel = interface(IJanuaInterface)
    ['{9DC2F02E-5E30-46E3-B219-0A31F58DFA78}']
  end;

implementation

end.
