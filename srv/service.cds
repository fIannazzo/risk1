using { RiskManagement as my } from '../db/schema.cds';

@path : '/service/RiskManagementService'
service RiskManagementService
{
    @cds.redirection.target
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @cds.redirection.target
    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;

    @cds.redirection.target
    @odata.draft.enabled
    entity BusinessPartnerA2X_A_BusinessPartner as
        projection on my.BusinessPartnerA2X.A_BusinessPartner
}

annotate RiskManagementService with @requires :
[
    'authenticated-user'
];
