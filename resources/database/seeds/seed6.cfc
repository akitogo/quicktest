component {

    function run( qb, mockdata ) {

        qb.table( "usergroups_permissions" ).insert(
            mockdata.mock(
                $num = 25,
                "permissionid" = "num:1:25",
                "usergroupid" = "num:1:25"
        )
        );
    }
}