object frmPrincipal: TfrmPrincipal
  Left = 231
  Top = 161
  Width = 1022
  Height = 650
  Caption = 'Desenhos por Danton Cavalcanti Franco Junior'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnResize = edtEspessuraGradeChange
  DesignSize = (
    1006
    614)
  PixelsPerInch = 96
  TextHeight = 13
  object stbStatus: TStatusBar
    Left = 0
    Top = 595
    Width = 1006
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object pnlFuncoes: TPanel
    Left = 771
    Top = 0
    Width = 235
    Height = 554
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      235
      554)
    object lblPonto1: TLabel
      Left = 16
      Top = 293
      Width = 45
      Height = 13
      Anchors = [akBottom]
      Caption = 'Ponto 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPonto2: TLabel
      Left = 16
      Top = 341
      Width = 45
      Height = 13
      Anchors = [akBottom]
      Caption = 'Ponto 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPonto3: TLabel
      Left = 16
      Top = 389
      Width = 45
      Height = 13
      Anchors = [akBottom]
      Caption = 'Ponto 3'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPonto4: TLabel
      Left = 16
      Top = 437
      Width = 45
      Height = 13
      Anchors = [akBottom]
      Caption = 'Ponto 4'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 67
      Top = 513
      Width = 100
      Height = 2
      Anchors = [akLeft, akBottom]
      Shape = bsBottomLine
    end
    object lbxComandos: TListBox
      Left = 2
      Top = 2
      Width = 231
      Height = 255
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 13
      TabOrder = 0
    end
    object edtPonto1X: TEdit
      Left = 31
      Top = 309
      Width = 78
      Height = 21
      Anchors = [akBottom]
      TabOrder = 1
      Text = '0'
      OnClick = edtPonto1XClick
    end
    object edtPonto1Y: TEdit
      Left = 139
      Top = 309
      Width = 78
      Height = 21
      Anchors = [akBottom]
      TabOrder = 2
      Text = '0'
    end
    object edtPonto2X: TEdit
      Left = 31
      Top = 357
      Width = 78
      Height = 21
      Anchors = [akBottom]
      TabOrder = 3
      Text = '0'
      OnClick = edtPonto2XClick
    end
    object edtPonto2Y: TEdit
      Left = 136
      Top = 357
      Width = 78
      Height = 21
      Anchors = [akBottom]
      TabOrder = 4
      Text = '0'
    end
    object edtPonto3X: TEdit
      Left = 31
      Top = 405
      Width = 78
      Height = 21
      Anchors = [akBottom]
      Enabled = False
      TabOrder = 5
      Text = '0'
      OnClick = edtPonto3XClick
    end
    object edtPonto3Y: TEdit
      Left = 136
      Top = 405
      Width = 78
      Height = 21
      Anchors = [akBottom]
      Enabled = False
      TabOrder = 6
      Text = '0'
    end
    object edtPonto4X: TEdit
      Left = 31
      Top = 453
      Width = 78
      Height = 21
      Anchors = [akBottom]
      Enabled = False
      TabOrder = 7
      Text = '0'
      OnClick = edtPonto4XClick
    end
    object edtPonto4Y: TEdit
      Left = 136
      Top = 453
      Width = 78
      Height = 21
      Anchors = [akBottom]
      Enabled = False
      TabOrder = 8
      Text = '0'
    end
    object bbnRemoveComando: TBitBtn
      Left = 45
      Top = 262
      Width = 145
      Height = 25
      Anchors = [akBottom]
      Caption = 'Remove Comando'
      TabOrder = 9
      OnClick = bbnRemoveComandoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbnAdicionaComando: TBitBtn
      Left = 45
      Top = 478
      Width = 145
      Height = 25
      Anchors = [akBottom]
      Caption = 'Adiciona Comando (F7)'
      TabOrder = 10
      OnClick = bbnAdicionaComandoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbnSalvar: TBitBtn
      Left = 10
      Top = 523
      Width = 100
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Salvar'
      TabOrder = 11
      OnClick = bbnSalvarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object bbnAbrir: TBitBtn
      Left = 122
      Top = 523
      Width = 100
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Abrir'
      TabOrder = 12
      OnClick = bbnAbrirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object pnlFuncao: TPanel
    Left = 0
    Top = 554
    Width = 1006
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object rdgFuncao: TRadioGroup
      Left = 2
      Top = 2
      Width = 769
      Height = 37
      Align = alClient
      Caption = ' Fun'#231#227'o '
      Columns = 7
      ItemIndex = 0
      Items.Strings = (
        'Ret'#226'ngulo'
        'Ret'#226'nguloR'
        'C'#237'rculo'
        'Arco'
        'Linha'
        'Tri'#226'ngulo'
        'Ponto')
      TabOrder = 0
      OnClick = rdgFuncaoClick
    end
    object pnlBotoes: TPanel
      Left = 771
      Top = 2
      Width = 233
      Height = 37
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 1
      object bbnDesenha: TBitBtn
        Left = 10
        Top = 6
        Width = 100
        Height = 25
        Caption = 'Desenha'
        TabOrder = 0
        OnClick = bbnDesenhaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object bbnApaga: TBitBtn
        Left = 122
        Top = 6
        Width = 100
        Height = 25
        Caption = 'Apaga'
        TabOrder = 1
        OnClick = bbnApagaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
          305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
          005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
          B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
          B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
          B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
          B0557777FF577777F7F500000E055550805577777F7555575755500000555555
          05555777775555557F5555000555555505555577755555557555}
        NumGlyphs = 2
      end
    end
  end
  object pnlPincel: TPanel
    Left = 0
    Top = 513
    Width = 771
    Height = 41
    Anchors = [akLeft, akRight, akBottom]
    BevelInner = bvLowered
    TabOrder = 3
    object gbxLinha: TGroupBox
      Left = 2
      Top = 2
      Width = 459
      Height = 37
      Align = alLeft
      Caption = ' Linha '
      TabOrder = 0
      object lblEspessuraLinha: TLabel
        Left = 8
        Top = 15
        Width = 49
        Height = 13
        Caption = 'Espessura'
      end
      object lblCorLinha: TLabel
        Left = 123
        Top = 15
        Width = 16
        Height = 13
        Caption = 'Cor'
      end
      object edtEspessuraLinha: TEdit
        Left = 61
        Top = 11
        Width = 38
        Height = 21
        TabOrder = 0
        Text = '1'
      end
      object updEspessuraLinha: TUpDown
        Left = 99
        Top = 11
        Width = 16
        Height = 21
        Associate = edtEspessuraLinha
        Min = 1
        Max = 50
        Position = 1
        TabOrder = 1
      end
      object clgCorLinha: TColorGrid
        Left = 145
        Top = 11
        Width = 304
        Height = 20
        GridOrdering = go16x1
        BackgroundEnabled = False
        TabOrder = 2
      end
    end
    object gbxGrade: TGroupBox
      Left = 461
      Top = 2
      Width = 308
      Height = 37
      Align = alClient
      Caption = ' Grade '
      TabOrder = 1
      object lblEspessuraGrade: TLabel
        Left = 71
        Top = 15
        Width = 49
        Height = 13
        Caption = 'Espessura'
        Enabled = False
      end
      object lblDistanciaGrade: TLabel
        Left = 191
        Top = 15
        Width = 44
        Height = 13
        Caption = 'Dist'#226'ncia'
        Enabled = False
      end
      object ckbLinhasGrade: TCheckBox
        Left = 8
        Top = 14
        Width = 59
        Height = 17
        Caption = 'Mostrar'
        TabOrder = 0
        OnClick = ckbLinhasGradeClick
      end
      object edtEspessuraGrade: TEdit
        Left = 124
        Top = 11
        Width = 38
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = '1'
        OnChange = edtEspessuraGradeChange
      end
      object updEspessuraGrade: TUpDown
        Left = 162
        Top = 11
        Width = 16
        Height = 21
        Associate = edtEspessuraGrade
        Enabled = False
        Min = 1
        Max = 3
        Position = 1
        TabOrder = 2
      end
      object edtDistanciaGrade: TEdit
        Left = 244
        Top = 11
        Width = 38
        Height = 21
        Enabled = False
        TabOrder = 3
        Text = '5'
        OnChange = edtEspessuraGradeChange
      end
      object updDistanciaGrade: TUpDown
        Left = 282
        Top = 11
        Width = 16
        Height = 21
        Associate = edtDistanciaGrade
        Enabled = False
        Min = 5
        Max = 50
        Position = 5
        TabOrder = 4
      end
    end
  end
  object xpmXP: TXPManifest
    Left = 840
    Top = 40
  end
  object opdAbrir: TOpenDialog
    DefaultExt = 'djr'
    Filter = 'Desenhos (*.djr)|*.djr|Todos os arquivos (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Abrir'
    Left = 808
    Top = 104
  end
  object svdSalvar: TSaveDialog
    DefaultExt = 'djr'
    Filter = 'Desenhos (*.djr)|*.djr|Todos os arquivos (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Salvar'
    Left = 864
    Top = 104
  end
end
