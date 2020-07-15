page 50109 "Concur Employee Mapping"
{
    DelayedInsert = true;
    PageType = List;
    SourceTable = "Concur Mapping";
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("BU Number"; "BU Number")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Employee ID"; "Employee ID")
                {
                }
                field("Employee Dept. Type"; "Employee Dept. Type")
                {
                }
                field(Remarks; Remarks)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        FILTERGROUP(2);
        SETRANGE("Setup Type", "Setup Type"::Employee);
        FILTERGROUP(0);
    end;
}

