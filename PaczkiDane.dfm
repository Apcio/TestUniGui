object PaczkiDaneOkno: TPaczkiDaneOkno
  Left = 0
  Top = 0
  ClientHeight = 650
  ClientWidth = 576
  Caption = 'Dane paczki'
  BorderStyle = bsNone
  Position = poDesktopCenter
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 601
    Width = 576
    Height = 49
    Hint = ''
    Align = alBottom
    TabOrder = 0
    Caption = ''
    ParentAlignmentControl = False
    ExplicitTop = 491
    ExplicitWidth = 580
    object btnAnuluj: TUniButton
      AlignWithMargins = True
      Left = 497
      Top = 4
      Width = 75
      Height = 41
      Hint = ''
      Caption = 'Anuluj'
      ModalResult = 2
      Align = alRight
      TabOrder = 1
      Images = IM.image16
      ImageIndex = 2
      ExplicitLeft = 501
    end
    object btnZapisz: TUniButton
      AlignWithMargins = True
      Left = 413
      Top = 4
      Width = 75
      Height = 41
      Hint = ''
      Margins.Right = 6
      Caption = 'Zapisz'
      Align = alRight
      TabOrder = 2
      Images = IM.image16
      ImageIndex = 3
      OnClick = btnZapiszClick
      ExplicitLeft = 417
    end
  end
  object UniPanel2: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 570
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 1
    BorderStyle = ubsSolid
    Caption = ''
    ParentAlignmentControl = False
    ExplicitWidth = 574
    object UniLabel1: TUniLabel
      Left = 10
      Top = 10
      Width = 67
      Height = 13
      Hint = ''
      Margins.Left = 10
      Margins.Top = 10
      Caption = 'Numer paczki:'
      TabOrder = 1
    end
    object UniDBEdit1: TUniDBEdit
      Left = 104
      Top = 7
      Width = 441
      Height = 22
      Hint = ''
      DataField = 'NUMER_PACZKI'
      DataSource = dsPaczka
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 2
    end
  end
  object UniPanel3: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 47
    Width = 570
    Height = 551
    Hint = ''
    Align = alClient
    TabOrder = 2
    BorderStyle = ubsSolid
    Caption = ''
    ParentAlignmentControl = False
    ExplicitWidth = 574
    ExplicitHeight = 463
    object UniGroupBox1: TUniGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 564
      Height = 89
      Hint = ''
      AlignmentControl = uniAlignmentClient
      Caption = 'Dane paczki'
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 568
      object UniLabel2: TUniLabel
        Left = 31
        Top = 32
        Width = 68
        Height = 13
        Hint = ''
        Caption = 'Data nadania:'
        TabOrder = 5
      end
      object UniLabel3: TUniLabel
        Left = 31
        Top = 61
        Width = 72
        Height = 13
        Hint = ''
        Caption = 'Data wys'#322'ania:'
        TabOrder = 6
      end
      object UniLabel4: TUniLabel
        Left = 339
        Top = 32
        Width = 32
        Height = 13
        Hint = ''
        Caption = 'Waga:'
        TabOrder = 7
      end
      object UniDBEdit2: TUniDBEdit
        Left = 385
        Top = 28
        Width = 91
        Height = 22
        Hint = ''
        DataField = 'WAGA_PACZKI'
        DataSource = dsPaczka
        TabOrder = 3
      end
      object UniLabel13: TUniLabel
        Left = 339
        Top = 61
        Width = 37
        Height = 13
        Hint = ''
        Caption = 'Rodzaj:'
        TabOrder = 8
      end
      object UniDBLookupComboBox3: TUniDBLookupComboBox
        Left = 385
        Top = 56
        Width = 168
        Hint = ''
        ListField = 'NAZWA'
        ListSource = dsRodzajPrzesylki
        KeyField = 'ID_SLW_RODZAJ_PRZESYLKI'
        ListFieldIndex = 0
        DataField = 'ID_SLW_RODZAJ_PRZESYLKI'
        DataSource = dsPaczka
        TabOrder = 4
        Color = clWindow
        ForceSelection = False
      end
      object UniDBDateTimePicker1: TUniDBDateTimePicker
        Left = 120
        Top = 28
        Width = 213
        Hint = ''
        DataField = 'DATA_NADANIA'
        DataSource = dsPaczka
        DateTime = 43406.946291574070000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniDateTime
        TabOrder = 1
      end
      object UniDBDateTimePicker2: TUniDBDateTimePicker
        Left = 120
        Top = 58
        Width = 213
        Hint = ''
        DataField = 'DATA_WYSLANIA'
        DataSource = dsPaczka
        DateTime = 43406.946756550920000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniDateTime
        TabOrder = 2
      end
    end
    object UniGroupBox2: TUniGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 98
      Width = 564
      Height = 303
      Hint = ''
      AlignmentControl = uniAlignmentClient
      Caption = 'Dane odbiorcy'
      Align = alTop
      TabOrder = 2
      object UniLabel5: TUniLabel
        Left = 12
        Top = 26
        Width = 24
        Height = 13
        Hint = ''
        Caption = 'Imi'#281':'
        TabOrder = 1
      end
      object UniLabel6: TUniLabel
        Left = 12
        Top = 56
        Width = 48
        Height = 13
        Hint = ''
        Caption = 'Nazwisko:'
        TabOrder = 2
      end
      object UniLabel7: TUniLabel
        Left = 12
        Top = 146
        Width = 26
        Height = 13
        Hint = ''
        Caption = 'Ulica:'
        TabOrder = 3
      end
      object UniLabel8: TUniLabel
        Left = 12
        Top = 176
        Width = 44
        Height = 13
        Hint = ''
        Caption = 'Nr domu:'
        TabOrder = 4
      end
      object UniLabel9: TUniLabel
        Left = 12
        Top = 206
        Width = 45
        Height = 13
        Hint = ''
        Caption = 'Nr lokalu:'
        TabOrder = 5
      end
      object UniLabel10: TUniLabel
        Left = 12
        Top = 86
        Width = 71
        Height = 13
        Hint = ''
        Caption = 'Kod pocztowy:'
        TabOrder = 6
      end
      object UniLabel11: TUniLabel
        Left = 12
        Top = 236
        Width = 36
        Height = 13
        Hint = ''
        Caption = 'Powiat:'
        TabOrder = 7
      end
      object UniLabel12: TUniLabel
        Left = 12
        Top = 266
        Width = 72
        Height = 13
        Hint = ''
        Caption = 'Wojew'#243'dztwo:'
        TabOrder = 8
      end
      object UniDBEdit3: TUniDBEdit
        Left = 100
        Top = 22
        Width = 214
        Height = 22
        Hint = ''
        DataField = 'ODBIORCA_IMIE'
        DataSource = dsPaczka
        TabOrder = 9
      end
      object UniDBEdit4: TUniDBEdit
        Left = 100
        Top = 52
        Width = 214
        Height = 22
        Hint = ''
        DataField = 'ODBIORCA_NAZWISKO'
        DataSource = dsPaczka
        TabOrder = 10
      end
      object UniDBEdit5: TUniDBEdit
        Left = 100
        Top = 82
        Width = 121
        Height = 22
        Hint = ''
        DataField = 'ODBIORCA_ADR_KOD_POCZTOWY'
        DataSource = dsPaczka
        TabOrder = 11
        OnExit = UniDBEdit5Exit
      end
      object UniDBEdit8: TUniDBEdit
        Left = 100
        Top = 142
        Width = 260
        Height = 22
        Hint = ''
        DataField = 'ODBIORCA_ADR_ULICA'
        DataSource = dsPaczka
        TabOrder = 14
      end
      object UniDBEdit9: TUniDBEdit
        Left = 100
        Top = 172
        Width = 70
        Height = 22
        Hint = ''
        DataField = 'ODBIORCA_ADR_DOM'
        DataSource = dsPaczka
        TabOrder = 15
      end
      object UniDBEdit10: TUniDBEdit
        Left = 100
        Top = 202
        Width = 70
        Height = 22
        Hint = ''
        DataField = 'ODBIORCA_ADR_LOKAL'
        DataSource = dsPaczka
        TabOrder = 16
      end
      object UniDBLookupComboBox1: TUniDBLookupComboBox
        Left = 100
        Top = 234
        Width = 168
        Hint = ''
        ListField = 'POWIAT'
        ListSource = dsPowiaty
        KeyField = 'POWIAT'
        ListFieldIndex = 0
        DataField = 'ODBIORCA_ADR_POWIAT'
        DataSource = dsPaczka
        TabOrder = 12
        Color = clWindow
        ForceSelection = False
      end
      object UniDBLookupComboBox2: TUniDBLookupComboBox
        Left = 100
        Top = 262
        Width = 168
        Hint = ''
        ListField = 'WOJEWODZTWO'
        ListSource = dsWojewodztwa
        KeyField = 'WOJEWODZTWO'
        ListFieldIndex = 0
        DataField = 'ODBIORCA_ADR_WOJEWODZTWO'
        DataSource = dsPaczka
        TabOrder = 13
        Color = clWindow
        RemoteQueryCache = False
        ForceSelection = False
      end
      object UniDBEdit6: TUniDBEdit
        Left = 100
        Top = 112
        Width = 260
        Height = 22
        Hint = ''
        DataField = 'ODBIORCA_ADR_MIEJSCOWOSC'
        DataSource = dsPaczka
        TabOrder = 17
      end
      object UniLabel14: TUniLabel
        Left = 12
        Top = 116
        Width = 63
        Height = 13
        Hint = ''
        Caption = 'Miejscowo'#347#263':'
        TabOrder = 18
      end
    end
    object UniGroupBox3: TUniGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 407
      Width = 564
      Height = 141
      Hint = ''
      AlignmentControl = uniAlignmentClient
      Caption = 'Dane klienta'
      Align = alClient
      TabOrder = 3
      ExplicitTop = 440
      ExplicitWidth = 789
      ExplicitHeight = 207
      object UniButton1: TUniButton
        Left = 10
        Top = 24
        Width = 24
        Height = 24
        Hint = 'Zmie'#324' klienta'
        ShowHint = True
        ParentShowHint = False
        Caption = ''
        TabOrder = 1
        Images = IM.image16
        ImageIndex = 6
        OnClick = UniButton1Click
      end
      object UniDBText1: TUniDBText
        Left = 12
        Top = 61
        Width = 66
        Height = 13
        Hint = ''
        DataField = 'IMIE'
        DataSource = dsKlient
        ParentFont = False
        Font.Style = [fsBold]
      end
      object UniDBText2: TUniDBText
        Left = 12
        Top = 88
        Width = 66
        Height = 13
        Hint = ''
        DataField = 'NAZWISKO'
        DataSource = dsKlient
        ParentFont = False
        Font.Style = [fsBold]
      end
      object klientVIPLbl: TUniLabel
        Left = 51
        Top = 26
        Width = 22
        Height = 16
        Hint = ''
        Caption = 'VIP'
        ParentFont = False
        Font.Color = clRed
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 4
      end
    end
  end
  object fdPaczka: TFDQuery
    Connection = UniMainModule.Polaczenie
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'ID_PACZKA_GEN'
    UpdateOptions.AutoIncFields = 'ID_PACZKA'
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM PACZKI'
      'WHERE ID_PACZKA = :id')
    Left = 384
    Top = 56
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdPaczkaID_PACZKA: TIntegerField
      FieldName = 'ID_PACZKA'
      Origin = 'ID_PACZKA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPaczkaIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      Origin = 'IDKLIENT'
    end
    object fdPaczkaID_SLW_RODZAJ_PRZESYLKI: TIntegerField
      FieldName = 'ID_SLW_RODZAJ_PRZESYLKI'
      Origin = 'ID_SLW_RODZAJ_PRZESYLKI'
    end
    object fdPaczkaODBIORCA_IMIE: TStringField
      FieldName = 'ODBIORCA_IMIE'
      Origin = 'ODBIORCA_IMIE'
      Size = 50
    end
    object fdPaczkaODBIORCA_NAZWISKO: TStringField
      FieldName = 'ODBIORCA_NAZWISKO'
      Origin = 'ODBIORCA_NAZWISKO'
      Size = 50
    end
    object fdPaczkaODBIORCA_ADR_ULICA: TStringField
      FieldName = 'ODBIORCA_ADR_ULICA'
      Origin = 'ODBIORCA_ADR_ULICA'
      Size = 50
    end
    object fdPaczkaODBIORCA_ADR_DOM: TStringField
      FieldName = 'ODBIORCA_ADR_DOM'
      Origin = 'ODBIORCA_ADR_DOM'
      Size = 5
    end
    object fdPaczkaODBIORCA_ADR_LOKAL: TStringField
      FieldName = 'ODBIORCA_ADR_LOKAL'
      Origin = 'ODBIORCA_ADR_LOKAL'
      Size = 5
    end
    object fdPaczkaODBIORCA_ADR_KOD_POCZTOWY: TStringField
      FieldName = 'ODBIORCA_ADR_KOD_POCZTOWY'
      Origin = 'ODBIORCA_ADR_KOD_POCZTOWY'
      Size = 6
    end
    object fdPaczkaODBIORCA_ADR_POWIAT: TStringField
      FieldName = 'ODBIORCA_ADR_POWIAT'
      Origin = 'ODBIORCA_ADR_POWIAT'
    end
    object fdPaczkaODBIORCA_ADR_WOJEWODZTWO: TStringField
      FieldName = 'ODBIORCA_ADR_WOJEWODZTWO'
      Origin = 'ODBIORCA_ADR_WOJEWODZTWO'
      Size = 25
    end
    object fdPaczkaWAGA_PACZKI: TBCDField
      FieldName = 'WAGA_PACZKI'
      Origin = 'WAGA_PACZKI'
      Precision = 18
      Size = 2
    end
    object fdPaczkaWYSTAWIONA_FV: TStringField
      FieldName = 'WYSTAWIONA_FV'
      Origin = 'WYSTAWIONA_FV'
      Size = 3
    end
    object fdPaczkaDATA_NADANIA: TSQLTimeStampField
      FieldName = 'DATA_NADANIA'
      Origin = 'DATA_NADANIA'
    end
    object fdPaczkaDATA_WYSLANIA: TSQLTimeStampField
      FieldName = 'DATA_WYSLANIA'
      Origin = 'DATA_WYSLANIA'
    end
    object fdPaczkaNUMER_PACZKI: TStringField
      FieldName = 'NUMER_PACZKI'
      Origin = 'NUMER_PACZKI'
      Required = True
      Size = 30
    end
    object fdPaczkaODBIORCA_ADR_MIEJSCOWOSC: TStringField
      FieldName = 'ODBIORCA_ADR_MIEJSCOWOSC'
      Origin = 'ODBIORCA_ADR_MIEJSCOWOSC'
      Size = 50
    end
  end
  object fdKlient: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM KLIENCI'
      'WHERE IDKLIENT = :id')
    Left = 480
    Top = 56
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object fdKlientIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      Origin = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdKlientIMIE: TStringField
      FieldName = 'IMIE'
      Origin = 'IMIE'
      Size = 50
    end
    object fdKlientNAZWISKO: TStringField
      FieldName = 'NAZWISKO'
      Origin = 'NAZWISKO'
      Size = 50
    end
    object fdKlientADRES_MIEJSCOWOSC: TStringField
      FieldName = 'ADRES_MIEJSCOWOSC'
      Origin = 'ADRES_MIEJSCOWOSC'
      Size = 50
    end
    object fdKlientADRES_ULICA: TStringField
      FieldName = 'ADRES_ULICA'
      Origin = 'ADRES_ULICA'
      Size = 50
    end
    object fdKlientADRES_DOM: TStringField
      FieldName = 'ADRES_DOM'
      Origin = 'ADRES_DOM'
      Size = 5
    end
    object fdKlientADRES_LOKAL: TStringField
      FieldName = 'ADRES_LOKAL'
      Origin = 'ADRES_LOKAL'
      Size = 5
    end
    object fdKlientADRES_KOD_POCZTOWY: TStringField
      FieldName = 'ADRES_KOD_POCZTOWY'
      Origin = 'ADRES_KOD_POCZTOWY'
      Size = 6
    end
    object fdKlientADRES_POWIAT: TStringField
      FieldName = 'ADRES_POWIAT'
      Origin = 'ADRES_POWIAT'
    end
    object fdKlientADRES_WOJEWODZTWO: TStringField
      FieldName = 'ADRES_WOJEWODZTWO'
      Origin = 'ADRES_WOJEWODZTWO'
      Size = 25
    end
    object fdKlientKLIENT_VIP: TStringField
      FieldName = 'KLIENT_VIP'
      Origin = 'KLIENT_VIP'
      Size = 3
    end
  end
  object dsPaczka: TDataSource
    DataSet = fdPaczka
    Left = 384
    Top = 120
  end
  object dsKlient: TDataSource
    DataSet = fdKlient
    Left = 480
    Top = 112
  end
  object slwPowiaty: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT r.POWIAT'
      'FROM SLW_POWIATY r'
      'GROUP BY 1'
      'ORDER BY 1')
    Left = 296
    Top = 64
    object slwPowiatyPOWIAT: TStringField
      FieldName = 'POWIAT'
      Origin = 'POWIAT'
      Size = 25
    end
  end
  object slwWojewodztwa: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT r.ID_SLW_WOJEWODZTWA, r.WOJEWODZTWO'
      'FROM SLW_WOJEWODZTWA r')
    Left = 200
    Top = 64
    object slwWojewodztwaWOJEWODZTWO: TStringField
      FieldName = 'WOJEWODZTWO'
      Origin = 'WOJEWODZTWO'
    end
  end
  object dsWojewodztwa: TDataSource
    DataSet = slwWojewodztwa
    Left = 200
    Top = 120
  end
  object dsPowiaty: TDataSource
    DataSet = slwPowiaty
    Left = 296
    Top = 120
  end
  object slwRodzajPrzesylki: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT * FROM SLW_RODZAJ_PRZESYLKI')
    Left = 382
    Top = 182
  end
  object dsRodzajPrzesylki: TDataSource
    DataSet = slwRodzajPrzesylki
    Left = 486
    Top = 182
  end
end
