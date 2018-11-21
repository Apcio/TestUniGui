object DaneFakturyOkno: TDaneFakturyOkno
  Left = 0
  Top = 0
  ClientHeight = 669
  ClientWidth = 949
  Caption = 'Dane faktury'
  BorderStyle = bsNone
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 0
    Top = 628
    Width = 949
    Height = 41
    Hint = ''
    Align = alBottom
    TabOrder = 0
    Caption = ''
    object btnZapisz: TUniButton
      Left = 798
      Top = 1
      Width = 75
      Height = 39
      Hint = ''
      Caption = 'Zapisz'
      Align = alRight
      TabOrder = 1
      Default = True
      Images = IM.image16
      ImageIndex = 3
      OnClick = btnZapiszClick
    end
    object btnAnuluj: TUniButton
      Left = 873
      Top = 1
      Width = 75
      Height = 39
      Hint = ''
      Caption = 'Anuluj'
      Cancel = True
      ModalResult = 2
      Align = alRight
      TabOrder = 2
      Images = IM.image16
      ImageIndex = 2
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 225
    Hint = ''
    Align = alTop
    TabOrder = 1
    Caption = ''
    object UniGroupBox2: TUniGroupBox
      Left = 377
      Top = 1
      Width = 571
      Height = 223
      Hint = ''
      Caption = 'Odbiorca'
      Align = alClient
      TabOrder = 1
      object UniLabel4: TUniLabel
        Left = 20
        Top = 20
        Width = 32
        Height = 16
        Hint = ''
        Caption = 'Imi'#281':'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object UniLabel5: TUniLabel
        Left = 20
        Top = 45
        Width = 64
        Height = 16
        Hint = ''
        Caption = 'Nazwisko:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 2
      end
      object UniLabel6: TUniLabel
        Left = 20
        Top = 70
        Width = 34
        Height = 16
        Hint = ''
        Caption = 'Ulica:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object UniLabel7: TUniLabel
        Left = 20
        Top = 95
        Width = 58
        Height = 16
        Hint = ''
        Caption = 'Nr domu:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 4
      end
      object UniLabel8: TUniLabel
        Left = 20
        Top = 120
        Width = 64
        Height = 16
        Hint = ''
        Caption = 'Nr Lokalu:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object UniLabel9: TUniLabel
        Left = 20
        Top = 170
        Width = 97
        Height = 16
        Hint = ''
        Caption = 'Wojew'#243'dztwo:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 6
      end
      object UniLabel10: TUniLabel
        Left = 20
        Top = 145
        Width = 49
        Height = 16
        Hint = ''
        Caption = 'Powiat:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 7
      end
      object UniDBText2: TUniDBText
        Left = 150
        Top = 20
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'IMIE'
        DataSource = dsPaczka
      end
      object UniDBText3: TUniDBText
        Left = 150
        Top = 45
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'NAZWISKO'
        DataSource = dsPaczka
      end
      object UniDBText4: TUniDBText
        Left = 150
        Top = 70
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'ADRES_ULICA'
        DataSource = dsPaczka
      end
      object UniDBText5: TUniDBText
        Left = 150
        Top = 95
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'ADRES_DOM'
        DataSource = dsPaczka
      end
      object UniDBText6: TUniDBText
        Left = 150
        Top = 120
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'ADRES_LOKAL'
        DataSource = dsPaczka
      end
      object UniDBText7: TUniDBText
        Left = 150
        Top = 145
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'ADRES_POWIAT'
        DataSource = dsPaczka
      end
      object UniDBText8: TUniDBText
        Left = 150
        Top = 170
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'ADRES_WOJEWODZTWO'
        DataSource = dsPaczka
      end
    end
    object UniGroupBox1: TUniGroupBox
      Left = 1
      Top = 1
      Width = 376
      Height = 223
      Hint = ''
      Caption = 'Faktura'
      Align = alLeft
      TabOrder = 2
      object UniDBEdit1: TUniDBEdit
        Left = 16
        Top = 38
        Width = 345
        Height = 22
        Hint = ''
        DataField = 'NUMER_FV'
        DataSource = dsFV
        TabOrder = 1
        ReadOnly = True
      end
      object UniLabel1: TUniLabel
        Left = 16
        Top = 16
        Width = 98
        Height = 16
        Hint = ''
        Caption = 'Numer faktury:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 2
      end
      object UniLabel2: TUniLabel
        Left = 16
        Top = 66
        Width = 173
        Height = 16
        Hint = ''
        Caption = 'Data wystawienia faktury:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object UniLabel3: TUniLabel
        Left = 16
        Top = 116
        Width = 120
        Height = 16
        Hint = ''
        Caption = 'Dotyczy przesy'#322'ki:'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 4
      end
      object UniDBDateTimePicker1: TUniDBDateTimePicker
        Left = 16
        Top = 88
        Width = 129
        Hint = ''
        DataField = 'DATA_WYSTAWIENIA'
        DataSource = dsFV
        DateTime = 43414.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 5
      end
      object btnWybierzKlienta: TUniButton
        Left = 142
        Top = 111
        Width = 30
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 6
        Images = IM.image16
        ImageIndex = 6
        OnClick = btnWybierzKlientaClick
      end
      object UniDBText1: TUniDBText
        Left = 140
        Top = 146
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'NUMER_PACZKI'
        DataSource = dsPaczka
      end
      object UniLabel11: TUniLabel
        Left = 36
        Top = 146
        Width = 38
        Height = 13
        Hint = ''
        Caption = 'Numer: '
        TabOrder = 8
      end
      object UniLabel12: TUniLabel
        Left = 36
        Top = 165
        Width = 58
        Height = 13
        Hint = ''
        Caption = 'Imi'#281' klienta:'
        TabOrder = 9
      end
      object UniLabel13: TUniLabel
        Left = 36
        Top = 184
        Width = 82
        Height = 13
        Hint = ''
        Caption = 'Nazwisko klienta:'
        TabOrder = 10
      end
      object UniDBText9: TUniDBText
        Left = 140
        Top = 184
        Width = 56
        Height = 13
        Hint = ''
        DataField = 'NAZWISKO'
        DataSource = dsPaczka
      end
      object UniDBText10: TUniDBText
        Left = 140
        Top = 165
        Width = 62
        Height = 13
        Hint = ''
        DataField = 'IMIE'
        DataSource = dsPaczka
      end
    end
  end
  object UniPanel3: TUniPanel
    Left = 0
    Top = 225
    Width = 949
    Height = 403
    Hint = ''
    Align = alClient
    TabOrder = 2
    Caption = ''
    object UniToolBar1: TUniToolBar
      Left = 1
      Top = 1
      Width = 947
      Height = 24
      Hint = ''
      Images = IM.image16
      TabOrder = 1
      ParentColor = False
      Color = clBtnFace
      object UniToolButton1: TUniToolButton
        Left = 0
        Top = 0
        Hint = 'Dodaj pozycj'#281
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 0
        Caption = 'UniToolButton1'
        TabOrder = 1
      end
      object UniToolButton2: TUniToolButton
        Left = 23
        Top = 0
        Hint = 'Edytuj pozycj'#281
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 1
        Caption = 'UniToolButton2'
        TabOrder = 2
      end
      object UniToolButton3: TUniToolButton
        Left = 46
        Top = 0
        Hint = 'Usu'#324' pozycj'#281
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 5
        Caption = 'UniToolButton3'
        TabOrder = 3
      end
      object UniToolButton4: TUniToolButton
        Left = 69
        Top = 0
        Width = 8
        Hint = ''
        Style = tbsSeparator
        Caption = 'UniToolButton4'
        TabOrder = 4
      end
      object UniToolButton5: TUniToolButton
        Left = 77
        Top = 0
        Hint = 'Od'#347'wie'#380
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 4
        Caption = ''
        TabOrder = 5
        OnClick = UniToolButton5Click
      end
    end
    object UniDBGrid1: TUniDBGrid
      Left = 1
      Top = 25
      Width = 202
      Height = 377
      Hint = ''
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
      ReadOnly = True
      LoadMask.Message = 'Loading data...'
      TabOrder = 2
      Columns = <
        item
          FieldName = 'USLUGA'
          Title.Caption = 'Us'#322'uga'
          Width = 64
        end
        item
          FieldName = 'ILOSC'
          Title.Caption = 'Ilo'#347#263
          Width = 60
        end
        item
          FieldName = 'KWOTA_NETTO'
          Title.Caption = 'Kwota NETTO'
          Width = 100
        end
        item
          FieldName = 'WARTOSC_NETTO'
          Title.Caption = 'Warto'#347#263' NETTO'
          Width = 100
        end
        item
          FieldName = 'WARTOSC_VAT'
          Title.Caption = 'Warto'#347#263' VAT'
          Width = 100
        end
        item
          FieldName = 'WARTOSC_BRUTTO'
          Title.Caption = 'Warto'#347#263' BRUTTO'
          Width = 100
        end>
    end
    object UniDBGrid2: TUniDBGrid
      Left = 255
      Top = 240
      Width = 578
      Height = 137
      Hint = ''
      DataSource = dsPozycjeFV
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
      WebOptions.RetainCursorOnSort = True
      LoadMask.WaitData = True
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      TabOrder = 3
    end
    object UniButton1: TUniButton
      Left = 839
      Top = 160
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'dodaj pozycje'
      TabOrder = 4
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 839
      Top = 191
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Zapisz poz'
      TabOrder = 5
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 839
      Top = 222
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'commit poz'
      TabOrder = 6
      OnClick = UniButton3Click
    end
    object UniButton4: TUniButton
      Left = 839
      Top = 253
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'cancel poz'
      TabOrder = 7
      OnClick = UniButton4Click
    end
  end
  object UniDBGrid3: TUniDBGrid
    Left = 255
    Top = 256
    Width = 578
    Height = 177
    Hint = ''
    DataSource = DataSource1
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    TabOrder = 3
  end
  object fdDaneFV: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Polaczenie
    UpdateOptions.AssignedValues = [uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvUpdateNonBaseFields, uvAutoCommitUpdates]
    UpdateOptions.UpdateNonBaseFields = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'ID_FV_GEN'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'ID_FV'
    SQL.Strings = (
      'SELECT'
      '  FAKTURA.ID_FV,'
      '  FAKTURA.ID_KLIENT,'
      '  FAKTURA.ID_PACZKA,'
      '  FAKTURA.DATA_WYSTAWIENIA,'
      '  FAKTURA.WARTOSC_NETTO,'
      '  FAKTURA.WARTOSC_VAT,'
      '  FAKTURA.WARTOSC_BRUTTO,'
      '  FAKTURA.NUMER,'
      '  FAKTURA.NUMER_FV'
      'FROM FAKTURA'
      'WHERE FAKTURA.ID_FV = :id')
    Left = 776
    Top = 265
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdDaneFVID_FV: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_FV'
      Origin = 'ID_FV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdDaneFVID_PACZKA: TIntegerField
      FieldName = 'ID_PACZKA'
      Origin = 'ID_PACZKA'
    end
    object fdDaneFVID_KLIENT: TIntegerField
      FieldName = 'ID_KLIENT'
      Origin = 'ID_KLIENT'
    end
    object fdDaneFVDATA_WYSTAWIENIA: TDateField
      FieldName = 'DATA_WYSTAWIENIA'
      Origin = 'DATA_WYSTAWIENIA'
    end
    object fdDaneFVWARTOSC_NETTO: TBCDField
      FieldName = 'WARTOSC_NETTO'
      Origin = 'WARTOSC_NETTO'
      Precision = 18
    end
    object fdDaneFVWARTOSC_VAT: TBCDField
      FieldName = 'WARTOSC_VAT'
      Origin = 'WARTOSC_VAT'
      Precision = 18
    end
    object fdDaneFVWARTOSC_BRUTTO: TBCDField
      FieldName = 'WARTOSC_BRUTTO'
      Origin = 'WARTOSC_BRUTTO'
      Precision = 18
    end
    object fdDaneFVNUMER: TIntegerField
      FieldName = 'NUMER'
      Origin = 'NUMER'
    end
    object fdDaneFVNUMER_FV: TStringField
      FieldName = 'NUMER_FV'
      Origin = 'NUMER_FV'
      Required = True
      Size = 10
    end
  end
  object fdPozycjeFV: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Polaczenie
    UpdateOptions.AssignedValues = [uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvUpdateNonBaseFields, uvAutoCommitUpdates]
    UpdateOptions.UpdateNonBaseFields = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.GeneratorName = 'ID_FV_POZ_GEN'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'ID_FV_POZ'
    UpdateOptions.AutoIncFields = 'ID_FV_POZ'
    SQL.Strings = (
      'SELECT'
      '  FAKTURA_POZ.ID_FV_POZ,'
      '  FAKTURA_POZ.ID_FV,'
      '  FAKTURA_POZ.ID_PACZKA,'
      '  FAKTURA_POZ.USLUGA,'
      '  FAKTURA_POZ.ILOSC,'
      '  FAKTURA_POZ.KWOTA_NETTO,'
      '  FAKTURA_POZ.WARTOSC_NETTO,'
      '  FAKTURA_POZ.WARTOSC_VAT,'
      '  FAKTURA_POZ.WARTOSC_BRUTTO'
      'FROM FAKTURA_POZ'
      'WHERE FAKTURA_POZ.ID_FV = :id')
    Left = 864
    Top = 265
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object fdPozycjeFVID_FV_POZ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_FV_POZ'
      Origin = 'ID_FV_POZ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPozycjeFVID_FV: TIntegerField
      FieldName = 'ID_FV'
      Origin = 'ID_FV'
    end
    object fdPozycjeFVID_PACZKA: TIntegerField
      FieldName = 'ID_PACZKA'
      Origin = 'ID_PACZKA'
    end
    object fdPozycjeFVUSLUGA: TStringField
      FieldName = 'USLUGA'
      Origin = 'USLUGA'
      Size = 200
    end
    object fdPozycjeFVILOSC: TIntegerField
      FieldName = 'ILOSC'
      Origin = 'ILOSC'
    end
    object fdPozycjeFVKWOTA_NETTO: TBCDField
      FieldName = 'KWOTA_NETTO'
      Origin = 'KWOTA_NETTO'
      Precision = 18
    end
    object fdPozycjeFVWARTOSC_NETTO: TBCDField
      FieldName = 'WARTOSC_NETTO'
      Origin = 'WARTOSC_NETTO'
      Precision = 18
    end
    object fdPozycjeFVWARTOSC_VAT: TBCDField
      FieldName = 'WARTOSC_VAT'
      Origin = 'WARTOSC_VAT'
      Precision = 18
    end
    object fdPozycjeFVWARTOSC_BRUTTO: TBCDField
      FieldName = 'WARTOSC_BRUTTO'
      Origin = 'WARTOSC_BRUTTO'
      Precision = 18
    end
  end
  object dsFV: TDataSource
    DataSet = fdDaneFV
    Left = 776
    Top = 313
  end
  object dsPozycjeFV: TDataSource
    DataSet = fdPozycjeFV
    Left = 864
    Top = 313
  end
  object fdPaczka: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT'
      '  PACZKI.ID_PACZKA,'
      '  PACZKI.NUMER_PACZKI,'
      '  KLIENCI.IMIE,'
      '  KLIENCI.NAZWISKO,'
      '  KLIENCI.ADRES_MIEJSCOWOSC,'
      '  KLIENCI.ADRES_ULICA,'
      '  KLIENCI.ADRES_DOM,'
      '  KLIENCI.ADRES_LOKAL,'
      '  KLIENCI.ADRES_KOD_POCZTOWY,'
      '  KLIENCI.ADRES_POWIAT,'
      '  KLIENCI.ADRES_WOJEWODZTWO'
      'FROM PACZKI'
      'JOIN KLIENCI ON KLIENCI.IDKLIENT = PACZKI.IDKLIENT'
      ''
      'WHERE PACZKI.ID_PACZKA = :id')
    Left = 704
    Top = 265
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
    object fdPaczkaNUMER_PACZKI: TStringField
      FieldName = 'NUMER_PACZKI'
      Origin = 'NUMER_PACZKI'
      Required = True
      Size = 30
    end
    object fdPaczkaIMIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMIE'
      Origin = 'IMIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdPaczkaNAZWISKO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAZWISKO'
      Origin = 'NAZWISKO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdPaczkaADRES_MIEJSCOWOSC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADRES_MIEJSCOWOSC'
      Origin = 'ADRES_MIEJSCOWOSC'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdPaczkaADRES_ULICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADRES_ULICA'
      Origin = 'ADRES_ULICA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdPaczkaADRES_DOM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADRES_DOM'
      Origin = 'ADRES_DOM'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object fdPaczkaADRES_LOKAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADRES_LOKAL'
      Origin = 'ADRES_LOKAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object fdPaczkaADRES_KOD_POCZTOWY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADRES_KOD_POCZTOWY'
      Origin = 'ADRES_KOD_POCZTOWY'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object fdPaczkaADRES_POWIAT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADRES_POWIAT'
      Origin = 'ADRES_POWIAT'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdPaczkaADRES_WOJEWODZTWO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADRES_WOJEWODZTWO'
      Origin = 'ADRES_WOJEWODZTWO'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object dsPaczka: TDataSource
    DataSet = fdPaczka
    Left = 704
    Top = 313
  end
  object FDQuery1: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvRefreshMode, uvGeneratorName, uvUpdateNonBaseFields, uvAutoCommitUpdates]
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.GeneratorName = 'ID_FV_POZ_GEN'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'ID_FV_POZ'
    UpdateOptions.AutoIncFields = 'ID_FV_POZ'
    SQL.Strings = (
      'SELECT'
      '  FAKTURA_POZ.ID_FV_POZ,'
      '  FAKTURA_POZ.ID_FV,'
      '  FAKTURA_POZ.ID_PACZKA,'
      '  FAKTURA_POZ.USLUGA,'
      '  FAKTURA_POZ.ILOSC,'
      '  FAKTURA_POZ.KWOTA_NETTO,'
      '  FAKTURA_POZ.WARTOSC_NETTO,'
      '  FAKTURA_POZ.WARTOSC_VAT,'
      '  FAKTURA_POZ.WARTOSC_BRUTTO'
      'FROM FAKTURA_POZ'
      'WHERE FAKTURA_POZ.ID_FV = :id')
    Left = 336
    Top = 281
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 336
    Top = 337
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Praca\Projekty\euco\Testy\UniGuiTest\Aplikacja\files' +
        '\UGPOCZTA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1250'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvRefreshMode, uvAutoCommitUpdates]
    LoginPrompt = False
    Left = 416
    Top = 280
  end
end
