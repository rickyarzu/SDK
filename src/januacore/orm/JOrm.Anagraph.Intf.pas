unit JOrm.Anagraph.Intf;

interface

uses System.Classes,
  // Janua
  Janua.Core.Types, Janua.Orm.Intf, JOrm.Anagraph.Anagraphs.Custom.Intf, JOrm.Anagraph.Address.Intf,
  JOrm.Anagraph.AnagraphView.Custom.Intf, JOrm.Anagraph.Branch.Custom.Intf, Janua.Core.Entities;

type
  IAnagraph = interface; // Forward

  IAnAddress = interface(IAddress)
    ['{CAE4AD17-8F9C-47E5-812D-9D28BB94372E}']
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
    procedure SetfromAnagraph(const aAnagraph: IAnagraph);
  end;

  IAnAddresses = interface(IAddresses)
    ['{4B8281F6-0A49-4B94-A14F-6794138AD849}']
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    function GetAnAddress: IAnAddress;
    procedure SetAnAddress(const Value: IAnAddress);
    property AnAddress: IAnAddress read GetAnAddress write SetAnAddress;
  end;

  IBranch = interface(ICustomBranch)
    ['{C3CC40EC-DBF5-44B7-AE0A-97CD1164A9E0}']
  end;

  IBranches = interface(ICustomBranches)
    ['{DA460FB9-96B6-4C32-88E1-81C938D33F83}']
    function GetBranch: IBranch;
    procedure SetBranch(const Value: IBranch);
    property Branch: IBranch read GetBranch write SetBranch;
  end;

  IAnagraph = interface(ICustomAnagraph)
    ['{598045F1-218C-4B08-9FB0-748962629B6C}']
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
  end;

  IAnagraphs = interface(ICustomAnagraphs)
    ['{64E33652-CBC3-4384-B40E-73C74C4482CA}']
    function GetAnagraph: IAnagraph;
    procedure SetAnagraph(const Value: IAnagraph);
    property Anagraph: IAnagraph read GetAnagraph write SetAnagraph;
  end;

  IAnagraphView = interface(ICustomAnagraphView)
    ['{EAEE26DC-12CF-440D-9CCD-1F6E22516EE8}']
    function GetMainAddress: IAnAddress;
    procedure SetMainAddress(const Value: IAnAddress);
    // <summary> Main MainAddress is exactly the Anagraph MainAddress but can be used connected to the addresses array </summary>
    property MainAddress: IAnAddress read GetMainAddress write SetMainAddress;

    function GetAddresses: IAnAddresses;
    procedure SetAddresses(const Value: IAnAddresses);
    // <summary> An Array of Addresses note that the firs is always the Main Address with 'pos' = 0 </summary>
    property Addresses: IAnAddresses read GetAddresses write SetAddresses;
    // <summary> Explicit Casting to IAnagraph Interface </summary>
    function AsIAnagraph: IAnagraph;

    procedure UpdateAddressList;
    procedure SyncMainAddress;
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
  end;

  IAnagraphViews = interface(ICustomAnagraphViews)
    ['{EED3ADFE-D1EA-45C0-829D-EF74542B6FBB}']
    function GetAnagraphView: IAnagraphView;
    procedure SetAnagraphView(const Value: IAnagraphView);
    property AnagraphView: IAnagraphView read GetAnagraphView write SetAnagraphView;
  end;

  TSaveAddressEvent = procedure(const aAddress: IAnAddress) of object;
  TSaveAnagraphEvent = procedure(const aAnagraph: IAnagraph) of object;

implementation

initialization

// IAnAddress
Janua.Core.Types.RegisterInterface(TypeInfo(IAnAddress));
// IAnAddresses
Janua.Core.Types.RegisterInterface(TypeInfo(IAnAddresses));
// IBranch
Janua.Core.Types.RegisterInterface(TypeInfo(IBranch));
// IBranches
Janua.Core.Types.RegisterInterface(TypeInfo(IBranches));
// IAnagraph
Janua.Core.Types.RegisterInterface(TypeInfo(IAnagraph));
// IAnagraphs
Janua.Core.Types.RegisterInterface(TypeInfo(IAnagraphs));
// IAnagraphView
Janua.Core.Types.RegisterInterface(TypeInfo(IAnagraphView));
// IAnagraphViews
Janua.Core.Types.RegisterInterface(TypeInfo(IAnagraphViews));

end.
