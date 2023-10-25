@AbapCatalog.sqlViewName: 'ZHAPPY_V_0001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Örnek'
define view zhappy_cds_test as select from ekko
    inner join ekpo on ekpo.ebeln = ekko.ebeln
    inner join mara on mara.matnr = ekpo.matnr
    inner join makt on makt.matnr = mara.matnr and ekko.spras = $session.system_language
    inner join lfa1 on lfa1.lifnr = ekko.lifnr 

{
 
key ekpo.ebeln,
key ekpo.ebelp,
ekpo.matnr,
makt.maktx,
ekpo.werks,
ekpo.lgort,
ekpo.meins, 
lfa1.lifnr,
lfa1.name1,
concat(lfa1.stras,lfa1.mcod3) as adnr
}
