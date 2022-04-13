terraform {
    backend "gcs" {
         credentials = "mohit-2022-e4a8778fcfae.json"
         bucket      = "shefalitestbucket"
         prefix      = "VmOnOff"
    }
}
