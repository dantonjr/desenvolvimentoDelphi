unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, XPMan;

type
  MeuRegistro = record // Regsitro heterog�neo que tbem pode ser add na lista.
                  X : Integer;
                  Y : String;
                  P : TPoint;
                  Z : TDateTime;
                  M : Real;
                end;
  TfrmPrincipal = class(TForm)
    btnGeraLista: TButton;
    ledTotal: TLabeledEdit;
    lblTamanhoLista: TLabel;
    btnMostra1: TButton;
    ledElemento: TLabeledEdit;
    lbxTodos: TListBox;
    btnMostraTudo: TButton;
    btnApaga1: TButton;
    btnApagaTudo: TButton;
    pgbMemLivre: TProgressBar;
    lblMemLivre: TLabel;
    XMPWindows: TXPManifest;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGeraListaClick(Sender: TObject);
    procedure btnMostra1Click(Sender: TObject);
    procedure btnMostraTudoClick(Sender: TObject);
    procedure btnApaga1Click(Sender: TObject);
    procedure btnApagaTudoClick(Sender: TObject);
  private
    { Private declarations }
    Lista : TList;
    procedure AtualizaMem;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  frmPrincipal.Lista := Tlist.Create;
  lblTamanhoLista.Caption := Format('Tamanho da Lista: %d', [frmPrincipal.Lista.Count]);
  frmPrincipal.AtualizaMem;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  frmPrincipal.Lista.Free;
end;

procedure TfrmPrincipal.btnGeraListaClick(Sender: TObject);
var
//  Valor    : ^MeuRegistro; // Qualquer tipo de ponteiro ta valendo para a lista
  Valor    : ^Integer;
  Elemento : Integer;

begin
  Randomize;
  for Elemento := 1 to StrToInt(ledTotal.Text) do
  begin
    New(Valor); // Aloca um ponteiro (endere�) na mem�ria
    Valor^ := Random(1001); // Atribui um valor inteiro randomico ao endere�o definido acima
    frmPrincipal.Lista.Add(Valor); // Adiciona na lista o endere�o do elemento, para posterior refer�ncia
  end;
  lblTamanhoLista.Caption := Format('Tamanho da Lista: %d', [frmPrincipal.Lista.Count]); // Mostra o total de elementos na lista
  frmPrincipal.AtualizaMem;
end;

procedure TfrmPrincipal.btnMostra1Click(Sender: TObject);
var
//  Valor    : ^MeuRegistro; // Qualquer tipo de ponteiro ta valendo para a lista
  Valor : ^Integer;

begin
  if (strToInt(ledElemento.Text) > 0) and (StrToInt(ledElemento.Text) <= frmPrincipal.Lista.Count) then
  begin
    Valor := frmPrincipal.Lista.Items[StrToInt(ledElemento.Text) - 1]; // Pega o endere�o do valor solicitado na lista
    ShowMessage(Format('O elemento %s, tem valor %d', [ledElemento.Text, Valor^])); // Mostra o conte�do do valor na lista
  end
  else
    MessageDlg('O elemento ' + ledElemento.Text + ' n�o existe', mtWarning, [mbOK], 0);
end;

procedure TfrmPrincipal.btnMostraTudoClick(Sender: TObject);
var
//  Valor    : ^MeuRegistro; // Qualquer tipo de ponteiro ta valendo para a lista
  Valor : ^Integer;
  Elemento : Integer;

begin
  if frmPrincipal.Lista.Count > 32000 then
    if MessageDlg('A lista tem mais de 32.000 itens.' + #10 + #13 +
                  'Mostr�-la pode travar ou demorar um pouco.' + #10 + #13 +
                  'Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  lbxTodos.Clear;
  for Elemento := 0 to frmPrincipal.Lista.Count - 1 do
  begin
    Valor := frmPrincipal.Lista.Items[Elemento]; // Pega endere�o da mem�ria
    lbxTodos.Items.Add(Format('%d : %d', [Elemento + 1, Valor^])); // Formata no estilo Posi��o : Valor e adiciona na lista
  end;
end;

procedure TfrmPrincipal.btnApaga1Click(Sender: TObject);
var
//  Valor    : ^MeuRegistro; // Qualquer tipo de ponteiro ta valendo para a lista
  Valor : ^Integer;

begin
  if (strToInt(ledElemento.Text) > 0) and (StrToInt(ledElemento.Text) <= frmPrincipal.Lista.Count) then
  begin
    Valor := frmPrincipal.Lista.Items[StrToInt(ledElemento.Text) - 1]; // Pega o endere�o da lista
    frmPrincipal.Lista.Delete(StrToInt(ledElemento.Text) - 1); // exclui o �ndice da lista
    Dispose(Valor); // libera a mem�ria alocada
  end
  else
    MessageDlg('O elemento ' + ledElemento.Text + ' n�o existe', mtWarning, [mbOK], 0);
  lblTamanhoLista.Caption := Format('Tamanho da Lista: %d', [frmPrincipal.Lista.Count]); // Mostra o total de elementos na lista
end;

procedure TfrmPrincipal.btnApagaTudoClick(Sender: TObject);
var
//  Valor    : ^MeuRegistro; // Qualquer tipo de ponteiro ta valendo para a lista
  Valor : ^Integer;
  Elemento : Integer;

begin
  for Elemento := frmPrincipal.Lista.Count - 1 downto 0 do
  begin
    Valor := frmPrincipal.Lista.Items[Elemento]; // pega endereco da lista
    frmPrincipal.Lista.Delete(Elemento); // apaga o endereco da lista
    Dispose(Valor); // libera a mem�ria alocada
  end;
  lblTamanhoLista.Caption := Format('Tamanho da Lista: %d', [frmPrincipal.Lista.Count]); // Mostra o total de elementos na lista
  frmPrincipal.AtualizaMem;
end;

{
Procedure TForm1.Timer1Timer(Sender: TObject);
const cBytesPorMb=1024*1024;
var
M: TMemoryStatus;
T : string;
begin
M.dwLength:=SizeOf(M);
GlobalMemoryStatus(M);
Memo1.Clear;
with Memo1.Lines do
begin
Add(Format('Mem�ria em uso: %d%%', [M.dwMemoryLoad]));
Add(Format('Total de f�sica: %f MB', [M.dwTotalPhys/cBytesPorMB]));
Add(Format('Total m�x. pagina��o: %f MB', [M.dwTotalPageFile/ cBytesPorMB]));
Add(Format('Pagina��o dispon�vel: %f MB', [M.dwAvailPageFile/ cBytesPorMB]));
Add(Format('Total vitual: %fMB', [M.dwTotalVirtual/cBytesPorMB]));
Add(Format('Virtual dispon�vel: %fMB', [M.dwAvailVirtual/cBytesPorMB]));
T := formatfloat('#,##',(diskfree(0)));
Add('Espa�o Livre do HD: '+ copy(T,1,4)+' MB');
T:= formatfloat('#,##',(DiskSize(0)));
Add('Tamanho do HD: '+copy(T,1,4)+' MB') ;

end;

 }
//end;

procedure TfrmPrincipal.AtualizaMem;
var
  StatusDaMem: TMemoryStatus;

begin
  StatusDaMem.dwLength := SizeOf(StatusDaMem);
  GlobalMemoryStatus(StatusDaMem);
  lblMemLivre.Caption := 'Mem�ria Livre : ' + IntToStr(StatusDaMem.dwAvailPhys);
  pgbMemLivre.Max := StatusDaMem.dwTotalPhys;
  pgbMemLivre.Position := StatusDaMem.dwAvailPhys;
end;

end.
