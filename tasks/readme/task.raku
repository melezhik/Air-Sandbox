use Air::Functional :BASE;
use Air::Base;

my &index = &page.assuming( #:REFRESH(1),
    title       => 'hÅrc',
    description => 'HTMX, Air, Red, Cro',
    footer      => footer p ['Aloft on ', b safe '&Aring;ir'],
);


my &planets = &table.assuming(
    :thead[["Planet", "Diameter (km)",
            "Distance to Sun (AU)", "Orbit (days)"],],
    :tbody[["Mercury",  "4,880", "0.39",  "88"],
           ["Venus"  , "12,104", "0.72", "225"],
           ["Earth"  , "12,742", "1.00", "365"],
           ["Mars"   ,  "6,779", "1.52", "687"],],
    :tfoot[["Average",  "9,126", "0.91", "341"],],
);


sub SITE is export {
    site #:bold-color<blue>,
        index
            main
                div [
                    h3 'Planetary Table';
                    planets;
                ]
}