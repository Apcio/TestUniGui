object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 511
  ClientWidth = 647
  Caption = 'Okno g'#322#243'wne - wyb'#243'r kartoteki'
  OnShow = UniFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniGroupBox1: TUniGroupBox
    Left = 8
    Top = 8
    Width = 185
    Height = 65
    Hint = ''
    Caption = 'Status'
    TabOrder = 0
    object btnZaloguj: TUniButton
      Left = 14
      Top = 20
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Zaloguj si'#281
      TabOrder = 1
      OnClick = btnZalogujClick
    end
    object UniImage1: TUniImage
      Left = 136
      Top = 17
      Width = 32
      Height = 32
      Hint = ''
    end
  end
  object btnKlienci: TUniButton
    Left = 96
    Top = 96
    Width = 160
    Height = 60
    Hint = ''
    Caption = 'Klienci'
    TabOrder = 1
    OnClick = btnKlienciClick
  end
  object btnPaczki: TUniButton
    Left = 96
    Top = 176
    Width = 160
    Height = 60
    Hint = ''
    Caption = 'Paczki'
    TabOrder = 2
    OnClick = btnPaczkiClick
  end
  object btnFaktury: TUniButton
    Left = 96
    Top = 256
    Width = 160
    Height = 60
    Hint = ''
    Caption = 'Faktury'
    TabOrder = 3
    OnClick = btnFakturyClick
  end
  object btnSlwPrzesylki: TUniButton
    Left = 384
    Top = 96
    Width = 160
    Height = 60
    Hint = ''
    Caption = 'S'#322'ownik przesy'#322'ki'
    TabOrder = 4
    OnClick = btnSlwPrzesylkiClick
  end
  object btnWylogujSie: TUniButton
    Left = 232
    Top = 378
    Width = 160
    Height = 60
    Hint = ''
    Caption = 'Wyloguj si'#281
    TabOrder = 5
    OnClick = btnWylogujSieClick
  end
  object slwPowiaty: TUniButton
    Left = 384
    Top = 176
    Width = 160
    Height = 60
    Hint = ''
    Caption = 'S'#322'ownik powiat'#243'w'
    TabOrder = 6
    OnClick = slwPowiatyClick
  end
  object slwWojewodztwa: TUniButton
    Left = 384
    Top = 256
    Width = 160
    Height = 60
    Hint = ''
    Caption = 'S'#322'ownik wojew'#243'dztw'
    TabOrder = 7
    OnClick = slwWojewodztwaClick
  end
end
