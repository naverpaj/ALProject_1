table 50106 "Concur Import"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Editable = false;
        }
        field(2; "Entry Key"; Integer)
        {
        }
        field(3; "Report Key"; Integer)
        {
        }
        field(4; "Expense Type"; Text[80])
        {
        }
        field(5; Status; Option)
        {
            OptionCaption = 'Imported,Processed';
            OptionMembers = Imported,Processed;
        }
        field(6; "Imported Date"; DateTime)
        {
        }
        field(7; "File Name"; Text[50])
        {
        }
        field(8; "Imported By"; Code[50])
        {
        }
        field(9; "NAV Company"; Code[50])
        {
            TableRelation = Company.Name;
        }
        field(10; "Concur BU / PL"; Code[20])
        {
        }
        field(11; "Concur Department"; Code[20])
        {
        }
        field(12; "Concur Account Code"; Code[20])
        {
        }
        field(15; "Employee ID"; Code[10])
        {
        }
        field(16; "Employee Name"; Text[50])
        {
        }
        field(17; "Report Name"; Text[50])
        {
        }
        field(20; "Transaction Amount"; Decimal)
        {
        }
        field(21; "Transaction Currency"; Code[10])
        {
        }
        field(22; "Expense Amount"; Decimal)
        {
        }
        field(23; "VAT Amount"; Decimal)
        {
        }
        field(24; "Country Code"; Code[10])
        {
        }
        field(25; "Transaction Date"; Date)
        {
        }
        field(50; "Processed Date"; DateTime)
        {
        }
        field(51; "Processed By"; Code[50])
        {
        }
        field(52; "Processed Count"; Integer)
        {
        }
        field(53; "Processed Document No."; Code[20])
        {
        }
        field(60; "NAV G/L Account No."; Code[20])
        {
            TableRelation = "G/L Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(61; "NAV BU"; Code[20])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(63; "Department Type"; Option)
        {
            OptionMembers = Production,Sales,Admin;
        }
        field(64; "NAV Department Code"; Code[20])
        {
            CaptionClass = '1,1,2';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Entry Key", "Report Key")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        TESTFIELD(Status, Status::Imported);
    end;

    trigger OnInsert()
    begin
        "NAV Company" := COMPANYNAME;
    end;

    trigger OnModify()
    begin
        TESTFIELD(Status, Status::Imported);
    end;
}

