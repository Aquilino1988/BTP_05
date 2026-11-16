namespace RiskManagement05;

using
{
    managed,
}
from '@sap/cds/common';

entity Risk_05 : managed
{
    key ID : UUID;
    title_05 : String(100);
    prio_05 : String(5);
    descr_05 : String(100);
    impact_05 : Integer;
    criticality_05 : Integer;
    mitigation_05 : Association to one Mitigation_05;
}

entity Mitigation_05 : managed
{
    key ID : UUID;
    description_05 : String(100);
    owner_05 : String(100);
    timeline_05 : String(100);
    risk_05s : Association to many Risk_05 on risk_05s.mitigation_05 = $self;
}
