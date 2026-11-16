using { RiskManagement05 as my } from '../db/schema.cds';

@path : '/service/RiskManagement05Service'
service RiskManagement05Service
{
    @cds.redirection.target
    entity Risk_05 as
        projection on my.Risk_05;

    @cds.redirection.target
    entity Mitigation_05 as
        projection on my.Mitigation_05;
}

annotate RiskManagement05Service with @requires :
[
    'authenticated-user'
];
