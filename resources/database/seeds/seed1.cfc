component {

    function run( qb, mockdata ) {
        qb.table( "users" ).insert(
            mockdata.mock(
                $num = 25,
                "email": "email",
                "password": "string-secure"
            )
        );
    
    }

}