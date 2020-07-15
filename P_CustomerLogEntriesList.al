page 50103 "Custom Log Entries List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Custom Log Entry";
    Editable = False;
    CardPageId = "Custom Log Entry Card";
    InsertAllowed = false;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.") { }
                field("Table No."; "Table No.") { }
                field("Table Name."; "Table Name.") { }
                field("Created By"; "Created By") { }
                field("Action Carried"; "Action Carried") { }
                field("Creation Date Time"; "Creation Date Time") { }
                field("Created Date"; "Created Date") { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}