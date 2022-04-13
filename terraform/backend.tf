terraform {
    backend "gcs" {
         credentials = "shefali.json"
         bucket      = "shefalitestbucket"
         prefix      = "VmOnOff"
    }
}
