use Air::Functional;

say div :class<jumbotron>, [
    h1 "Welcome to Dunder Mifflin!";
    p  [
        "Dunder Mifflin Inc. (stock symbol "; strong 'DMI'; ") ";
        q:to/END/;
            is a micro-cap regional paper and office
            supply distributor with an emphasis on servicing
            small-business clients.
        END
    ];
];