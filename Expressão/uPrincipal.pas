unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmPrincipal = class(TForm)
    lblExpressao: TLabel;
    edtExpressao: TEdit;
    bbnValida: TBitBtn;
    bbnValida2: TBitBtn;
    procedure bbnValidaClick(Sender: TObject);
    procedure bbnValida2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.bbnValidaClick(Sender: TObject);
var
  posicao : Integer;
  palavra : String;

label
  q0,
  q1,
  qf,
  fim,
  erro;

begin
  palavra := edtExpressao.Text;
  posicao := 0;

q0:
  if posicao < Length(palavra) then
  begin
    Inc(posicao);
    if palavra[posicao] = '0' then
      goto q1
    else
      goto erro;
  end
  else
    goto erro;

q1:
  if posicao < Length(palavra) then
  begin
    Inc(posicao);
    if palavra[posicao] = '1' then
      goto qf
    else
      goto erro;
  end
  else
    goto erro;

qf:
  if posicao < Length(palavra) then
  begin
    Inc(posicao);
    if (palavra[posicao] = '0') or (palavra[posicao] = '1') then
      goto qf;
  end
  else
  begin
    MessageDlg('Palavra reconhecida', mtInformation, [mbOK], 0);
    goto fim;
  end;

erro:
  MessageDlg('Palavra NÃO reconhecida', mtError, [mbOK], 0);

fim:
  edtExpressao.SetFocus;
end;

procedure TfrmPrincipal.bbnValida2Click(Sender: TObject);
var
  posicao : Integer;
  palavra : String;

label
  q0,
  q1,
  q2,
  qf,
  fim,
  erro;

begin
  palavra := edtExpressao.Text;
  posicao := 0;

q0:
  if posicao < Length(palavra) then
  begin
    Inc(posicao);
    if palavra[posicao] in ['A'..'Z'] then
      goto q1
    else
      goto erro;
  end
  else
    goto erro;

q1:
  if posicao < Length(palavra) then begin
    Inc(posicao);
    if palavra[posicao] = '.' then begin
      goto qf;
    end
    else
    begin
      if palavra[posicao] in ['a'..'z'] then begin
        goto q1;
      end
      else
      begin
        if palavra[posicao] in ['_', '0'..'9'] then begin
          goto q2;
        end
        else
        begin
          goto erro;
        end
      end
    end
  end
  else
    goto erro;

q2:
  if posicao < Length(palavra) then
  begin
    Inc(posicao);
    if palavra[posicao] in ['a'..'z'] then
      goto q1
    else
      goto erro;
  end
  else
    goto erro;

qf:
  if posicao = Length(palavra) then
  begin
    MessageDlg('Palavra reconhecida', mtInformation, [mbOK], 0);
    goto fim;
  end;

erro:
  MessageDlg('Palavra NÃO reconhecida', mtError, [mbOK], 0);

fim:
  edtExpressao.SetFocus;
end;

end.
