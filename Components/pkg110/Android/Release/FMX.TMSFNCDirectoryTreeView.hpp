// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCDirectoryTreeView.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncdirectorytreeviewHPP
#define Fmx_TmsfncdirectorytreeviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTreeView.hpp>
#include <FMX.TMSFNCTreeViewData.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.TMSFNCCustomTreeView.hpp>
#include <FMX.TMSFNCTreeViewBase.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncdirectorytreeview
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCDirectoryTreeViewNode;
class DELPHICLASS TTMSFNCDirectoryTreeViewNodes;
class DELPHICLASS TTMSFNCDirectoryTreeViewColumn;
class DELPHICLASS TTMSFNCDirectoryTreeViewColumns;
class DELPHICLASS TTMSFNCDirectoryTreeView;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDirectoryTreeViewNode : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode inherited;
	
private:
	System::UnicodeString FFileName;
	
protected:
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes* __fastcall CreateNodes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString FileName = {read=FFileName, write=FFileName};
public:
	/* TTMSFNCTreeViewNode.Create */ inline __fastcall virtual TTMSFNCDirectoryTreeViewNode(System::Classes::TCollection* Collection) : Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode(Collection) { }
	/* TTMSFNCTreeViewNode.Destroy */ inline __fastcall virtual ~TTMSFNCDirectoryTreeViewNode() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDirectoryTreeViewNodes : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes inherited;
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
public:
	/* TTMSFNCTreeViewNodes.Create */ inline __fastcall TTMSFNCDirectoryTreeViewNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewData* ATreeView, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode) : Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes(ATreeView, ANode) { }
	/* TTMSFNCTreeViewNodes.Destroy */ inline __fastcall virtual ~TTMSFNCDirectoryTreeViewNodes() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TTMSFNCDirectoryTreeViewColumnKind : unsigned char { tvckName, tvckDisplayName, tvckCreationDate, tvckModificationDate, tvckFreeSpace, tvckTotalSize, tvckFreeSpaceAndTotalSize, tvckCustom };

class PASCALIMPLEMENTATION TTMSFNCDirectoryTreeViewColumn : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumn
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumn inherited;
	
private:
	TTMSFNCDirectoryTreeViewColumnKind FKind;
	void __fastcall SetKind(const TTMSFNCDirectoryTreeViewColumnKind Value);
	
public:
	__fastcall virtual TTMSFNCDirectoryTreeViewColumn(System::Classes::TCollection* Collection);
	
__published:
	__property TTMSFNCDirectoryTreeViewColumnKind Kind = {read=FKind, write=SetKind, default=0};
public:
	/* TTMSFNCTreeViewColumn.Destroy */ inline __fastcall virtual ~TTMSFNCDirectoryTreeViewColumn() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCDirectoryTreeViewColumns : public Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumns
{
	typedef Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumns inherited;
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall GetItemClass();
public:
	/* TTMSFNCTreeViewColumns.Create */ inline __fastcall TTMSFNCDirectoryTreeViewColumns(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewData* ATreeView) : Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumns(ATreeView) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCDirectoryTreeViewColumns() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCDirectoryTreeViewGetCustomNodeTextEvent)(System::TObject* Sender, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode, int AColumn, System::UnicodeString AFile, System::UnicodeString &AText);

enum DECLSPEC_DENUM TTMSFNCDirectoryTreeViewOption : unsigned char { tvoFiles, tvoHidden, tvoDirectories };

typedef System::Set<TTMSFNCDirectoryTreeViewOption, TTMSFNCDirectoryTreeViewOption::tvoFiles, TTMSFNCDirectoryTreeViewOption::tvoDirectories> TTMSFNCDirectoryTreeViewOptions;

enum DECLSPEC_DENUM TTMSFNCDirectoryTreeViewSortOrder : unsigned char { tvsoNone, tvsoFilesFirst, tvsoDirectoriesFirst };

enum DECLSPEC_DENUM TTMSFNCDirectoryTreeViewMode : unsigned char { dtvmNone, dtvmDrives, dtvmDrive, dtvmFileName };

class PASCALIMPLEMENTATION TTMSFNCDirectoryTreeView : public Fmx::Tmsfnctreeview::TTMSFNCTreeView
{
	typedef Fmx::Tmsfnctreeview::TTMSFNCTreeView inherited;
	
private:
	TTMSFNCDirectoryTreeViewMode FRootMode;
	System::UnicodeString FRootFileName;
	System::Uitypes::TCursor FOldCursor;
	TTMSFNCDirectoryTreeViewGetCustomNodeTextEvent FOnGetCustomNodeText;
	System::UnicodeString FFilter;
	TTMSFNCDirectoryTreeViewOptions FOptions;
	TTMSFNCDirectoryTreeViewSortOrder FSortOrder;
	void __fastcall SetFilter(const System::UnicodeString Value);
	void __fastcall SetSortOrder(const TTMSFNCDirectoryTreeViewSortOrder Value);
	
protected:
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewColumns* __fastcall CreateColumns();
	virtual Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNodes* __fastcall CreateNodes();
	virtual void __fastcall DoGetCustomNodeText(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode, int AColumn, System::UnicodeString AFile, System::UnicodeString &AText);
	virtual void __fastcall GetDriveLetters(System::Classes::TStringList* AList);
	virtual void __fastcall DoBeforeExpandNode(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewVirtualNode* ANode, bool &ACanExpand);
	virtual void __fastcall AddNodeData(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode, System::UnicodeString AFile);
	virtual void __fastcall AddSubNodes(Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* ANode);
	virtual void __fastcall AddNodes(System::UnicodeString APath, Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode* AParentNode = (Fmx::Tmsfnctreeviewdata::TTMSFNCTreeViewNode*)(0x0), bool AExpand = false);
	virtual void __fastcall SetWaitCursor();
	virtual void __fastcall SetOldCursor();
	virtual System::UnicodeString __fastcall GetVersion();
	
public:
	__fastcall virtual TTMSFNCDirectoryTreeView(System::Classes::TComponent* AOwner);
	virtual TTMSFNCDirectoryTreeViewColumn* __fastcall AddColumn(TTMSFNCDirectoryTreeViewColumnKind AKind);
	virtual void __fastcall InitSample();
	virtual void __fastcall LoadDirectory(System::UnicodeString ADirectory, bool AExpand = false);
	virtual void __fastcall LoadDrives(bool AExpand = false);
	virtual void __fastcall LoadDrive(System::UnicodeString ADrive, bool AExpand = false);
	
__published:
	__property TTMSFNCDirectoryTreeViewGetCustomNodeTextEvent OnGetCustomNodeText = {read=FOnGetCustomNodeText, write=FOnGetCustomNodeText};
	__property TTMSFNCDirectoryTreeViewOptions Options = {read=FOptions, write=FOptions, default=7};
	__property System::UnicodeString Filter = {read=FFilter, write=SetFilter};
	__property TTMSFNCDirectoryTreeViewSortOrder SortOrder = {read=FSortOrder, write=SetSortOrder, default=0};
public:
	/* TTMSFNCCustomTreeView.Destroy */ inline __fastcall virtual ~TTMSFNCDirectoryTreeView() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x1);
static constexpr System::Int8 BLD_VER = System::Int8(0x3);
#define AllDirectoryOptions (System::Set<TTMSFNCDirectoryTreeViewOption, TTMSFNCDirectoryTreeViewOption::tvoFiles, TTMSFNCDirectoryTreeViewOption::tvoDirectories>() << TTMSFNCDirectoryTreeViewOption::tvoFiles << TTMSFNCDirectoryTreeViewOption::tvoHidden << TTMSFNCDirectoryTreeViewOption::tvoDirectories )
}	/* namespace Tmsfncdirectorytreeview */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCDIRECTORYTREEVIEW)
using namespace Fmx::Tmsfncdirectorytreeview;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncdirectorytreeviewHPP
