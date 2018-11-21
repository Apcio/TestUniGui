object klienciDaneForm: TklienciDaneForm
  Left = 0
  Top = 0
  ClientHeight = 326
  ClientWidth = 544
  Caption = 'Dane klienta'
  BorderStyle = bsNone
  WindowState = wsMaximized
  Position = poOwnerFormCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  OnCancel = UniFormCancel
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gpDaneKlienta: TUniGroupBox
    Left = 8
    Top = 8
    Width = 529
    Height = 105
    Hint = ''
    Caption = 'Dane klienta'
    TabOrder = 0
    object UniDBEdit1: TUniDBEdit
      Left = 96
      Top = 22
      Width = 225
      Height = 22
      Hint = ''
      Margins.Left = 10
      DataField = 'IMIE'
      DataSource = dsKlient
      TabOrder = 1
    end
    object UniDBEdit2: TUniDBEdit
      Left = 96
      Top = 62
      Width = 225
      Height = 22
      Hint = ''
      Margins.Left = 10
      DataField = 'NAZWISKO'
      DataSource = dsKlient
      TabOrder = 2
    end
    object UniLabel1: TUniLabel
      Left = 56
      Top = 24
      Width = 24
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Imi'#281':'
      TabOrder = 3
    end
    object UniLabel2: TUniLabel
      Left = 32
      Top = 64
      Width = 48
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Nazwisko:'
      TabOrder = 4
    end
    object UniLabel10: TUniLabel
      Left = 384
      Top = 24
      Width = 20
      Height = 13
      Hint = ''
      Caption = 'VIP:'
      TabOrder = 5
    end
    object UniDBComboBox1: TUniDBComboBox
      Left = 384
      Top = 43
      Width = 65
      Hint = ''
      DataField = 'KLIENT_VIP'
      DataSource = dsKlient
      Items.Strings = (
        'Nie'
        'Tak')
      TabOrder = 6
      ForceSelection = False
    end
  end
  object gpAdres: TUniGroupBox
    Left = 7
    Top = 119
    Width = 529
    Height = 138
    Hint = ''
    Caption = 'Adres'
    TabOrder = 1
    object UniDBEdit3: TUniDBEdit
      Left = 360
      Top = 23
      Width = 80
      Height = 22
      Hint = ''
      Margins.Left = 10
      DataField = 'ADRES_KOD_POCZTOWY'
      DataSource = dsKlient
      TabOrder = 5
      OnExit = UniDBEdit3Exit
    end
    object UniDBEdit6: TUniDBEdit
      Left = 96
      Top = 108
      Width = 56
      Height = 22
      Hint = ''
      Margins.Left = 10
      DataField = 'ADRES_LOKAL'
      DataSource = dsKlient
      TabOrder = 4
    end
    object UniDBEdit7: TUniDBEdit
      Left = 96
      Top = 80
      Width = 56
      Height = 22
      Hint = ''
      Margins.Left = 10
      DataField = 'ADRES_DOM'
      DataSource = dsKlient
      TabOrder = 3
    end
    object UniDBEdit8: TUniDBEdit
      Left = 96
      Top = 52
      Width = 121
      Height = 22
      Hint = ''
      Margins.Left = 10
      DataField = 'ADRES_ULICA'
      DataSource = dsKlient
      TabOrder = 2
    end
    object UniDBEdit9: TUniDBEdit
      Left = 96
      Top = 23
      Width = 121
      Height = 22
      Hint = ''
      Margins.Left = 10
      DataField = 'ADRES_MIEJSCOWOSC'
      DataSource = dsKlient
      TabOrder = 1
    end
    object UniLabel3: TUniLabel
      Left = 16
      Top = 26
      Width = 63
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Miejscowo'#347#263':'
      TabOrder = 6
    end
    object UniLabel4: TUniLabel
      Left = 54
      Top = 54
      Width = 26
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Ulica:'
      TabOrder = 7
    end
    object UniLabel5: TUniLabel
      Left = 270
      Top = 26
      Width = 71
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Kod pocztowy:'
      TabOrder = 8
    end
    object UniLabel6: TUniLabel
      Left = 33
      Top = 83
      Width = 44
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Nr domu:'
      TabOrder = 9
    end
    object UniLabel7: TUniLabel
      Left = 35
      Top = 111
      Width = 45
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Nr lokalu:'
      TabOrder = 10
    end
    object UniLabel8: TUniLabel
      Left = 269
      Top = 83
      Width = 72
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Wojew'#243'dztwo:'
      TabOrder = 12
    end
    object UniLabel9: TUniLabel
      Left = 305
      Top = 54
      Width = 36
      Height = 13
      Hint = ''
      Alignment = taRightJustify
      Caption = 'Powiat:'
      TabOrder = 11
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Left = 360
      Top = 52
      Width = 145
      Hint = ''
      ListField = 'POWIAT'
      ListSource = dsPowiaty
      KeyField = 'POWIAT'
      ListFieldIndex = 0
      DataField = 'ADRES_POWIAT'
      DataSource = dsKlient
      TabOrder = 13
      Color = clWindow
      ForceSelection = False
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Left = 360
      Top = 80
      Width = 145
      Hint = ''
      ListField = 'WOJEWODZTWO'
      ListSource = dsWojewodztwa
      KeyField = 'WOJEWODZTWO'
      ListFieldIndex = 0
      DataField = 'ADRES_WOJEWODZTWO'
      DataSource = dsKlient
      TabOrder = 14
      Color = clWindow
      ForceSelection = False
    end
  end
  object UniPanel1: TUniPanel
    Left = 8
    Top = 263
    Width = 529
    Height = 57
    Hint = ''
    TabOrder = 2
    BorderStyle = ubsFrameLowered
    Caption = ''
    object UniButton2: TUniButton
      Left = 333
      Top = 10
      Width = 75
      Height = 37
      Hint = ''
      Caption = 'Zapisz'
      TabOrder = 1
      Images = IM.image16
      ImageIndex = 3
      OnClick = UniButton2Click
    end
    object UniButton1: TUniButton
      Left = 437
      Top = 10
      Width = 75
      Height = 38
      Hint = ''
      Caption = 'Anuluj'
      Cancel = True
      ModalResult = 2
      TabOrder = 2
      Images = IM.image16
      ImageIndex = 2
    end
  end
  object Klient: TFDQuery
    Connection = UniMainModule.Polaczenie
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'IDKLIENT_GEN'
    UpdateOptions.AutoIncFields = 'IDKLIENT'
    SQL.Strings = (
      'SELECT * FROM KLIENCI'
      'WHERE IDKLIENT = :id')
    Left = 472
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object KlientIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      Origin = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object KlientIMIE: TStringField
      FieldName = 'IMIE'
      Origin = 'IMIE'
      Size = 50
    end
    object KlientNAZWISKO: TStringField
      FieldName = 'NAZWISKO'
      Origin = 'NAZWISKO'
      Size = 50
    end
    object KlientADRES_MIEJSCOWOSC: TStringField
      FieldName = 'ADRES_MIEJSCOWOSC'
      Origin = 'ADRES_MIEJSCOWOSC'
      Size = 50
    end
    object KlientADRES_ULICA: TStringField
      FieldName = 'ADRES_ULICA'
      Origin = 'ADRES_ULICA'
      Size = 50
    end
    object KlientADRES_DOM: TStringField
      FieldName = 'ADRES_DOM'
      Origin = 'ADRES_DOM'
      Size = 5
    end
    object KlientADRES_LOKAL: TStringField
      FieldName = 'ADRES_LOKAL'
      Origin = 'ADRES_LOKAL'
      Size = 5
    end
    object KlientADRES_KOD_POCZTOWY: TStringField
      FieldName = 'ADRES_KOD_POCZTOWY'
      Origin = 'ADRES_KOD_POCZTOWY'
      Size = 6
    end
    object KlientADRES_POWIAT: TStringField
      FieldName = 'ADRES_POWIAT'
      Origin = 'ADRES_POWIAT'
    end
    object KlientADRES_WOJEWODZTWO: TStringField
      FieldName = 'ADRES_WOJEWODZTWO'
      Origin = 'ADRES_WOJEWODZTWO'
      Size = 25
    end
    object KlientKLIENT_VIP: TStringField
      FieldName = 'KLIENT_VIP'
      Origin = 'KLIENT_VIP'
      Size = 3
    end
  end
  object dsKlient: TDataSource
    DataSet = Klient
    Left = 400
    Top = 40
  end
  object slwPowiaty: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT r.POWIAT'
      'FROM SLW_POWIATY r'
      'GROUP BY 1'
      'ORDER BY 1')
    Left = 304
    Top = 32
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
    Left = 208
    Top = 32
    object slwWojewodztwaWOJEWODZTWO: TStringField
      FieldName = 'WOJEWODZTWO'
      Origin = 'WOJEWODZTWO'
    end
  end
  object dsPowiaty: TDataSource
    DataSet = slwPowiaty
    Left = 304
    Top = 88
  end
  object dsWojewodztwa: TDataSource
    DataSet = slwWojewodztwa
    Left = 208
    Top = 88
  end
end
