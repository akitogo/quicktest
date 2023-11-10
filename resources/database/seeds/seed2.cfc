component {

    function run( qb, mockdata ) {
        qb.table( "usergroups" ).insert(
            mockdata.mock(
                $num = 20,
                "name": "words"
            )
        );
}
}