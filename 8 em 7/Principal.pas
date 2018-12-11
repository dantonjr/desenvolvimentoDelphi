unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls;

type
  TfrPrincipal = class(TForm)
    edFrase: TEdit;
    lbFrase: TLabel;
    lxBinario: TListBox;
    btConverte: TButton;
    lxCompactado: TListBox;
    btCompacta: TButton;
    btSair: TBitBtn;
    sbStatus: TStatusBar;
    procedure btConverteClick(Sender: TObject);
    procedure edFraseKeyPress(Sender: TObject; var Key: Char);
    procedure edFraseKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCompactaClick(Sender: TObject);
  private
    { Private declarations }
    function FazBinario(Numero : Byte) : String;
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.DFM}

function TfrPrincipal.FazBinario(Numero : Byte) : String;
var
  Posicao : Byte;
  Binario : String[7];
  Apoio   : String;

begin
  Posicao := 7;
  Binario := '       ';
  repeat
    Apoio := IntToStr(Numero mod 2);
    Binario[Posicao] := Apoio[1];
    Numero := Numero div 2;
    Dec(Posicao);
  until Posicao = 0;
  Result := '0' + Binario;
end;

procedure TfrPrincipal.btConverteClick(Sender: TObject);
var
  Indice : Integer;

begin
  lxBinario.Clear;
  lxCompactado.Clear;
  for Indice := 1 to Length(edFrase.Text) do
    lxBinario.Items.Add(FazBinario(Ord(edFrase.Text[Indice])));
  sbStatus.Panels.Items[2].Text := IntToStr(lxBinario.Items.Count * 8);
  sbStatus.Panels.Items[3].Text := '0';  
end;

procedure TfrPrincipal.edFraseKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) >= 128 then
    Key := #0;
end;

procedure TfrPrincipal.edFraseKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  sbStatus.Panels.Items[1].Text := IntToStr(Length(edFrase.Text));
end;

procedure TfrPrincipal.btCompactaClick(Sender: TObject);
var
  ValorBin,
  Primeiro  : String[8];
  Matriz    : array[1..7, 1..8] of Char;
  Resto,
  Linha,
  Coluna    : Byte;
  Contador,
  Auxiliar,
  Completo  : Integer;

begin
  lxCompactado.Clear;
  Resto := lxBinario.Items.Count mod 8;
  Completo := lxBinario.Items.Count div 8;
  Auxiliar := 0;
  Contador := 0;
  while Completo <> Auxiliar do
  begin
    Primeiro := lxBinario.Items.Strings[Contador];
    Inc(Contador);
    Linha := 1;
    repeat
      ValorBin := lxBinario.Items.Strings[Contador];
      for Coluna := 1 to 8 do
        Matriz[Linha, Coluna] := ValorBin[Coluna];
      Inc(Linha);
      Inc(Contador);
    until Linha = 8;
    for Coluna := 2 to 8 do
      Matriz[Coluna - 1, 1] := Primeiro[Coluna];
    for Linha := 1 to 7 do
    begin
      Primeiro := '';
      for Coluna := 1 to 8 do
        Primeiro := Primeiro + Matriz[Linha, Coluna];
      lxCompactado.Items.Add(Primeiro);
    end;
    Inc(Auxiliar);
  end;
  for Contador := Auxiliar * 8 to (Auxiliar * 8) + Resto - 1 do
    lxCompactado.Items.Add(lxBinario.Items.Strings[Contador]);
  sbStatus.Panels.Items[3].Text := IntToStr(lxCompactado.Items.Count * 8);
end;

end.
