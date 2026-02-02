object TelaPrincipal: TTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'TelaPrincipal'
  ClientHeight = 700
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblCapital: TLabel
    Left = 56
    Top = 307
    Width = 59
    Height = 25
    Caption = 'Capital'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblMoedas: TLabel
    Left = 56
    Top = 480
    Width = 59
    Height = 25
    Caption = 'Moeda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 56
    Top = 256
    Width = 110
    Height = 25
    Caption = 'Nome Oficial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblPopulacao: TLabel
    Left = 56
    Top = 416
    Width = 88
    Height = 25
    Caption = 'Popula'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblRegiao: TLabel
    Left = 56
    Top = 360
    Width = 57
    Height = 25
    Caption = 'Regi'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblPesquisar: TLabel
    Left = 56
    Top = 104
    Width = 80
    Height = 25
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtPesquisar: TEdit
    Left = 368
    Top = 96
    Width = 505
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnExit = edtPesquisarExit
  end
  object edtNome: TEdit
    Left = 368
    Top = 248
    Width = 505
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtCapital: TEdit
    Left = 368
    Top = 299
    Width = 505
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtRegiao: TEdit
    Left = 368
    Top = 352
    Width = 505
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtPopulacao: TEdit
    Left = 368
    Top = 408
    Width = 505
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edtMoedas: TEdit
    Left = 368
    Top = 472
    Width = 505
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object rstclntPaises: TRESTClient
    BaseURL = 'https://restcountries.com/v3.1/name'
    Params = <>
    SynchronizedEvents = False
    Left = 144
    Top = 600
  end
  object rstrqstPaises: TRESTRequest
    Client = rstclntPaises
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'pesquisar'
        Options = [poAutoCreated]
      end>
    Resource = '{pesquisar}'
    Response = rstrspnsPaises
    SynchronizedEvents = False
    Left = 240
    Top = 600
  end
  object rstrspnsPaises: TRESTResponse
    ContentType = 'application/json'
    Left = 328
    Top = 600
  end
end
