table 50102 "Custom Log Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer) { }
        field(2; "Table No."; Integer) { }
        field(3; "Table Name."; Integer) { }
        field(4; "Created By"; Text[50])
        {
            TableRelation = User;
        }
        field(5; "Creation Date Time"; DateTime) { }
        field(6; "Created Date"; Date) { }
        field(7; "Action Carried"; Option)
        {
            OptionMembers = "Insert","Modify","Delete";
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        //message('Trying to delete');
    end;

    trigger OnRename()
    begin
        //message('Rename records')
        //Change 1 from git bash
        //Change 2 from git bash
        //Change 3 from VS Code 1
    end;



}
//Change 2