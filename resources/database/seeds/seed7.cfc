component {

    function run( qb, mockdata ) {


        qb.table( "extendedpermissions" ).insert(
            mockdata.mock(
                $num = 25,
                "name": "words"
            )
        );

    }
}