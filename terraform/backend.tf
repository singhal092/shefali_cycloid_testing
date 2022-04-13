terraform {
    backend "gcs" {
         credentials = "${file("shefali.json")}"
         bucket      = "shefalitestbucket"
         prefix      = "VmOnOff"
    }
}
