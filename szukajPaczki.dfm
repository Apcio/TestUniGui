object szukajPaczkiOkno: TszukajPaczkiOkno
  Left = 0
  Top = 0
  ClientHeight = 714
  ClientWidth = 895
  Caption = 'Wyszukiwanie paczek'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 895
    Height = 161
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object UniButton3: TUniButton
      Left = 697
      Top = 56
      Width = 95
      Height = 85
      Hint = ''
      Caption = 'Szukaj'
      TabOrder = 5
      Images = IM.image32
      ImageIndex = 4
      OnClick = UniButton3Click
    end
    object UniGroupBox1: TUniGroupBox
      Left = 3
      Top = 38
      Width = 300
      Height = 107
      Hint = ''
      Caption = 'Klient'
      TabOrder = 3
      object szukajKlImie: TUniEdit
        Left = 95
        Top = 18
        Width = 194
        Hint = ''
        Text = ''
        TabOrder = 1
        EmptyText = 'Wprowad'#378' imi'#281
      end
      object szukajKlNazwisko: TUniEdit
        Left = 95
        Top = 46
        Width = 194
        Hint = ''
        Text = ''
        TabOrder = 2
        EmptyText = 'Wprowad'#378' nazwisko'
      end
      object szukajKlMiejscowosc: TUniEdit
        Left = 94
        Top = 74
        Width = 195
        Hint = ''
        Text = ''
        TabOrder = 3
        EmptyText = 'Wprowad'#378' miejscowo'#347#263
      end
      object UniLabel1: TUniLabel
        Left = 15
        Top = 22
        Width = 24
        Height = 13
        Hint = ''
        Caption = 'Imi'#281':'
        TabOrder = 4
      end
      object UniLabel2: TUniLabel
        Left = 15
        Top = 50
        Width = 48
        Height = 13
        Hint = ''
        Caption = 'Nazwisko:'
        TabOrder = 5
      end
      object UniLabel3: TUniLabel
        Left = 15
        Top = 78
        Width = 63
        Height = 13
        Hint = ''
        Caption = 'Miejscowo'#347#263':'
        TabOrder = 6
      end
    end
    object UniGroupBox2: TUniGroupBox
      Left = 318
      Top = 38
      Width = 300
      Height = 107
      Hint = ''
      Caption = 'Odbiorca'
      TabOrder = 4
      object szukajOdbImie: TUniEdit
        Left = 95
        Top = 18
        Width = 195
        Hint = ''
        Text = ''
        TabOrder = 1
        EmptyText = 'Wprowad'#378' imi'#281
      end
      object szukajOdbNazwisko: TUniEdit
        Left = 95
        Top = 46
        Width = 195
        Hint = ''
        Text = ''
        TabOrder = 2
        EmptyText = 'Wprowad'#378' nazwisko'
      end
      object szukajOdbMiejscowosc: TUniEdit
        Left = 95
        Top = 74
        Width = 195
        Hint = ''
        Text = ''
        TabOrder = 3
        EmptyText = 'Wprowad'#378' miejscowo'#347#263
      end
      object UniLabel4: TUniLabel
        Left = 15
        Top = 22
        Width = 24
        Height = 13
        Hint = ''
        Caption = 'Imi'#281':'
        TabOrder = 4
      end
      object UniLabel5: TUniLabel
        Left = 15
        Top = 50
        Width = 48
        Height = 13
        Hint = ''
        Caption = 'Nazwisko:'
        TabOrder = 5
      end
      object UniLabel6: TUniLabel
        Left = 15
        Top = 78
        Width = 63
        Height = 13
        Hint = ''
        Caption = 'Miejscowo'#347#263':'
        TabOrder = 6
      end
    end
    object UniLabel7: TUniLabel
      Left = 15
      Top = 14
      Width = 67
      Height = 13
      Hint = ''
      Caption = 'Numer paczki:'
      TabOrder = 1
    end
    object szukajNumerPaczki: TUniEdit
      AlignWithMargins = True
      Left = 108
      Top = 10
      Width = 195
      Hint = ''
      Text = ''
      TabOrder = 2
      EmptyText = 'Wprowad'#378' numer paczki'
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 161
    Width = 895
    Height = 503
    Hint = ''
    HeaderTitleAlign = taCenter
    DataSource = dsSzukaj
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Wczytuj'#281' dane ...'
    Align = alClient
    TabOrder = 1
    TabKeyBehavior = tkNextComponent
    OnDrawColumnCell = UniDBGrid1DrawColumnCell
    Columns = <
      item
        FieldName = 'NUMER_PACZKI'
        Title.Caption = 'Numer paczki'
        Width = 64
      end
      item
        FieldName = 'KLIENT_IMIE'
        Title.Caption = 'Imi'#281' klienta'
        Width = 120
      end
      item
        FieldName = 'KLIENT_NAZWISKO'
        Title.Caption = 'Nazwisko klienta'
        Width = 120
      end
      item
        FieldName = 'KLIENT_ADR_MIEJSCOWOSC'
        Title.Caption = 'Miejscowo'#347#263' klienta'
        Width = 120
      end
      item
        FieldName = 'ODBIORCA_IMIE'
        Title.Caption = 'Imi'#281' odbiorcy'
        Width = 120
      end
      item
        FieldName = 'ODBIORCA_NAZWISKO'
        Title.Caption = 'Nazwisko odbiorcy'
        Width = 120
      end
      item
        FieldName = 'ODBIORCA_ADR_MIEJSCOWOSC'
        Title.Caption = 'Miejscowo'#347#263' odbiorcy'
        Width = 120
      end>
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 664
    Width = 895
    Height = 50
    Hint = ''
    Align = alBottom
    TabOrder = 2
    Caption = ''
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 728
      Top = 4
      Width = 75
      Height = 42
      Hint = ''
      Margins.Right = 10
      Caption = 'Wybierz'
      Align = alRight
      TabOrder = 1
      Default = True
      Images = IM.image16
      ImageIndex = 3
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      AlignWithMargins = True
      Left = 816
      Top = 4
      Width = 75
      Height = 42
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
  object fdSzukaj: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT'
      '  PACZKI.ID_PACZKA,'
      '  PACZKI.NUMER_PACZKI,'
      '  PACZKI.WYSTAWIONA_FV,'
      '  PACZKI.ODBIORCA_IMIE,'
      '  PACZKI.ODBIORCA_NAZWISKO,'
      '  PACZKI.ODBIORCA_ADR_ULICA,'
      '  PACZKI.ODBIORCA_ADR_DOM,'
      '  PACZKI.ODBIORCA_ADR_LOKAL,'
      '  PACZKI.ODBIORCA_ADR_KOD_POCZTOWY,'
      '  PACZKI.ODBIORCA_ADR_WOJEWODZTWO,'
      '  PACZKI.ODBIORCA_ADR_MIEJSCOWOSC,'
      '  KLIENCI.IDKLIENT,'
      '  KLIENCI.IMIE AS KLIENT_IMIE,'
      '  KLIENCI.NAZWISKO AS KLIENT_NAZWISKO,'
      '  KLIENCI.ADRES_MIEJSCOWOSC AS KLIENT_ADR_MIEJSCOWOSC,'
      '  KLIENCI.ADRES_ULICA AS KLIENT_ADR_ULICA,'
      '  KLIENCI.ADRES_DOM AS KLIENT_ADR_DOM,'
      '  KLIENCI.ADRES_LOKAL AS KLIENT_ADR_LOKAL,'
      '  KLIENCI.ADRES_WOJEWODZTWO AS KLIENT_ADR_WOJEWODZTWO,'
      '  KLIENCI.ADRES_KOD_POCZTOWY AS KLIENT_ADR_KOD_POCZTOWY'
      ''
      'FROM PACZKI'
      ''
      'JOIN KLIENCI ON KLIENCI.IDKLIENT = PACZKI.IDKLIENT'
      ''
      'WHERE PACZKI.NUMER_PACZKI LIKE :nrPaczki'
      '  AND UPPER(PACZKI.ODBIORCA_IMIE) LIKE :odbImie'
      '  AND UPPER(PACZKI.ODBIORCA_NAZWISKO) LIKE :odbNazwisko'
      
        '  AND UPPER(PACZKI.ODBIORCA_ADR_MIEJSCOWOSC) LIKE :odbMiejscowos' +
        'c'
      '  AND UPPER(KLIENCI.IMIE) LIKE :klImie'
      '  AND UPPER(KLIENCI.NAZWISKO) LIKE :klNazwisko'
      '  AND UPPER(KLIENCI.ADRES_MIEJSCOWOSC) LIKE :klMiejscowosc')
    Left = 88
    Top = 231
    ParamData = <
      item
        Name = 'NRPACZKI'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'ODBIMIE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ODBNAZWISKO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ODBMIEJSCOWOSC'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'KLIMIE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'KLNAZWISKO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'KLMIEJSCOWOSC'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object dsSzukaj: TDataSource
    DataSet = fdSzukaj
    Left = 168
    Top = 231
  end
end
