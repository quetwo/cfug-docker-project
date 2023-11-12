component
{
    this.name = "CFUG-DemoApp";
    this.datasource =
    {
        class: 'com.mysql.cj.jdbc.Driver'
        , bundleName: 'com.mysql.cj'
        , bundleVersion: '8.0.19'
        , connectionString: 'jdbc:mysql://' & server.system.environment.DB_SERVER &':3306/'
              & server.system.environment.DB_SCHEMA & '?characterEncoding=UTF-8&serverTimezone=Etc/UTC&autoReconnect=true&maxReconnects=3&allowMultiQueries=true&enabledTLSProtocols=TLSv1.2'
        , username: server.system.environment.DB_USER
        , password: server.system.environment.DB_PASS
        , connectionLimit:100 // default:-1
        , alwaysSetTimeout:true // default: false
        , validate:false // default: false
    };

    this.cache.connections["cacheRamCache"] =
        {
            class: 'lucee.runtime.cache.ram.RamCache'
            , storage: false
            , custom: {
            "timeToIdleSeconds":"0",
            "timeToLiveSeconds":"0"
        }, default: 'object'
    };

    this.ormenabled = true;
    this.ormsettings =
    {
        logsql: true,
        dbcreate: "update",
        cfclocation: "db"
    };

    this.sessionmanagement = true;
    this.sessiontimeout = createTimespan(0,0,30,0);   // 0 days, 0 hours, 30 minutes, 0 seconds
    this.applicationtimeout = createTimespan(0, 12, 0, 0);  // 0 days, 12 hours, 0 minutes, 0 seconds

    function onApplicationStart()
    {
        RestInitApplication(expandPath('rest'), '/demo', false, server.system.environment.LUCEE_ADMIN_PASSWORD);
    }

    function onSessionStart()
    {

    }

}
