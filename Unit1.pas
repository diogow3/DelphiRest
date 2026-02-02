unit Unit1;

interface

uses
  System.JSON,
  
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TForm1 = class(TForm)
    lblNome: TLabel;
    lblCapital: TLabel;
    lblRegiao: TLabel;
    lblPopulacao: TLabel;
    lblMoedas: TLabel;
    lblPesquisar: TLabel;
    edtPesquisar: TEdit;
    edtNome: TEdit;
    edtCapital: TEdit;
    edtRegiao: TEdit;
    edtPopulacao: TEdit;
    edtMoedas: TEdit;
    rstclntPaises: TRESTClient;
    rstrqstPaises: TRESTRequest;
    rstrspnsPaises: TRESTResponse;
    procedure edtPesquisarExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtPesquisarExit(Sender: TObject);
var pesquisar: string;

begin
  pesquisar := edtPesquisar.Text;
  rstrqstPaises.Resource := pesquisar;

  try
    rstrqstPaises.Execute;
    if rstrspnsPaises.StatusCode = 200 then
    begin
      var JSON := TJSONObject.ParseJSONValue(rstrspnsPaises.Content) as TJSONObject;

      if JSON.GetValue('status').Value = '404' then
      begin
        ShowMessage('Nome de País Inválido');
        Exit;
      end;

      edtNome.Text := JSON.GetValue('official').Value;
      edtCapital.Text := JSON.GetValue('capital').Value;
      edtRegiao.Text := JSON.GetValue('region').Value;
      edtPopulacao.Text := JSON.GetValue('population').Value;
      edtMoedas.Text := JSON.GetValue('currencies').Value;
        
    end;

    except
      on E: Exception do
        ShowMessage('Erro ' + E.Message);  
  end;

end;

end.
