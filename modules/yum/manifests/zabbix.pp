class yum::zabbix {

 yumrepo { "zabbix":
            descr           => "Zabbix Enterprise Linux",
            baseurl         => "http://dl.fedoraproject.org/pub/epel/6/x86_64",
            enabled         => 1,
            gpgcheck        => 0,
    } -> 
    Package <| |>
}
