page 50106 "Concur Import"
{
    InsertAllowed = false;
    PageType = List;
    SourceTable = "Concur Import";
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; "Entry No.")
                {
                }
                field("Entry Key"; "Entry Key")
                {
                }
                field("Report Key"; "Report Key")
                {
                }
                field("Expense Type"; "Expense Type")
                {
                }
                field(Status; Status)
                {
                }
                field("Imported Date"; "Imported Date")
                {
                }
                field("File Name"; "File Name")
                {
                }
                field("Imported By"; "Imported By")
                {
                }
                field("NAV Company"; "NAV Company")
                {
                }
                field("Concur BU / PL"; "Concur BU / PL")
                {
                }
                field("Concur Department"; "Concur Department")
                {
                }
                field("Concur Account Code"; "Concur Account Code")
                {
                }
                field("Employee ID"; "Employee ID")
                {
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("Report Name"; "Report Name")
                {
                }
                field("Transaction Amount"; "Transaction Amount")
                {
                }
                field("Transaction Currency"; "Transaction Currency")
                {
                }
                field("Expense Amount"; "Expense Amount")
                {
                }
                field("VAT Amount"; "VAT Amount")
                {
                }
                field("Country Code"; "Country Code")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Processed Date"; "Processed Date")
                {
                }
                field("Processed By"; "Processed By")
                {
                }
                field("Processed Count"; "Processed Count")
                {
                }
                field("Processed Document No."; "Processed Document No.")
                {
                }
                field("NAV G/L Account No."; "NAV G/L Account No.")
                {
                }
                field("NAV BU"; "NAV BU")
                {
                }
                field("NAV Department Code"; "NAV Department Code")
                {
                }
                field("Department Type"; "Department Type")
                {
                }
            }
        }
    }
    //**
    //actions
    //  {
    //      area(creation)
    //      {
    //          action("Import Concur")
    //          {
    //              Image = ImportExcel;
    //              Promoted = true;
    //              RunObject = Report 50101;
    //          }
    //          action("Process Concur")
    //          {
    //              Image = Journals;
    //              Promoted = true;
    //
    //              trigger OnAction()
    //              var
    //                  RepProcessConcur: Report "";
    //                  ConcurImport: Record "50053";
    //              begin
    //                  CLEAR(RepProcessConcur);
    //                  ConcurImport.RESET;
    //                  ConcurImport.SETRANGE("NAV Company",COMPANYNAME);
    //                  ConcurImport.SETRANGE(Status,Status::Imported);
    //                  RepProcessConcur.SETTABLEVIEW(ConcurImport);
    //                  RepProcessConcur.RUNMODAL;
    //              end;
    //          }
}
// }
//}

