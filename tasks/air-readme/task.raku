use Air::Functional;


#had to fine tune the stock symbol& END newline to make test work (editor trims trailing spaces)

my $main = main [
    div :class<jumbotron>, [
        h1 "Welcome to Dunder Mifflin!";        #use ; to stop <h1> slurping <p>
        p  [
            "Dunder Mifflin Inc. (stock symbol"; strong 'DMI'; ") ";
            q:to/END/;
            is a micro-cap regional paper and office
            supply distributor with an emphasis on servicing
            small-business clients.
            END
            ];
    ];

    p :hx-get<https://v2.jokeapi.dev/joke/Any?format=txt&safe-mode>,
        "Click Me";

    p '<div class="content">Escaped & Raw HTML!</div>';
];

say $main
