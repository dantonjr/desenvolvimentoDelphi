object frmPrincipal: TfrmPrincipal
  Left = 197
  Top = 165
  Width = 596
  Height = 300
  BorderStyle = bsSizeToolWin
  Caption = 
    'Junta Arquivos - Danton Junior - falecom@dantonjr.com.br - (49) ' +
    '9977-6761'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dcbUnidades: TDriveComboBox
    Left = 8
    Top = 8
    Width = 145
    Height = 19
    Hint = 'Selecione a unidade'
    DirList = dlbPastas
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object flbArquivos: TFileListBox
    Left = 8
    Top = 136
    Width = 145
    Height = 121
    Hint = 'Escolha o arquivo'
    FileType = [ftReadOnly, ftHidden, ftSystem, ftArchive, ftNormal]
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object dlbPastas: TDirectoryListBox
    Left = 8
    Top = 32
    Width = 145
    Height = 97
    Hint = 'Escolha a pasta onde se encontra o arquivo'
    FileList = flbArquivos
    ItemHeight = 16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object lbeArq1: TLabeledEdit
    Left = 200
    Top = 24
    Width = 380
    Height = 21
    Hint = 'Nome do Arquivo de Entrada 1'
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'Arquivo 1'
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
  end
  object lbeArq2: TLabeledEdit
    Left = 200
    Top = 76
    Width = 380
    Height = 21
    Hint = 'Nome do Arquivo de Entrada 2'
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'Arquivo 2'
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
  end
  object lbeArq3: TLabeledEdit
    Left = 200
    Top = 128
    Width = 380
    Height = 21
    Hint = 'Nome do Arquivo de Sa'#237'da'
    EditLabel.Width = 81
    EditLabel.Height = 13
    EditLabel.Caption = 'Arquivo de sa'#237'da'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object btnManda1: TButton
    Left = 160
    Top = 24
    Width = 33
    Height = 25
    Hint = 'Seleciona os arquivos'
    Caption = '>>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btnManda1Click
  end
  object Button1: TButton
    Left = 160
    Top = 76
    Width = 33
    Height = 25
    Hint = 'Seleciona os arquivos'
    Caption = '>>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 128
    Width = 33
    Height = 25
    Hint = 'Seleciona os arquivos'
    Caption = '>>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = Button2Click
  end
  object bbnJunta: TBitBtn
    Left = 467
    Top = 160
    Width = 113
    Height = 70
    Hint = 'Une os arquivos'
    Caption = 'Junta Arquivos'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = bbnJuntaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object pgbProgresso: TProgressBar
    Left = 160
    Top = 240
    Width = 421
    Height = 17
    TabOrder = 10
  end
  object bbnLimpa: TBitBtn
    Left = 347
    Top = 160
    Width = 113
    Height = 70
    Hint = 'Limpa os campos'
    Caption = 'Limpa Campos'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = bbnLimpaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
end
