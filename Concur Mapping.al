table 50107 "Concur Mapping"
{

    fields
    {
        field(1; "Setup Type"; Option)
        {
            OptionMembers = Employee,"G/L Account";
        }
        field(2; "NAV Company"; Text[30])
        {
            TableRelation = Company.Name;
        }
        field(10; "Employee ID"; Code[20])
        {
        }
        field(11; "Employee Dept. Type"; Option)
        {
            OptionMembers = Production,Sales,Admin;
        }
        field(12; "BU Number"; Code[10])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(13; "Department Code"; Code[20])
        {
            CaptionClass = '1,1,2';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(20; "Concur Account Code"; Code[20])
        {
        }
        field(25; "NAV G/L No. Production"; Code[20])
        {
            TableRelation = "G/L Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(26; "NAV G/L No. Sales"; Code[20])
        {
            TableRelation = "G/L Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(27; "NAV G/L No. Admin"; Code[20])
        {
            TableRelation = "G/L Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(30; Remarks; Text[50])
        {
        }
    }

    keys
    {
        key(Key1; "NAV Company", "Setup Type", "Employee ID", "Concur Account Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        "NAV Company" := COMPANYNAME;
    end;
}

