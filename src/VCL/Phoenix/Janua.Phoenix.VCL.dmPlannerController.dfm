inherited dmVCLPhoenixPlannerController: TdmVCLPhoenixPlannerController
  Height = 569
  Width = 996
  inherited SVGIconImageList48: TSVGIconImageList
    Top = 280
  end
  inherited SVGIconImageList16: TSVGIconImageList
    Left = 64
    Top = 344
  end
  inherited PictureContainer1: TPictureContainer
    Top = 384
  end
  inherited SVGIconImageListIt: TSVGIconImageList
    Top = 416
  end
  inherited ColorDialog1: TColorDialog
    Top = 314
  end
  inherited JanuaUniConnection1: TJanuaUniConnection
    Left = 576
    Top = 80
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  inherited InterBaseUniProvider1: TInterBaseUniProvider
    Left = 576
    Top = 144
  end
  inherited PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 576
    Top = 16
  end
  inherited vtGoogleEvents: TVirtualTable
    Left = 792
    Data = {
      0400130002004944010080000000000004004554414701008000000000000700
      53554D4D41525901000001000000000B004445534352495054494F4E27000000
      000000000900535441525454494D450B000000000000000700454E4454494D45
      0B000000000000000700435245415445440B0000000000000007005550444154
      45440B0000000000000008004953414C4C444159050000000000000008004C4F
      434154494F4E0100800000000000060053544154555302000000000000000A00
      5649534942494C49545903000000000000000A00524543555252454E43450100
      3C00000000000B00524543555252494E47494401003C00000000000800534551
      55454E434503000000000000000500434F4C4F52020000000000000013005553
      4544454641554C5452454D494E444552530500000000000000110053454E444E
      4F54494649434154494F4E5305000000000000000A0043414C454E4441524944
      0100800000000000000000000000}
  end
  inherited vtGoogleCalendars: TVirtualTable
    Left = 791
    Top = 16
    Data = {
      040009000200494401008000000000000B004445534352495054494F4E0F0000
      000000000008004C4F434154494F4E0100800000000000070053554D4D415259
      010000010000000007005052494D4152590500000000000000080054494D455A
      4F4E4501003C00000000000500434F4C4F5202000000000000000A004241434B
      5F434F4C4F5203000000000000000A00464F52455F434F4C4F52030000000000
      0000000000000000}
  end
  inherited dsGoogleEvents: TUniDataSource
    Top = 344
  end
  inherited dsCalendars: TUniDataSource
    DataSet = qryPlannerEvents
  end
  inherited DBDaySourceGCalendar: TDBDaySource
    DataSource = dsGCalendar
  end
  inherited DBDaySourceCalendar: TDBDaySource
    Active = True
    DataSource = dsCalendarEvents
    ResourceDataSource.DataSource = dsCalendars
    ResourceDataSource.ResourceIDField = 'CHIAVE'
    ResourceDataSource.ResourceNameField = 'TECNICO_SIGLA'
    ResourceMap = <
      item
        ResourceIndex = 2168564
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168565
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168566
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168567
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168568
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168569
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168570
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168571
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168572
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168573
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166655
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166678
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166692
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166711
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166720
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166732
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166739
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166752
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166753
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166754
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166755
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166756
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166757
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166758
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166761
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166768
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166769
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166770
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166772
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166773
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166774
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166775
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166776
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166777
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166778
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166779
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166781
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166782
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166783
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166784
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166785
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166786
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166787
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166788
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166789
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166790
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166791
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166792
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166793
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166794
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166795
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166796
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166797
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166798
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166799
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166800
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166801
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166802
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166803
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166804
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166805
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166806
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166807
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166808
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166809
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166810
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166811
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166812
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166813
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166814
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166815
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166816
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166817
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166818
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166819
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166820
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166821
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166822
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166823
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166824
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166825
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166826
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166827
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166828
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166829
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166830
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166831
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166832
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166833
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166834
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166835
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166836
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166837
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166838
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166839
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166840
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166841
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166842
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166843
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166844
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166845
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166846
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166847
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166848
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166849
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166850
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166851
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166852
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166853
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166854
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166855
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166856
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166857
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166858
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166859
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166860
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166861
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166862
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166863
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166864
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166865
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166866
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166867
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166868
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166869
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166870
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166871
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166872
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166873
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166874
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166875
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166876
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166877
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166878
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166879
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166880
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166881
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166882
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166883
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166884
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166885
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166886
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166887
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166888
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166889
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166890
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166891
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166892
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166893
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166894
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166895
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166896
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166897
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166898
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166899
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166900
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166901
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166902
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166903
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166904
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166905
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166906
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166907
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166908
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166909
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166910
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166911
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166912
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166913
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166914
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166915
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166916
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166917
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166918
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166919
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166920
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166921
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166922
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166923
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166924
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166925
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166926
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166927
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166928
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166929
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166930
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166931
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166932
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166933
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166934
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166935
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166936
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166937
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166938
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166939
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166940
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166941
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166942
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166943
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166944
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166945
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166946
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166947
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166948
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166949
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2166950
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168557
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168558
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168559
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168560
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168561
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168562
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end
      item
        ResourceIndex = 2168563
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end>
    ResourceField = 'TECNICO_SIGLA'
    NotesField = 'NOTE'
    Day = 45457.000000000000000000
    Mode = dmMultiResDay
    NumberOfDays = 6
    MinTimeField = 'DALLE_ORE'
    MaxTimeField = 'ALLE_ORE'
  end
  inherited dsCalendarEvents: TUniDataSource
    DataSet = qryPlannerEvents
  end
  object qryReportPlanner: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO STATINI'
      
        '  (NOTE_PER_IL_TECNICO, APPUNTAMENTO_DATA, APPUNTAMENTO_ORA, STA' +
        'TO)'
      'VALUES'
      
        '  (:NOTE_PER_IL_TECNICO, :APPUNTAMENTO_DATA, :APPUNTAMENTO_ORA, ' +
        ':STATO)')
    SQLDelete.Strings = (
      'DELETE FROM STATINI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE STATINI'
      'SET'
      
        '  NOTE_PER_IL_TECNICO = :NOTE_PER_IL_TECNICO, APPUNTAMENTO_DATA ' +
        '= :APPUNTAMENTO_DATA, APPUNTAMENTO_ORA = :APPUNTAMENTO_ORA, STAT' +
        'O = :STATO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM STATINI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT NOTE_PER_IL_TECNICO, APPUNTAMENTO_DATA, APPUNTAMENTO_ORA,' +
        ' STATO FROM STATINI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM STATINI'
      ''
      ') q')
    DataTypeMap = <
      item
        DBType = 416
        FieldType = ftWideString
        FieldLength = 2048
      end
      item
        FieldName = 'NOTE_PER_IL_TECNICO'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT S.chiave, C.descrizione_scheda, C.AMMINISTRATORE, '
      
        '       S.CLIENTE, F.NOME, F.PROVINCIA, F.CAP, F.INDIRIZZO, F.TEL' +
        'EFONO, F.NOTE, F.ORARIO_APERTURA_DAL1, F.ORARIO_APERTURA_DAL2,'
      
        '       F.ORARIO_APERTURA_AL1, F.ORARIO_APERTURA_AL2, F.CHIUSURA,' +
        ' F.CELLULARE, F.EMAIL, F.ESCLUDI_DA_GENERAZIONE, F.SEDE, F.ID,'
      '       F.REF_TELEFONO, F.REF_CELLULARE, F.COMUNE, S.FATTURA,'
      
        '       S.DATA_INTERVENTO , S.GENERAZIONE_AUTOMATICA , S.TECNICO_' +
        'INTERVENTO , S.SCANSIONE , S.REGISTRO , S.NOTE_PER_IL_TECNICO , ' +
        'S.SOSPESO,'
      
        '       S.DA_ESPORTARE_SUL_WEB , S.RESPONSABILE , S.ESPORTATO_SU_' +
        'MOBILE , S.NOTE_DAL_TECNICO ,'
      
        '       S.VERBALE_PROVA_DINAMICA , S.VERBALE_MANICHETTE , S.PREVE' +
        'NTIVO , S.IGNORA_EVIDENZIAZIONE,'
      
        '       S.ANNULLATO_DA_TABLET , S.MOBILEWARN_NUOVA_ATTREZZATURA ,' +
        ' S.MOBILEWARN_ORDINARIA_RITIRATA,'
      
        '       S.MOBILEWARN_N_ORDIN_CONTROLLATA , S.MOBILEWARN_SMALTIMEN' +
        'TO , S.STATO_LAVORAZIONE , S.DATA_CHIUSURA_DA_SERVER , S.CHIUSUR' +
        'A_EXT,'
      
        '       S.CHIUSURA_STATINO , S.MOBILEWARN_NON_ESEGUITI , S.PRESA_' +
        'IN_CARICO , S.FORNITURA,'
      
        '       V.ordinari, V.straordinari, V.interventi, T.descrizione a' +
        's NOME_TECNICO, '
      
        '       S.APPUNTAMENTO_DATA, S.APPUNTAMENTO_ORA, S.STATO,I.STATIN' +
        'O, '
      '       COALESCE(I.ESTINTORI_ORDINARIO, 0) ESTINTORI_ORDINARIO,'
      
        '       COALESCE(I.ESTINTORI_STRAORDINARIO, 0) ESTINTORI_STRAORDI' +
        'NARIO,'
      '       COALESCE(I.GRUPPI_ELETTR, 0) GRUPPI_ELETTR,'
      '       COALESCE(I.FUMI, 0) FUMI,'
      '       COALESCE(I.LUCI, 0) LUCI,'
      '       COALESCE(I.IDRANTI, 0) IDRANTI,'
      '       COALESCE(I.SPRINKLER, 0) SPRINKLER,'
      '       COALESCE(I.IMPIANTI_EL, 0) IMPIANTI_EL'
      'FROM FILIALI_CLIENTI F '
      'JOIN CLIENTI C ON  F.CLIENTE = C.CHIAVE'
      'JOIN STATINI S ON F.chiave = S.filiale'
      
        'LEFT OUTER JOIN INTERVENTI_STRAORDINARI_VIEW V ON S.chiave = V.s' +
        'tatino'
      'JOIN TECNICI T ON T.chiave = S.responsabile'
      
        'LEFT OUTER JOIN INTERVENTI_STATINI_SINTESI_VIEW I ON S.chiave = ' +
        'I.statino'
      'WHERE S.STATO > -1 AND S.STATO < 9'
      '--AND S.CHIAVE = 2100103'
      'ORDER BY F.CAP,C.DESCRIZIONE_SCHEDA,F.SEDE DESC'
      ';')
    BeforePost = qryReportPlannerBeforePost
    OnCalcFields = qryReportPlannerCalcFields
    Left = 584
    Top = 216
    object qryReportPlannerCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryReportPlannerDESCRIZIONE_SCHEDA: TStringField
      FieldName = 'DESCRIZIONE_SCHEDA'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qryReportPlannerNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryReportPlannerPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryReportPlannerCAP: TStringField
      FieldName = 'CAP'
      ReadOnly = True
      Size = 10
    end
    object qryReportPlannerINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerTELEFONO: TStringField
      FieldName = 'TELEFONO'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerNOTE: TBlobField
      FieldName = 'NOTE'
      ReadOnly = True
    end
    object qryReportPlannerORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
      ReadOnly = True
    end
    object qryReportPlannerORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
      ReadOnly = True
    end
    object qryReportPlannerORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
      ReadOnly = True
    end
    object qryReportPlannerORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
      ReadOnly = True
    end
    object qryReportPlannerCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerCELLULARE: TStringField
      FieldName = 'CELLULARE'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerEMAIL: TStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerESCLUDI_DA_GENERAZIONE: TStringField
      FieldName = 'ESCLUDI_DA_GENERAZIONE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerSEDE: TStringField
      FieldName = 'SEDE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerID: TStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerREF_TELEFONO: TStringField
      FieldName = 'REF_TELEFONO'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerREF_CELLULARE: TStringField
      FieldName = 'REF_CELLULARE'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerCOMUNE: TStringField
      FieldName = 'COMUNE'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object qryReportPlannerDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object qryReportPlannerGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object qryReportPlannerTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object qryReportPlannerSCANSIONE: TWideStringField
      FieldName = 'SCANSIONE'
      Size = 2048
    end
    object qryReportPlannerREGISTRO: TWideStringField
      FieldName = 'REGISTRO'
      Size = 2048
    end
    object qryReportPlannerNOTE_PER_IL_TECNICO: TWideStringField
      FieldName = 'NOTE_PER_IL_TECNICO'
      Size = 1024
    end
    object qryReportPlannerSOSPESO: TStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryReportPlannerESPORTATO_SU_MOBILE: TStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object qryReportPlannerVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object qryReportPlannerVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object qryReportPlannerPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object qryReportPlannerIGNORA_EVIDENZIAZIONE: TStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerANNULLATO_DA_TABLET: TStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerMOBILEWARN_NUOVA_ATTREZZATURA: TStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerMOBILEWARN_ORDINARIA_RITIRATA: TStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerMOBILEWARN_SMALTIMENTO: TStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerSTATO_LAVORAZIONE: TStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryReportPlannerCHIUSURA_EXT: TStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryReportPlannerCHIUSURA_STATINO: TWideStringField
      FieldName = 'CHIUSURA_STATINO'
      Size = 2048
    end
    object qryReportPlannerMOBILEWARN_NON_ESEGUITI: TStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerPRESA_IN_CARICO: TStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerFORNITURA: TStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerORDINARI: TLargeintField
      FieldName = 'ORDINARI'
      ReadOnly = True
    end
    object qryReportPlannerSTRAORDINARI: TLargeintField
      FieldName = 'STRAORDINARI'
      ReadOnly = True
    end
    object qryReportPlannerINTERVENTI: TLargeintField
      FieldName = 'INTERVENTI'
      ReadOnly = True
    end
    object qryReportPlannerNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object qryReportPlannerAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object qryReportPlannerSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryReportPlannerSTATINO: TIntegerField
      FieldName = 'STATINO'
      ReadOnly = True
    end
    object qryReportPlannerESTINTORI_ORDINARIO: TLargeintField
      FieldName = 'ESTINTORI_ORDINARIO'
      ReadOnly = True
    end
    object qryReportPlannerESTINTORI_STRAORDINARIO: TLargeintField
      FieldName = 'ESTINTORI_STRAORDINARIO'
      ReadOnly = True
    end
    object qryReportPlannerGRUPPI_ELETTR: TLargeintField
      FieldName = 'GRUPPI_ELETTR'
      ReadOnly = True
    end
    object qryReportPlannerFUMI: TLargeintField
      FieldName = 'FUMI'
      ReadOnly = True
    end
    object qryReportPlannerLUCI: TLargeintField
      FieldName = 'LUCI'
      ReadOnly = True
    end
    object qryReportPlannerIDRANTI: TLargeintField
      FieldName = 'IDRANTI'
      ReadOnly = True
    end
    object qryReportPlannerSPRINKLER: TLargeintField
      FieldName = 'SPRINKLER'
      ReadOnly = True
    end
    object qryReportPlannerIMPIANTI_EL: TLargeintField
      FieldName = 'IMPIANTI_EL'
      ReadOnly = True
    end
    object qryReportPlannerAMMINISTRATORE: TIntegerField
      FieldName = 'AMMINISTRATORE'
      ReadOnly = True
    end
    object qryReportPlannercalcAppuntamentoDataOra: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'calcAppuntamentoDataOra'
      Calculated = True
    end
  end
  object spSetStatinoStato: TUniStoredProc
    StoredProcName = 'SET_STATINI_STATO'
    SQL.Strings = (
      'EXECUTE PROCEDURE SET_STATINI_STATO')
    Connection = JanuaUniConnection1
    Left = 592
    Top = 280
    CommandStoredProcName = 'SET_STATINI_STATO'
  end
  object qryCustomers: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT DISTINCT C.chiave, C.descrizione_scheda'
      'FROM FILIALI_CLIENTI F '
      'JOIN CLIENTI C ON  F.CLIENTE = C.CHIAVE'
      'JOIN STATINI S ON F.chiave = S.filiale'
      'WHERE S.STATO > -1 AND S.STATO < 9'
      'ORDER BY TRIM(C.DESCRIZIONE_SCHEDA)'
      ';')
    Left = 688
    Top = 184
    object qryCustomersCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryCustomersDESCRIZIONE_SCHEDA: TStringField
      FieldName = 'DESCRIZIONE_SCHEDA'
      Size = 255
    end
  end
  object qryTech: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT DISTINCT S.responsabile, T.descrizione as NOME_TECNICO'
      'FROM STATINI s'
      'JOIN TECNICI T ON T.chiave = S.responsabile'
      'ORDER BY T.descrizione'
      ';')
    Active = True
    Left = 688
    Top = 248
    object qryTechRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryTechNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      ReadOnly = True
      Size = 255
    end
  end
  object qryCAP: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT DISTINCT S.CAP'
      'FROM STATINI s'
      'WHERE S.STATO > -1 AND S.STATO < 9'
      'ORDER BY  S.CAP'
      ';')
    Left = 688
    Top = 312
    object qryCAPCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
  end
  object qryPlannerEvents: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM CALENDARIO_EVENTI '
      'where '
      'DALLE_ORE >= :DATA_DAL'
      'AND'
      'DALLE_ORE <= :DATA_AL'
      ';')
    FetchRows = 100
    Active = True
    Left = 792
    Top = 280
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA_DAL'
        ParamType = ptInput
        Value = 45437d
      end
      item
        DataType = ftDate
        Name = 'DATA_AL'
        ParamType = ptInput
        Value = 45503d
      end>
    object qryPlannerEventsCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryPlannerEventsSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryPlannerEventsTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Required = True
    end
    object qryPlannerEventsDALLE_ORE: TDateTimeField
      FieldName = 'DALLE_ORE'
      Required = True
    end
    object qryPlannerEventsALLE_ORE: TDateTimeField
      FieldName = 'ALLE_ORE'
      Required = True
    end
    object qryPlannerEventsNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryPlannerEventsSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Size = 128
    end
    object qryPlannerEventsTECNICO_SIGLA: TStringField
      FieldName = 'TECNICO_SIGLA'
      Size = 12
    end
    object qryPlannerEventsCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object qryPlannerEventsJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object qryPlannerEventsICONA: TSmallintField
      FieldName = 'ICONA'
    end
    object qryPlannerEventsGOOGLE_JSON: TBlobField
      FieldName = 'GOOGLE_JSON'
    end
    object qryPlannerEventsGFORECOLOR: TIntegerField
      FieldName = 'GFORECOLOR'
    end
    object qryPlannerEventsGBACKCOLOR: TIntegerField
      FieldName = 'GBACKCOLOR'
    end
    object qryPlannerEventsCALENDARIO: TIntegerField
      FieldName = 'CALENDARIO'
    end
    object qryPlannerEventsGOOGLEID: TStringField
      FieldName = 'GOOGLEID'
      Size = 128
    end
  end
  object qryTechPlanned: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT S.responsabile, T.descrizione as NOME_TECNICO, T' +
        '.SIGLA'
      'FROM STATINI s'
      'JOIN TECNICI T ON T.chiave = S.responsabile'
      'WHERE S.STATO > -1 -- AND S.STATO < 9'
      '        AND S.APPUNTAMENTO_DATA >= :DATA_DAL'
      '        AND S.APPUNTAMENTO_DATA <= :DATA_AL'
      'ORDER BY T.descrizione'
      ';')
    Left = 592
    Top = 344
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA_DAL'
        ParamType = ptInput
        Value = 45413d
      end
      item
        DataType = ftDate
        Name = 'DATA_AL'
        ParamType = ptInput
        Value = 45503d
      end>
    object IntegerField1: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object StringField1: TStringField
      FieldName = 'NOME_TECNICO'
      ReadOnly = True
      Size = 255
    end
    object qryTechPlannedSIGLA: TStringField
      FieldName = 'SIGLA'
      ReadOnly = True
      Size = 12
    end
  end
  object tabGoogleCalendars: TUniTable
    TableName = 'GOOGLE_CALENDARS'
    Connection = JanuaUniConnection1
    Left = 688
    Top = 40
    object tabGoogleCalendarsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 128
    end
    object tabGoogleCalendarsDESCRIPTION: TBlobField
      FieldName = 'DESCRIPTION'
    end
    object tabGoogleCalendarsLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 128
    end
    object tabGoogleCalendarsSUMMARY: TStringField
      FieldName = 'SUMMARY'
      Size = 256
    end
    object tabGoogleCalendarsPRIMARY: TBooleanField
      FieldName = 'PRIMARY'
    end
    object tabGoogleCalendarsTIMEZONE: TStringField
      FieldName = 'TIMEZONE'
      Size = 60
    end
    object tabGoogleCalendarsCOLOR: TSmallintField
      FieldName = 'COLOR'
    end
    object tabGoogleCalendarsBACK_COLOR: TIntegerField
      FieldName = 'BACK_COLOR'
    end
    object tabGoogleCalendarsFORE_COLOR: TIntegerField
      FieldName = 'FORE_COLOR'
    end
  end
  object tabGoogleEvents: TUniTable
    TableName = 'GOOGLE_CALENDAR_EVENTS'
    DataTypeMap = <
      item
        FieldName = 'DESCRIPTION'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    Left = 688
    Top = 104
    object tabGoogleEventsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 128
    end
    object tabGoogleEventsETAG: TStringField
      FieldName = 'ETAG'
      Size = 128
    end
    object tabGoogleEventsSUMMARY: TStringField
      FieldName = 'SUMMARY'
      Size = 256
    end
    object tabGoogleEventsDESCRIPTION: TWideMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftWideMemo
    end
    object tabGoogleEventsSTARTTIME: TDateTimeField
      FieldName = 'STARTTIME'
    end
    object tabGoogleEventsENDTIME: TDateTimeField
      FieldName = 'ENDTIME'
    end
    object tabGoogleEventsCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object tabGoogleEventsUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object tabGoogleEventsISALLDAY: TBooleanField
      FieldName = 'ISALLDAY'
    end
    object tabGoogleEventsLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 128
    end
    object tabGoogleEventsSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object tabGoogleEventsVISIBILITY: TIntegerField
      FieldName = 'VISIBILITY'
    end
    object tabGoogleEventsRECURRENCE: TStringField
      FieldName = 'RECURRENCE'
      Size = 60
    end
    object tabGoogleEventsRECURRINGID: TStringField
      FieldName = 'RECURRINGID'
      Size = 60
    end
    object tabGoogleEventsSEQUENCE: TIntegerField
      FieldName = 'SEQUENCE'
    end
    object tabGoogleEventsCOLOR: TSmallintField
      FieldName = 'COLOR'
    end
    object tabGoogleEventsUSEDEFAULTREMINDERS: TBooleanField
      FieldName = 'USEDEFAULTREMINDERS'
    end
    object tabGoogleEventsSENDNOTIFICATIONS: TBooleanField
      FieldName = 'SENDNOTIFICATIONS'
    end
    object tabGoogleEventsCALENDARID: TStringField
      FieldName = 'CALENDARID'
      Required = True
      Size = 128
    end
  end
  object dsTecnici: TUniDataSource
    DataSet = qryPlannerEvents
    Left = 784
    Top = 144
  end
  object dsTecniciPlanned: TUniDataSource
    DataSet = qryTechPlanned
    Left = 792
    Top = 352
  end
  object qryPlannerCalendars: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM CALENDARIO'
      'order by TECNICO_SIGLA'
      ';')
    Left = 792
    Top = 216
    object qryPlannerCalendarsCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryPlannerCalendarsTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Required = True
    end
    object qryPlannerCalendarsSUMMARY: TBlobField
      FieldName = 'SUMMARY'
    end
    object qryPlannerCalendarsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 128
    end
    object qryPlannerCalendarsTECNICO_SIGLA: TStringField
      FieldName = 'TECNICO_SIGLA'
      Size = 12
    end
    object qryPlannerCalendarsCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object qryPlannerCalendarsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object qryPlannerCalendarsGOOGLE_JSON: TBlobField
      FieldName = 'GOOGLE_JSON'
    end
    object qryPlannerCalendarsGFORECOLOR: TIntegerField
      FieldName = 'GFORECOLOR'
    end
    object qryPlannerCalendarsGBACKCOLOR: TIntegerField
      FieldName = 'GBACKCOLOR'
    end
    object qryPlannerCalendarsDEFAULTCOLOR: TIntegerField
      FieldName = 'DEFAULTCOLOR'
    end
    object qryPlannerCalendarsGOOGLEID: TStringField
      FieldName = 'GOOGLEID'
      Size = 128
    end
    object qryPlannerCalendarsGOOGLE_SUMMARY: TStringField
      FieldName = 'GOOGLE_SUMMARY'
      Size = 128
    end
  end
end
