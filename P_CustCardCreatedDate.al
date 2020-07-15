pageextension 50101 "Cust Created Date" extends "Customer Card"
{
    layout
    {
        addafter("Service Zone Code")
        {
            field("Created By"; "Created By")
            {
                Editable = false;
            }
            field("Created Date"; "Created Date")
            {
                Editable = false;
            }
            field("Modified By"; "Modified By")
            {
                Editable = false;
            }
            field("Modified Date"; "Modified Date")
            {
                editable = false;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;

    trigger
    OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        "Created By" := UserId;
        "Created Date" := Today;
        Modify(true);
    end;
}