// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRecurrencyHandler.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncrecurrencyhandlerHPP
#define Fmx_TmsfncrecurrencyhandlerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncrecurrencyhandler
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCRecurrencyDateItem;
class DELPHICLASS TTMSFNCRecurrencyDateItems;
class DELPHICLASS TTMSFNCRecurrencyIntList;
class DELPHICLASS TTMSFNCRecurrencyHandler;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCRecurrencyDateItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::TDateTime FStartTime;
	System::TDateTime FEndDate;
	
__published:
	__property System::TDateTime StartDate = {read=FStartTime, write=FStartTime};
	__property System::TDateTime EndDate = {read=FEndDate, write=FEndDate};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTMSFNCRecurrencyDateItem(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTMSFNCRecurrencyDateItem() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCRecurrencyDateItems : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRecurrencyDateItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCRecurrencyDateItem*> inherited;
	
public:
	TTMSFNCRecurrencyDateItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE TTMSFNCRecurrencyDateItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCRecurrencyDateItem* const Value);
	
public:
	__fastcall TTMSFNCRecurrencyDateItems();
	HIDESBASE TTMSFNCRecurrencyDateItem* __fastcall Add();
	__property TTMSFNCRecurrencyDateItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTMSFNCRecurrencyDateItems() { }
	
};


enum DECLSPEC_DENUM TTMSFNCRecurrencyFrequency : unsigned char { rfHourly, rfDaily, rfWeekly, rfMonthly, rfYearly, rfNone };

class PASCALIMPLEMENTATION TTMSFNCRecurrencyIntList : public System::Generics::Collections::TList__1<int>
{
	typedef System::Generics::Collections::TList__1<int> inherited;
	
public:
	int operator[](int index) { return this->Items[index]; }
	
private:
	int FIndex;
	void __fastcall SetInteger(int Index, const int Value);
	int __fastcall GetInteger(int Index);
	System::UnicodeString __fastcall GetStrValue();
	void __fastcall SetStrValue(const System::UnicodeString Value);
	
public:
	void __fastcall DeleteValue(int Value);
	bool __fastcall HasValue(int Value);
	int __fastcall IndexOfValue(int Value);
	__property int Items[int index] = {read=GetInteger, write=SetInteger/*, default*/};
	HIDESBASE void __fastcall Add(int Value);
	HIDESBASE void __fastcall Insert(int Index, int Value);
	HIDESBASE void __fastcall Delete(int Index);
	__property System::UnicodeString StrValue = {read=GetStrValue, write=SetStrValue};
	__property int Index = {read=FIndex, write=FIndex, nodefault};
public:
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCRecurrencyIntList()/* overload */ : System::Generics::Collections::TList__1<int>() { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCRecurrencyIntList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<int> > AComparer)/* overload */ : System::Generics::Collections::TList__1<int>(AComparer) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCRecurrencyIntList(System::Generics::Collections::TEnumerable__1<int>* const Collection)/* overload */ : System::Generics::Collections::TList__1<int>(Collection) { }
	/* {System_Generics_Collections}TList<System_Integer>.Create */ inline __fastcall TTMSFNCRecurrencyIntList(const int *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<int>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<System_Integer>.Destroy */ inline __fastcall virtual ~TTMSFNCRecurrencyIntList() { }
	
};


typedef System::Set<System::Byte, 0, 255> TTMSFNCRecurrencyHandlerDaySet;

typedef System::StaticArray<System::Byte, 7> TTMSFNCRecurrencyHandlerDayArray;

class PASCALIMPLEMENTATION TTMSFNCRecurrencyHandler : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FRecurrency;
	System::TDateTime FEndTime;
	System::TDateTime FStartTime;
	int FCount;
	TTMSFNCRecurrencyDateItems* FDates;
	TTMSFNCRecurrencyDateItems* FExDates;
	TTMSFNCRecurrencyFrequency FFrequency;
	int FRCount;
	System::TDateTime FUntil;
	int FInterval;
	TTMSFNCRecurrencyIntList* FMonthList;
	TTMSFNCRecurrencyIntList* FDayList;
	TTMSFNCRecurrencyIntList* FHourList;
	TTMSFNCRecurrencyHandlerDaySet FDaySet;
	TTMSFNCRecurrencyHandlerDayArray FDayNum;
	System::TDateTime FTimeSpan;
	System::Byte __fastcall GetDayNum(int Index);
	void __fastcall SetDayNum(int Index, const System::Byte Value);
	
protected:
	System::TDateTime __fastcall ApplyFrequency(System::TDateTime ADate, TTMSFNCRecurrencyFrequency AFrequency, int AInterval);
	
public:
	__fastcall TTMSFNCRecurrencyHandler();
	__fastcall virtual ~TTMSFNCRecurrencyHandler();
	void __fastcall Parse();
	void __fastcall Generate();
	System::UnicodeString __fastcall Compose();
	bool __fastcall IsRecurrent();
	bool __fastcall NextDate(System::TDateTime &AStartDate, System::TDateTime &AEndDate);
	System::TDateTime __fastcall RecurrentMinDate();
	System::TDateTime __fastcall RecurrentMaxDate();
	__property TTMSFNCRecurrencyHandlerDaySet Days = {read=FDaySet, write=FDaySet};
	__property TTMSFNCRecurrencyDateItems* ExDates = {read=FExDates};
	__property TTMSFNCRecurrencyDateItems* Dates = {read=FDates};
	System::Classes::TStrings* __fastcall DatesAsStrings();
	__property System::Byte DayNum[int Index] = {read=GetDayNum, write=SetDayNum};
	__property TTMSFNCRecurrencyIntList* Months = {read=FMonthList};
	__property System::UnicodeString Recurrency = {read=FRecurrency, write=FRecurrency};
	__property System::TDateTime StartTime = {read=FStartTime, write=FStartTime};
	__property System::TDateTime EndTime = {read=FEndTime, write=FEndTime};
	__property TTMSFNCRecurrencyFrequency Frequency = {read=FFrequency, write=FFrequency, nodefault};
	__property int RepeatCount = {read=FRCount, write=FRCount, nodefault};
	__property System::TDateTime RepeatUntil = {read=FUntil, write=FUntil};
	__property int Interval = {read=FInterval, write=FInterval, nodefault};
	__property System::TDateTime TimeSpan = {read=FTimeSpan, write=FTimeSpan};
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 INFINITE_SPAN = System::Int8(0x64);
}	/* namespace Tmsfncrecurrencyhandler */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRECURRENCYHANDLER)
using namespace Fmx::Tmsfncrecurrencyhandler;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncrecurrencyhandlerHPP
