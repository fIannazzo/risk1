namespace RiskManagement;

entity Risks
{
    key ID : UUID;
    miti_id : Association to one Mitigations;
    title : String(100);
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    supplier : Association to one BusinessPartnerA2X.A_BusinessPartner on supplier.risk = $self;
}

entity Mitigations
{
    key ID : UUID;
    createdAt : String(100);
    createdBy : String(100);
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.miti_id = $self;
}

entity BusinessPartnerA2X.A_BusinessPartner
{
    key ID : UUID;
    BusinessPartner : String(100);
    Cusomter : String(100);
    Supplier : String(100);
    BusinessPartnerCategory : String(5);
    BusinessPartnerFullName : String(100);
    risk : Association to one Risks;
}
