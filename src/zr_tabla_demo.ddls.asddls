@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZTABLA_DEMO'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_TABLA_DEMO
  as select from ZTABLA_DEMO as Doumentos
{
  key sociedad as Sociedad,
  key ejercicio as Ejercicio,
  key document as Document,
  @Semantics.amount.currencyCode: 'Moneda'
  importe as Importe,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  moneda as Moneda,
  createdby as Createdby,
  changedby as Changedby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchangedat as Locallastchangedat,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchangedat as Lastchangedat
}
