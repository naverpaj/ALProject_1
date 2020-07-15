tableextension 50101 "Cust Created Details" extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50101; "Created By"; Text[50]) { }
        field(50102; "Created Date"; Date) { }
        field(50103; "Modified By"; Text[50]) { }
        field(50104; "Modified Date"; Date) { }
    }

    var
        myInt: Integer;

    trigger
    OnAfterModify()
    begin
        "Modified Date" := Today;
        "Modified By" := UserID;

        "Created By" := UserId;
        "Created Date" := Today;
        //CustomLogEntry1.reset;
        if CustomLogEntry1.FindLast then;
        CustomLogEntry.Init();
        ;
        CustomLogEntry."Entry No." := CustomLogEntry1."Entry No." + 1;
        CustomLogEntry."Table No." := 18;
        //CustomLogEntry."Table Name." := 'Customer';
        CustomLogEntry."Created By" := UserId;
        CustomLogEntry."Created Date" := Today;
        CustomLogEntry."Creation Date Time" := CurrentDateTime;
        CustomLogEntry."Action Carried" := CustomLogEntry."Action Carried"::Modify;
        CustomLogEntry.insert;
    end;

    trigger
    OnDelete()
    begin
        if CustomLogEntry1.FindLast then;
        CustomLogEntry.Init();
        CustomLogEntry."Entry No." := CustomLogEntry1."Entry No." + 1;
        CustomLogEntry."Table No." := 18;
        //CustomLogEntry."Table Name." := 'Customer';
        CustomLogEntry."Created By" := UserId;
        CustomLogEntry."Created Date" := Today;
        CustomLogEntry."Creation Date Time" := CurrentDateTime;
        CustomLogEntry."Action Carried" := CustomLogEntry."Action Carried"::Delete;
        CustomLogEntry.insert;
    end;

    trigger
    OnBeforeRename()
    var
        Customer: Record Customer;
    begin
    end;

    var
        CustomLogEntry: Record "Custom Log Entry";
        CustomLogEntry1: Record "Custom Log Entry";
}