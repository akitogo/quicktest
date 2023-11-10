component {

    function run( qb, mockdata ) {

        qb.table( "permissions_extendedpermissions" ).insert(
            mockdata.mock(
                $num = 25,
                "permissionid" = "num:1:25",
                "extendedpermissionid" = "num:1:25"
            )
        );        
    }
}