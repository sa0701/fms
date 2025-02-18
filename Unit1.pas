unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ComObj, Vcl.StdCtrls,Fms_constants,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.WinXPickers,DateUtils, Vcl.Menus,shellapi;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    fam_ru_edit: TLabeledEdit;
    fam_en_edit: TLabeledEdit;
    name_ru_edit: TLabeledEdit;
    name_en_edit: TLabeledEdit;
    oth_ru_edit: TLabeledEdit;
    oth_en_edit: TLabeledEdit;
    oth_check: TCheckBox;
    grazd_edit: TLabeledEdit;
    date_roz: TDateTimePicker;
    Label1: TLabel;
    mesto_roz: TLabeledEdit;
    gender: TComboBox;
    GroupBox2: TGroupBox;
    doc_type_edit: TLabeledEdit;
    ser_edit: TLabeledEdit;
    num_edit: TLabeledEdit;
    doc_date: TDateTimePicker;
    Label2: TLabel;
    doc_date_exp: TDateTimePicker;
    Label3: TLabel;
    telEdit: TLabeledEdit;
    GroupBox3: TGroupBox;
    kids_check: TCheckBox;
    num_akt_kids: TLabeledEdit;
    date_num_kids: TDateTimePicker;
    Label4: TLabel;
    name_org_kids_edit: TLabeledEdit;
    Label5: TLabel;
    fam_k_edit: TEdit;
    name_k_edit: TEdit;
    oth_k_edit: TEdit;
    taegetvisit: TRadioGroup;
    GroupBox4: TGroupBox;
    doc_pravo_check: TCheckBox;
    type_doc_pravo: TRadioGroup;
    doc_prv_ser: TLabeledEdit;
    doc_prv_num: TLabeledEdit;
    doc_prv_date: TDateTimePicker;
    label6: TLabel;
    doc_prv_exp: TDateTimePicker;
    Label7: TLabel;
    GroupBox5: TGroupBox;
    adres_edit: TMemo;
    GroupBox6: TGroupBox;
    mgr_ser: TLabeledEdit;
    mgr_num: TLabeledEdit;
    date_in: TDateTimePicker;
    Label8: TLabel;
    date_roz_k: TDateTimePicker;
    Label9: TLabel;
    GroupBox7: TGroupBox;
    fam_p2: TLabeledEdit;
    nam_p2: TLabeledEdit;
    oth_p2: TLabeledEdit;
    GroupBox8: TGroupBox;
    doc_type_p2: TLabeledEdit;
    doc_ser_p2: TLabeledEdit;
    doc_num_p2: TLabeledEdit;
    date_doc_p2: TLabeledEdit;
    date_doc_exp_p2: TLabeledEdit;
    GroupBox9: TGroupBox;
    adress_v_p2: TMemo;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    type_org_p2: TRadioGroup;
    doc_prv_exp_check: TCheckBox;
    type_pomez: TRadioGroup;
    doc_base_edit: TLabeledEdit;
    procedure oth_checkClick(Sender: TObject);
    procedure kids_checkClick(Sender: TObject);
    procedure doc_pravo_checkClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    procedure Submit;
  public
    { Public declarations }
  end;
const
   ServerName = 'Excel.Application';
var
  Form1: TForm1;
   Server:Variant;

implementation

{$R *.dfm}





procedure TForm1.Button1Click(Sender: TObject);
begin
 submit;
end;

procedure TForm1.doc_pravo_checkClick(Sender: TObject);
begin
 if doc_pravo_check.Checked then
 begin
    type_doc_pravo.Enabled:=true;
   doc_prv_ser.Enabled:=true;
   doc_prv_num.Enabled:=true;
   doc_prv_date.Enabled:=true;
   doc_prv_exp.Enabled:=true;
   label6.Enabled:=true;
   label7.Enabled:=true;
 end else begin
   type_doc_pravo.Enabled:=false;
   doc_prv_ser.Enabled:=false;
   doc_prv_num.Enabled:=false;
   doc_prv_date.Enabled:=false;
   doc_prv_exp.Enabled:=false;
   label6.Enabled:=false;
   label7.Enabled:=false;
 end;

end;

procedure TForm1.kids_checkClick(Sender: TObject);
begin
  if kids_check.Checked then
  begin
    num_akt_kids.Enabled:=true;
    date_num_kids.Enabled:=true;
    name_org_kids_edit.Enabled:=true;
    label5.Enabled:=true;
    fam_k_edit.Enabled:=true;
    name_k_edit.Enabled:=true;
    oth_k_edit.Enabled:=true;
    date_roz_k.Enabled:=true;
    label9.Enabled:=true;
  end else begin
    num_akt_kids.Enabled:=false;
    date_num_kids.Enabled:=false;
    name_org_kids_edit.Enabled:=false;
    label5.Enabled:=false;
    fam_k_edit.Enabled:=false;
    name_k_edit.Enabled:=false;
    oth_k_edit.Enabled:=false;
    date_roz_k.Enabled:=false;
    label9.Enabled:=false;
  end;

end;

procedure TForm1.oth_checkClick(Sender: TObject);
begin
 if oth_check.Checked then
 begin
   oth_ru_edit.Enabled:=true;
   oth_en_edit.Enabled:=true;
 end else begin
   oth_ru_edit.Enabled:=false;
   oth_en_edit.Enabled:=false;
 end;

end;

//основная процедура обработки  формы

procedure TForm1.Submit;
const
   ServerName = 'Excel.Application';
var

   ExlSheet,ExlBook:Variant;
   Path,s,tmpPath:string;
   i:integer;
   GU:TGUID;
begin

  Server:=CreateOleObject(ServerName);
  Path:=ExtractFilepath(Application.EXEname)+'report\blank_u.xlsx';
  ExlBook:=Server.WorkBooks.Open(WideString(Path));
  ExlSheet:=ExlBook.WorkSheets[1];
  tmpPath:=GetEnvironmentVariable('TEMP');
  //основные данные
  s:=fam_ru_edit.text;
  for i:=1 to length(s) do
  begin
       ExlSheet.Range[FFAM_RUS[i]].Value:=Copy(s,i,1);
   end;
   s:=fam_en_edit.Text;
   for i:=1 to length(s) do
  begin
       ExlSheet.Range[FFAM_EN[i]].Value:=Copy(s,i,1);
   end;
   s:=name_ru_edit.Text;
   for i:=1 to length(s) do
  begin
       ExlSheet.Range[FNAME_RUS[i]].Value:=Copy(s,i,1);
   end;
   s:=name_en_edit.Text;
   for i:=1 to length(s) do
  begin
       ExlSheet.Range[FNAME_EN[i]].Value:=Copy(s,i,1);
   end;
   s:=grazd_edit.Text;
   for i:=1 to length(s) do
  begin
       ExlSheet.Range[FGRAZD[i]].Value:=Copy(s,i,1);
   end;

   if oth_check.Checked then //проверяем отчество
   begin
      s:=oth_ru_edit.Text;
   for i:=1 to length(s) do
    begin
       ExlSheet.Range[FOTH_RU[i]].Value:=Copy(s,i,1);
    end;
     s:=oth_en_edit.Text;
   for i:=1 to length(s) do
    begin
       ExlSheet.Range[FOTH_EN[i]].Value:=Copy(s,i,1);
    end;
   end;

     //достаем дату рождения
    s:=Datetostr(date_roz.DateTime);
    ExlSheet.Range['AD27']:=Copy(s,1,1);
    ExlSheet.Range['AH27']:=Copy(s,2,1);

    ExlSheet.Range['AT27']:=Copy(s,4,1);
    ExlSheet.Range['AX27']:=Copy(s,5,1);

    ExlSheet.Range['BF27']:=Copy(s,7,1);
    ExlSheet.Range['BJ27']:=Copy(s,8,1);
    ExlSheet.Range['BN27']:=Copy(s,9,1);
    ExlSheet.Range['BR27']:=Copy(s,10,1);

    case gender.ItemIndex of
      0: ExlSheet.Range['CL27']:='X';
      1: ExlSheet.Range['DB27']:='X';
    end;

    //страна проживания
   s:=mesto_roz.Text;
   for i:=1 to length(s) do
    begin
       ExlSheet.Range[COUNTRY_ROZ[i]].Value:=Copy(s,i,1);
    end;

   //тип документа удостоверяющий личность
   s:=doc_type_edit.Text;
   for i:=1 to length(s) do
    begin
       ExlSheet.Range[PASPORT_TYPE[i]].Value:=Copy(s,i,1);
    end;

    s:=ser_edit.Text;//серия документа
   for i:=1 to length(s) do
    begin
       ExlSheet.Range[PASSPORT_SER[i]].Value:=Copy(s,i,1);
    end;

    s:=num_edit.Text;//номер документа
    for i:=1 to length(s) do
    begin
       ExlSheet.Range[PASSPORT_NUM[i]].Value:=Copy(s,i,1);
    end;

    //дата выдачи и срок действия
    s:=Datetostr(doc_date.DateTime);
    ExlSheet.Range['I39']:=Copy(s,1,1);
    ExlSheet.Range['M39']:=Copy(s,2,1);

    ExlSheet.Range['Z39']:=Copy(s,4,1);
    ExlSheet.Range['AD39']:=Copy(s,5,1);

    ExlSheet.Range['AL39']:=Copy(s,7,1);
    ExlSheet.Range['AP39']:=Copy(s,8,1);
    ExlSheet.Range['AT39']:=Copy(s,9,1);
    ExlSheet.Range['AX39']:=Copy(s,10,1);

    s:=Datetostr(doc_date_exp.DateTime);
    ExlSheet.Range['BN39']:=Copy(s,1,1);
    ExlSheet.Range['BR39']:=Copy(s,2,1);

    ExlSheet.Range['CD39']:=Copy(s,4,1);
    ExlSheet.Range['CH39']:=Copy(s,5,1);

    ExlSheet.Range['CP39']:=Copy(s,7,1);
    ExlSheet.Range['CT39']:=Copy(s,8,1);
    ExlSheet.Range['CX39']:=Copy(s,9,1);
    ExlSheet.Range['DB39']:=Copy(s,10,1);

    //запись акта о рождении
    if kids_check.Checked then
    begin
       s:=num_akt_kids.Text;//номер документа
       for i:=1 to length(s) do
       begin
       ExlSheet.Range[NUM_AKT_ROZ[i]].Value:=Copy(s,i,1);
       end;
       s:=Datetostr(date_num_kids.DateTime);
       ExlSheet.Range['CP45']:=Copy(s,1,1);
       ExlSheet.Range['CT45']:=Copy(s,2,1);

       ExlSheet.Range['CX45']:=Copy(s,4,1);
       ExlSheet.Range['DB45']:=Copy(s,5,1);

       ExlSheet.Range['DF45']:=Copy(s,7,1);
       ExlSheet.Range['DJ45']:=Copy(s,8,1);
       ExlSheet.Range['DN45']:=Copy(s,9,1);
       ExlSheet.Range['DR45']:=Copy(s,10,1);
       s:=name_org_kids_edit.Text;
       for i := 1 to length(s) do
         begin
          ExlSheet.Range[AKT_ORG[i]].Value:=Copy(s,i,1);
         end;
       s:=fam_k_edit.Text;
       for i := 1 to length(s) do
       begin
        ExlSheet.Range[KIDS_FAM[i]].Value:=Copy(s,i,1);
       end;

       s:=name_k_edit.Text;
       for i := 1 to length(s) do
       begin
        ExlSheet.Range[KIDS_NAME[i]].Value:=Copy(s,i,1);
       end;

       s:=oth_k_edit.Text;
       for i := 1 to length(s) do
       begin
        ExlSheet.Range[KIDS_OTH[i]].Value:=Copy(s,i,1);
       end;

       s:=Datetostr(date_roz_k.DateTime);
       for i := 1 to length(s) do
       begin
        ExlSheet.Range[KIDS_DATE[i]].Value:=Copy(s,i,1);
       end;
    end;

    // документ подтверждающий право проживания

    if doc_pravo_check.Checked then
    begin
      case type_doc_pravo.ItemIndex of
      0:ExlSheet.Range['H53'].Value:='X'; //виза
      1:ExlSheet.Range['AJ53'].Value:='X'; //внж
      2:ExlSheet.Range['BT53'].Value:='X'; //рвп
      3:ExlSheet.Range['DD53'].Value:='X';  //рвп в целях образования
      end;

      s:=doc_prv_ser.text;
      for i := 1 to length(s) do
         begin
          ExlSheet.Range[DOCPRVSER[i]].Value:=Copy(s,i,1);
         end;
      s:=doc_prv_num.text;
      for i := 1 to length(s) do
         begin
          ExlSheet.Range[DOCPRVNUM[i]].Value:=Copy(s,i,1);
         end;

      s:=Datetostr(doc_prv_date.Datetime);
      ExlSheet.Range['I58']:=Copy(s,1,1);
      ExlSheet.Range['M58']:=Copy(s,2,1);

      ExlSheet.Range['Z58']:=Copy(s,4,1);
      ExlSheet.Range['AD58']:=Copy(s,5,1);

      ExlSheet.Range['AL58']:=Copy(s,7,1);
      ExlSheet.Range['AP58']:=Copy(s,8,1);
      ExlSheet.Range['AT58']:=Copy(s,9,1);
      ExlSheet.Range['AX58']:=Copy(s,10,1);

      if doc_prv_exp_check.Checked then
       begin
        s:=Datetostr(doc_prv_exp.Datetime);
        ExlSheet.Range['BN58']:=Copy(s,1,1);
        ExlSheet.Range['BR58']:=Copy(s,2,1);

        ExlSheet.Range['CD58']:=Copy(s,4,1);
        ExlSheet.Range['CH58']:=Copy(s,5,1);

        ExlSheet.Range['CP58']:=Copy(s,7,1);
        ExlSheet.Range['CT58']:=Copy(s,8,1);
        ExlSheet.Range['CX58']:=Copy(s,9,1);
        ExlSheet.Range['DB58']:=Copy(s,10,1);
       end;
    end;

    //цель въезда
    //подчищаем предыдущие значения

      ExlSheet.Range['AD60'].Value:='';
      ExlSheet.Range['AQ60'].Value:='';
      ExlSheet.Range['BD60'].Value:='';
      ExlSheet.Range['BO60'].Value:='';
      ExlSheet.Range['CA60'].Value:='';
      ExlSheet.Range['CN60'].Value:='';
      ExlSheet.Range['DB60'].Value:='';
      ExlSheet.Range['AD62'].Value:='';
      ExlSheet.Range['AP62'].Value:='';

    // цель въезда
    case taegetvisit.ItemIndex of
      0:ExlSheet.Range['AD60'].Value:='X';
      1:ExlSheet.Range['AQ60'].Value:='X';
      2:ExlSheet.Range['BD60'].Value:='X';
      3:ExlSheet.Range['BO60'].Value:='X';
      4:ExlSheet.Range['CA60'].Value:='X';
      5:ExlSheet.Range['CN60'].Value:='X';
      6:ExlSheet.Range['DB60'].Value:='X';
      7:ExlSheet.Range['AD62'].Value:='X';
      8:ExlSheet.Range['AP62'].Value:='X';
    end;

   //номер телефона
   s:=telEdit.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[TELNUM[i]].Value:=Copy(s,i,1);
   end;

   //дата въезда
   s:=Datetostr(date_in.DateTime);
   ExlSheet.Range['I66']:=Copy(s,1,1);
   ExlSheet.Range['M66']:=Copy(s,2,1);

   ExlSheet.Range['Z66']:=Copy(s,4,1);
   ExlSheet.Range['AD66']:=Copy(s,5,1);

   ExlSheet.Range['AL66']:=Copy(s,7,1);
   ExlSheet.Range['AP66']:=Copy(s,8,1);
   ExlSheet.Range['AT66']:=Copy(s,9,1);
   ExlSheet.Range['AX66']:=Copy(s,10,1);

   //миграционная карта
   s:=mgr_ser.text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[MGRSER[i]].Value:=Copy(s,i,1);
   end;

   s:=mgr_num.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[MGRNUM[i]].Value:=Copy(s,i,1);
   end;




   //адрес места пребывания

   s:=adres_edit.Lines.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[ADRES_PREBYVANIJA[i]].Value:=Copy(s,i,1);
   end;

   //тип помещения
   case type_pomez.ItemIndex of
   0: ExlSheet.Range['Y109'].value:='X';
   1: ExlSheet.Range['AZ109'].value:='X';
   2: ExlSheet.Range['CB109'].value:='X';
   end;

   //выписка из егрн
   s:=doc_base_edit.Text;
   for i := 1 to length(s) do
    begin
       ExlSheet.Range[DOC_BASE[i]].Value:=Copy(s,i,1);
    end;

  {конец первого листа, 1-2 страницы
  переход на лист 2}

   ExlSheet:=ExlBook.WorkSheets[2];

   //принемающая сторона
   s:=fam_p2.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[FAM_P2_T[i]].Value:=Copy(s,i,1);
    ExlSheet.Range[FAM_P2_B[i]].Value:=Copy(s,i,1);
   end;

   s:=nam_p2.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[NAME_P2_T[i]].Value:=Copy(s,i,1);
    ExlSheet.Range[NAME_P2_B[i]].Value:=Copy(s,i,1);
   end;

   s:=oth_p2.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[OTH_P2_T[i]].Value:=Copy(s,i,1);
    ExlSheet.Range[OTH_P2_B[i]].Value:=Copy(s,i,1);
   end;
    //ДОКУМЕНТ ПРИНЕМАЮЩЕЙ СТОРОНЫ

   s:=doc_type_p2.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[PASSPORT_TYPE_P2[i]].Value:=Copy(s,i,1);
   end;

   s:=doc_ser_p2.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[PASSPORT_SER_P2[i]].Value:=Copy(s,i,1);
   end;

   s:=doc_num_p2.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[PASSPORT_NUM_P2[i]].Value:=Copy(s,i,1);
   end;

   s:=date_doc_p2.Text;
   ExlSheet.Range['I13']:=Copy(s,1,1);
   ExlSheet.Range['M13']:=Copy(s,2,1);

   ExlSheet.Range['Z13']:=Copy(s,4,1);
   ExlSheet.Range['AD13']:=Copy(s,5,1);

   ExlSheet.Range['AL13']:=Copy(s,7,1);
   ExlSheet.Range['AP13']:=Copy(s,8,1);
   ExlSheet.Range['AT13']:=Copy(s,9,1);
   ExlSheet.Range['AX13']:=Copy(s,10,1);

   s:=date_doc_exp_p2.Text;
   ExlSheet.Range['BN13']:=Copy(s,1,1);
   ExlSheet.Range['BR13']:=Copy(s,2,1);

   ExlSheet.Range['CD13']:=Copy(s,4,1);
   ExlSheet.Range['CH13']:=Copy(s,5,1);

   ExlSheet.Range['CP13']:=Copy(s,7,1);
   ExlSheet.Range['CT13']:=Copy(s,8,1);
   ExlSheet.Range['CX13']:=Copy(s,9,1);
   ExlSheet.Range['DB13']:=Copy(s,10,1);
    // АДРЕС СОБСТВЕННИКА

   s:=adress_v_p2.Lines.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[ADRES_V_P2[i]].Value:=Copy(s,i,1);
   end;
    // ЛИНИЯ ОТРЫВА

   s:=fam_ru_edit.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[FFAM_RUS_P2[i]].Value:=Copy(s,i,1);
   end;

   s:=name_ru_edit.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[NAME_RUS_P2[i]].Value:=Copy(s,i,1);
   end;

   s:=oth_ru_edit.Text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[OTH_RUS_P2[i]].Value:=Copy(s,i,1);
   end;

   s:=grazd_edit.text;
   for i := 1 to length(s) do
   begin
    ExlSheet.Range[GRAZD_P2[i]].Value:=Copy(s,i,1);
   end;

   s:=Datetostr(date_roz.DateTime);
    ExlSheet.Range['AD40']:=Copy(s,1,1);
    ExlSheet.Range['AH40']:=Copy(s,2,1);

    ExlSheet.Range['AX40']:=Copy(s,4,1);
    ExlSheet.Range['BB40']:=Copy(s,5,1);

    ExlSheet.Range['BN40']:=Copy(s,7,1);
    ExlSheet.Range['BR40']:=Copy(s,8,1);
    ExlSheet.Range['BV40']:=Copy(s,9,1);
    ExlSheet.Range['BZ40']:=Copy(s,10,1);

    case gender.ItemIndex of
      0: ExlSheet.Range['CX40']:='X';
      1: ExlSheet.Range['DN40']:='X';
    end;
    s:=doc_type_edit.Text;
   for i:=1 to length(s) do
    begin
       ExlSheet.Range[PTYPE_P2[i]].Value:=Copy(s,i,1);
    end;

    s:=ser_edit.Text;//серия документа
   for i:=1 to length(s) do
    begin
       ExlSheet.Range[PSER_P2[i]].Value:=Copy(s,i,1);
    end;

    s:=num_edit.Text;//номер документа
    for i:=1 to length(s) do
    begin
       ExlSheet.Range[PNUM_P2[i]].Value:=Copy(s,i,1);
    end;

    //дата выдачи и срок действия
    s:=Datetostr(doc_date.DateTime);
    ExlSheet.Range['I44']:=Copy(s,1,1);
    ExlSheet.Range['M44']:=Copy(s,2,1);

    ExlSheet.Range['Z44']:=Copy(s,4,1);
    ExlSheet.Range['AD44']:=Copy(s,5,1);

    ExlSheet.Range['AL44']:=Copy(s,7,1);
    ExlSheet.Range['AP44']:=Copy(s,8,1);
    ExlSheet.Range['AT44']:=Copy(s,9,1);
    ExlSheet.Range['AX44']:=Copy(s,10,1);

    s:=Datetostr(doc_date_exp.DateTime);
    ExlSheet.Range['BN44']:=Copy(s,1,1);
    ExlSheet.Range['BR44']:=Copy(s,2,1);

    ExlSheet.Range['CD44']:=Copy(s,4,1);
    ExlSheet.Range['CH44']:=Copy(s,5,1);

    ExlSheet.Range['CP44']:=Copy(s,7,1);
    ExlSheet.Range['CT44']:=Copy(s,8,1);
    ExlSheet.Range['CX44']:=Copy(s,9,1);
    ExlSheet.Range['DB44']:=Copy(s,10,1);

    s:=adres_edit.Text;
    for i:=1 to length(s) do
    begin
       ExlSheet.Range[PADRES_P2[i]].Value:=Copy(s,i,1);
    end;
     // тип принимающей стороны
    ExlSheet.Range['CT3'].Value:='';
    ExlSheet.Range['DR3'].Value:='';

    case type_org_p2.ItemIndex of
    0:ExlSheet.Range['CT3'].Value:='X';
    1:ExlSheet.Range['DR3'].Value:='X';
    end;

   CreateGUID(GU);
   case radiogroup1.ItemIndex of
   0:
     begin
     Server.Workbooks[1].ExportAsFixedFormat(0,tmpPath+'\'+GUIDtostring(GU)+'.pdf');
     sleep(3000);
     Server.Quit;
     ShellExecute(handle,PChar('open'),Pchar(tmpPath+'\'+GUIDtostring(GU)+'.pdf'),nil,nil,sw_shownormal);
     end;
   1:
     begin
     Server.Workbooks[1].saveas(tmpPath+'\'+GUIDtostring(GU)+'.xlsx',51);
     sleep(3000);
     Server.Quit;
     ShellExecute(handle,PChar('open'),Pchar(tmpPath+'\'+GUIDtostring(GU)+'.xlsx'),nil,nil,sw_shownormal);
     end;
   end;  //0-тип pdf

   //Server.Workbooks[1].close;

end;

end.
