{
  10/01/98
}

unit Principa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  VisApp, StdCtrls, ComCtrls, ToolWin, FileCtrl;

type
  StringCaminho  = string[MAX_PATH - 5];
  ApontaPilhaDir = ^PilhaDir;
  PilhaDir       = record
                     Diretorio : StringCaminho;
                     Proximo   : ApontaPilhaDir;
                   end;

  TPrincipal = class(TForm)
    Label1: TLabel;
    Procurar: TEdit;
    Achados: TListBox;
    Label2: TLabel;
    ToolBar1: TToolBar;
    Procura: TToolButton;
    ImagensVivas: TImageList;
    ImagensMortas: TImageList;
    ToolBar2: TToolBar;
    Sair: TToolButton;
    Animado: TAnimate;
    BarraDeStatus: TStatusBar;
    Aguarde: TLabel;
    procedure SairClick(Sender: TObject);
    procedure ProcurarKeyPress(Sender: TObject; var Key: Char);
    procedure ProcuraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    ProcurarFechar : Boolean;
    procedure InsereNaPilha(var Pilha : ApontaPilhaDir; Dir : StringCaminho);
    function RetiraDaPilha(var Pilha : ApontaPilhaDir) : StringCaminho;
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

const
  Cores : array[1..15] of LongInt = (clBlack, clMaroon, clGreen, clOlive,
                                     clNavy, clPurple, clTeal, clGray,
                                     clSilver, clRed, clLime, clBlue,
                                     clFuchsia, clAqua, clWhite);

implementation

{$R *.DFM}

procedure TPrincipal.InsereNaPilha(var Pilha : ApontaPilhaDir; Dir : StringCaminho);
var
  Prox : ApontaPilhaDir;

begin
  New(Prox);
  Prox^.Proximo := Pilha;
  Prox^.Diretorio := Dir;
  Pilha := Prox;
end;

function TPrincipal.RetiraDaPilha(var Pilha : ApontaPilhaDir) : StringCaminho;
var
  Atual : ApontaPilhaDir;

begin
  if Pilha = nil then
    Result := '?'
  else
  begin
    Result := Pilha^.Diretorio;
    Atual := Pilha;
    Pilha := Atual^.Proximo;
    Dispose(Atual);
  end;
end;

procedure TPrincipal.SairClick(Sender: TObject);
begin
  if ProcurarFechar then
    Application.Terminate;
end;

procedure TPrincipal.ProcurarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Procura.Click;
end;

procedure TPrincipal.ProcuraClick(Sender: TObject);
var
  Erro,
  ContaAchados   : Integer;
  DirLocais      : ApontaPilhaDir;
  DirInfo        : TSearchRec;
  DirAtual,
  Condicao,
  DirInicio,
  NomeArquivo,
  CaminhoArquivo : StringCaminho;
  CorAtual       : Byte;

begin
  if ProcurarFechar then
  begin
    ProcurarFechar := not ProcurarFechar;
    DirLocais := nil;
    BarraDeStatus.Panels.Items[0].Text := '';
    BarraDeStatus.Panels.Items[1].Text := '0';
    BarraDeStatus.Panels.Items[2].Text := '0';
    CorAtual := 1;
    ContaAchados := 0;
    Achados.Clear;
    Principal.Refresh;
    NomeArquivo := ExtractFileName(Procurar.Text);
    CaminhoArquivo := ExtractFilePath(Procurar.Text);
    GetDir(0, DirAtual);
    DirInicio := DirAtual;
    if NomeArquivo = '' then
    begin
      MessageBeep(0);
      MessageDlg('Digite um arquivo para pesquisar...', mtError, [mbOK], 0);
      Exit;
    end
    else
    begin
      if CaminhoArquivo <> '' then
      begin
        if not DirectoryExists(CaminhoArquivo) then
        begin
          MessageBeep(0);
          MessageDlg('Diretório não existe, ou é inválido...', mtError, [mbOK], 0);
          Exit;
        end
        else
        begin
          ChDir(CaminhoArquivo);
          Condicao := CaminhoArquivo;
        end;
      end
      else
      begin
        ChDir(DirAtual[1] + ':\');
        Condicao := DirAtual;
      end;
      Erro := FindFirst('*.*', faAnyFile, DirInfo);
      Animado.Active := True;
      Aguarde.Font.Color := clBlack;
      Aguarde.Visible := True;
      while Condicao <> '?' do
      begin
        GetDir(0, DirAtual);
        Application.ProcessMessages;
        while Erro = 0 do
        begin
          BarraDeStatus.Panels.Items[0].Text := DirAtual;
          if UpperCase(DirInfo.Name) = UpperCase(NomeArquivo) then
          begin
            Achados.Items.Add(DirAtual);
            Achados.Refresh;
            Inc(ContaAchados);
          end;
          if (DirInfo.Attr in [16..31, 48..63]) and (DirInfo.Name <> '.') and
             (DirInfo.Name <> '..') then
          begin
            if Length(DirAtual) > 3 then
              InsereNaPilha(DirLocais, DirAtual + '\' + DirInfo.Name)
            else
              InsereNaPilha(DirLocais, DirAtual + DirInfo.Name);
            BarraDeStatus.Panels.Items[2].Text := IntToStr(StrToInt(BarraDeStatus.Panels.Items[2].Text) + 1);
          end
          else
          begin
            if not (DirInfo.Attr in [16..31, 48..63]) then
            begin
              BarraDeStatus.Panels.Items[1].Text := IntToStr(StrToInt(BarraDeStatus.Panels.Items[1].Text) + 1);
            end;
          end;
          Erro := FindNext(DirInfo);
        end;
        Aguarde.Font.Color := Cores[CorAtual];
        Aguarde.Refresh;
        if CorAtual < 15 then
          Inc(CorAtual)
        else
          CorAtual := 1;
        BarraDeStatus.Refresh;
        Condicao := RetiraDaPilha(DirLocais);
        if Condicao <> '?' then
        begin
          ChDir(Condicao);
          Erro := FindFirst('*.*', faAnyFile, DirInfo);
        end;
      end;
    end;
    ChDir(DirInicio);
    BarraDeStatus.Panels.Items[0].Text := '(' + IntToStr(ContaAchados) + ')' +
                                          ' Objeto(s) encontrados...';
    BarraDeStatus.Panels.Items[1].Text := 'Arq: ' + BarraDeStatus.Panels.Items[1].Text;
    BarraDeStatus.Panels.Items[2].Text := 'Dir: ' + BarraDeStatus.Panels.Items[2].Text;
    Animado.Active := False;
    Aguarde.Visible := False;
    Principal.Refresh;
    ProcurarFechar := not ProcurarFechar;
  end;
end;

procedure TPrincipal.FormActivate(Sender: TObject);
begin
  MessageBeep(0);
  MessageDlg('Lembre-se...' + #10 +
             'Registre este software e garanta atualizações.' + #10 + #10 +
             'Autor:' + #10 +
             '  Danton Cavalcanti Franco Junior' + #10 +
             '  dantonjr@furb.rct-sc.br' + #10 +
             '  http://www.furb.rct-sc.br/~dantonjr' + #10 +
             '  55 (047) 822-2966' + #10 + #10 +
             'Custo do registro R$10,00' + #10 + #10 +
             'Copyright © 1997 DJr-Sistemas', mtWarning, [mbOK], 0);
  ProcurarFechar := True;
end;

procedure TPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ProcurarFechar then
    CanClose := True
  else
    CanClose := False;
end;

end.
