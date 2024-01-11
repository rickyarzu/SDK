inherited dmDico33Client: TdmDico33Client
  Height = 568
  Width = 837
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  inherited spSetSchemaID: TUniStoredProc
    CommandStoredProcName = 'system.set_schema_id'
  end
  inherited spBooking: TUniStoredProc
    CommandStoredProcName = 'health.setbooking:0'
  end
  inherited spAssignBooking: TUniStoredProc
    CommandStoredProcName = 'health.assignbooking:0'
  end
  inherited spbookingInstitutes: TUniStoredProc
    CommandStoredProcName = 'health.bookinginstitutes:0'
  end
  inherited spBookingFinalisation: TUniStoredProc
    CommandStoredProcName = 'health.bookingfinalisation:0'
  end
  inherited spInstituteConfirmation: TUniStoredProc
    CommandStoredProcName = 'health.booking_anagraph_confirmation:0'
  end
  inherited spUserCheckOut: TUniStoredProc
    CommandStoredProcName = 'health.user_booking_confirmation:0'
  end
  inherited spNotificationRead: TUniStoredProc
    CommandStoredProcName = 'health.notification_read:0'
  end
end
