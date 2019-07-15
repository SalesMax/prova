public class CountryCodeController {
    
      public List<SelectOption> countryNames { get; set; }
    
    public CountryCodeController() {
        getCountryNames();
    }
    
    public void getCountryNames() {
        countryNames = new List<SelectOption>();
        
        List<CountryCode__c> allCountries = CountryCode__c.getAll().values();
        
        
        
        for( CountryCode__c country : allCountries ) {
            countryNames.add( new SelectOption( country.Id, country.Name ) );
        }

        System.debug('cia');
    }

}