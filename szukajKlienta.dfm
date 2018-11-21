object szukajKlientaOkno: TszukajKlientaOkno
  Left = 0
  Top = 0
  ClientHeight = 547
  ClientWidth = 607
  Caption = 'Szukaj klienta ...'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 105
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    ExplicitWidth = 589
    object UniLabel1: TUniLabel
      Left = 25
      Top = 14
      Width = 24
      Height = 13
      Hint = ''
      Caption = 'Imi'#281':'
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 25
      Top = 44
      Width = 48
      Height = 13
      Hint = ''
      Caption = 'Nazwisko:'
      TabOrder = 2
    end
    object UniLabel3: TUniLabel
      Left = 25
      Top = 74
      Width = 63
      Height = 13
      Hint = ''
      Caption = 'Miejscowo'#347#263':'
      TabOrder = 3
    end
    object szukajImie: TUniEdit
      Left = 110
      Top = 11
      Width = 241
      Hint = ''
      Text = ''
      TabOrder = 4
      EmptyText = 'Wprowad'#378' imi'#281
    end
    object szukajNazwisko: TUniEdit
      Left = 110
      Top = 42
      Width = 241
      Hint = ''
      Text = ''
      TabOrder = 5
      EmptyText = 'Wprowad'#378' nazwisko'
    end
    object szukajMiejscowosc: TUniEdit
      Left = 110
      Top = 70
      Width = 241
      Hint = ''
      Text = ''
      TabOrder = 6
      EmptyText = 'Wprowad'#378' miejscowo'#347#263
    end
    object UniButton3: TUniButton
      Left = 402
      Top = 10
      Width = 95
      Height = 85
      Hint = ''
      Caption = 'Szukaj'
      TabOrder = 7
      Images = IM.image32
      ImageIndex = 4
      OnClick = UniButton3Click
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 105
    Width = 607
    Height = 392
    Hint = ''
    DataSource = dsSzukaj
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Align = alTop
    TabOrder = 1
    Columns = <
      item
        FieldName = 'IMIE'
        Title.Caption = 'Imi'#281
        Width = 100
      end
      item
        FieldName = 'NAZWISKO'
        Title.Caption = 'Nazwisko'
        Width = 100
      end
      item
        FieldName = 'ADRES_MIEJSCOWOSC'
        Title.Caption = 'Miejscowo'#347#263
        Width = 100
      end
      item
        FieldName = 'ADRES_POWIAT'
        Title.Caption = 'Powiat'
        Width = 100
      end
      item
        FieldName = 'ADRES_ULICA'
        Title.Caption = 'Ulica'
        Width = 100
      end
      item
        FieldName = 'KLIENT_VIP'
        Title.Caption = 'VIP'
        Width = 40
      end>
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 497
    Width = 607
    Height = 50
    Hint = ''
    Align = alClient
    TabOrder = 2
    Caption = ''
    ExplicitTop = 498
    ExplicitWidth = 713
    ExplicitHeight = 47
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 440
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
      ExplicitLeft = 512
      ExplicitTop = 6
      ExplicitHeight = 25
    end
    object UniButton2: TUniButton
      AlignWithMargins = True
      Left = 528
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
      ExplicitLeft = 624
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
  object fdSzukaj: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM KLIENCI'
      'WHERE UPPER(IMIE) LIKE :imie'
      '  AND UPPER(NAZWISKO) LIKE :nazwisko'
      '  AND UPPER(ADRES_MIEJSCOWOSC) LIKE :miejscowosc')
    Left = 80
    Top = 400
    ParamData = <
      item
        Name = 'IMIE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'NAZWISKO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'MIEJSCOWOSC'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object dsSzukaj: TDataSource
    DataSet = fdSzukaj
    Left = 160
    Top = 400
  end
end
