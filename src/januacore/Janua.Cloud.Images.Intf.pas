/// <summary>
/// Gestione e persistenza delle immagini sia in memoria che attraverso un
/// 'Database' che può essere sia un sistema locale o client server che un
/// sistema remoto.
/// </summary>
unit Janua.Cloud.Images.Intf;

interface

uses
  System.Classes, System.SysUtils, Janua.Cloud.Files.Intf;

type

  /// <summary>
  /// La classe Image record è il 'mattore' su cui è costruito l'intero
  /// sistema possiede un campo chiave univoco che potrà essere gestito dal
  /// memory manager.
  /// </summary>
  IJanuaImageRecord = interface(IJanuaFileRecord)
    ['{8489BCA0-47A9-4E47-B872-28A18AFB7E1E}']
    function GetWidth: integer;
    function GetHeigth: integer;
    procedure SetHeigth(const Value: integer);
    procedure SetWidth(const Value: integer);
    property Width: integer read GetWidth write SetWidth;
    property Heigth: integer read GetHeigth write SetHeigth;
  end;

type
  IJanuaImageStorage = interface(IJanuaFileStorage)
    ['{FB65B5EB-E6AC-4161-A69C-FFC7BCABB456}']

  end;

type
  IJanuaImageMemoryStorage = interface(IJanuaFileMemoryStorage)
    ['{3F3226A8-E6C7-4B9B-861E-0F02B42B3B0E}']
    procedure SetSelectedImage(const aValue: IJanuaImageRecord);
    function GetSelectedImage(): IJanuaImageRecord;
    property SelectedImage: IJanuaImageRecord read GetSelectedImage write SetSelectedImage;

    // private or protected Methods

  end;

implementation

end.
