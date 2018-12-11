program PescaArq;

uses
  Forms,
  Principa in 'Principa.pas' {Principal};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'PescaArq - by Danton Junior';
  Application.HintPause := 500;
  Application.HintHidePause := 10000;
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.
