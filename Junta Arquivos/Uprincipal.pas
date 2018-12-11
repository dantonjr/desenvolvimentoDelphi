unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TfrmPrincipal = class(TForm)
    dcbUnidades: TDriveComboBox;
    flbArquivos: TFileListBox;
    dlbPastas: TDirectoryListBox;
    lbeArq1: TLabeledEdit;
    lbeArq2: TLabeledEdit;
    lbeArq3: TLabeledEdit;
    btnManda1: TButton;
    Button1: TButton;
    Button2: TButton;
    bbnJunta: TBitBtn;
    pgbProgresso: TProgressBar;
    bbnLimpa: TBitBtn;
    procedure btnManda1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bbnJuntaClick(Sender: TObject);
    procedure bbnLimpaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnManda1Click(Sender: TObject);
begin
  lbeArq1.Text := flbArquivos.FileName;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  lbeArq2.Text := flbArquivos.FileName;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  lbeArq3.Text := flbArquivos.FileName;
end;

procedure TfrmPrincipal.bbnJuntaClick(Sender: TObject);
var
  Tamanho1,
  Tamanho2,
  TamanhoTotal : Int64;

  procedure JuntaArquivos;
  var
    Arq1,
    Arq2,
    Arq3     : File;
    Lidos,
    Escritos : Integer;
    Buffer   : array[1..4096] of Char;

  begin
    AssignFile(Arq1, lbeArq1.Text);
    Reset(Arq1, 1);
    Tamanho1 := FileSize(Arq1);
    AssignFile(Arq2, lbeArq2.Text);
    Reset(Arq2, 1);
    Tamanho2 := FileSize(Arq2);
    TamanhoTotal := Tamanho1 + Tamanho2;
    pgbProgresso.Max := TamanhoTotal;
    pgbProgresso.Min := 0;
    pgbProgresso.Position := 0;
    AssignFile(Arq3, lbeArq3.Text);
    ReWrite(Arq3, 1);
    repeat
      BlockRead(Arq1, Buffer, SizeOf(Buffer), Lidos);
      BlockWrite(Arq3, Buffer, Lidos, Escritos);
      pgbProgresso.Position := pgbProgresso.Position + Escritos;
    until (Lidos = 0) or (Escritos <> Lidos);
    CloseFile(Arq1);
    repeat
      BlockRead(Arq2, Buffer, SizeOf(Buffer), Lidos);
      BlockWrite(Arq3, Buffer, Lidos, Escritos);
      pgbProgresso.Position := pgbProgresso.Position + Escritos;
    until (Lidos = 0) or (Escritos <> Lidos);
    CloseFile(Arq2);
    CloseFile(Arq3);
  end;

begin
  if FileExists(lbeArq3.Text) then
  begin
    if MessageDlg('O arquivo' + #10 + lbeArq3.Text + #10 +
                  'já existe. Deseja sobreescrevê-lo?', mtConfirmation,
                  [mbYes, mbNo], 0) = mrYes then
      JuntaArquivos
    else
    begin
      MessageDlg('Escolha outro nome de arquivo de saída.', mtInformation, [mbOK], 0);
      Exit;
    end;
  end
  else
    JuntaArquivos;
  flbArquivos.Update;     
  MessageDlg('Operação completada com sucesso!' + #10 +
             'Arquivo 1:' + #10 + #9 + lbeArq1.Text + #10 + #9 + 'Tamanho: ' +
             IntToStr(Tamanho1) + ' bytes.' + #10 + #10 +
             'Arquivo 2:' + #10 + #9 + lbeArq2.Text + #10 + #9 + 'Tamanho: ' +
             IntToStr(Tamanho2) + ' bytes.' + #10 + #10 +
             'Arquivo de saída:' + #10 + #9 + lbeArq3.Text + #10 + #9 + 'Tamanho: ' +
             IntToStr(TamanhoTotal) + ' bytes.', mtInformation, [mbOK], 0);
end;

procedure TfrmPrincipal.bbnLimpaClick(Sender: TObject);
begin
  lbeArq1.Clear;
  lbeArq2.Clear;
  lbeArq3.Clear;
  pgbProgresso.Position := 0;
end;

end.
