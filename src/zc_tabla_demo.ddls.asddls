@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZTABLA_DEMO'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TABLA_DEMO
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_TABLA_DEMO
  association [1..1] to ZR_TABLA_DEMO as _BaseEntity on $projection.SOCIEDAD = _BaseEntity.SOCIEDAD and $projection.EJERCICIO = _BaseEntity.EJERCICIO and $projection.DOCUMENT = _BaseEntity.DOCUMENT
{
  key Sociedad,
  key Ejercicio,
  key Document,
  @Semantics: {
    Amount.Currencycode: 'Moneda'
  }
  Importe,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Moneda,
  Createdby,
  Changedby,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Locallastchangedat,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  Lastchangedat,
  _BaseEntity
}
