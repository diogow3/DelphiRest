program DelphiRest;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {TelaPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaPrincipal, TelaPrincipal);
  Application.Run;
end.
