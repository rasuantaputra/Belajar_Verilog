/*
A top-level module is one which  all other modules.
A top-level module is not instantiated within any other module.
*/

module mod3 (
    // ports list
);

    reg c;
    
endmodule

module mod4 (
    // ports list
);

    wire a;
endmodule

// This module called "mod1" contains two instances
module mod1 (
    // ports list
);

    wire y;

    // First instance is of module called "mod3" with name "ini_adalah_modul_ke_1"
    mod3 ini_adalah_modul_ke_1 ();
    // Second instance is also of module "mod3" with name "ini_adalah_modul_ke_2"
    mod3 ini_adalah_modul_ke_2 ();
endmodule

// This module called "mod2" contains two instances
module mod2 (
    // ports ist
);
    // First instance is of module called "mod4" with name "ini_adalah_modul_ke_1"
    mod4 ini_adalah_modul_ke_1 ();
    // Second instance is also of module "mod4" with name "ini_adalah_modul_ke_2"
    mod4 ini_adalah_modul_ke_2 ();
endmodule

// Top-level module
// From design perspective, this is the top-level module
module T04_top_level_module (
    // ports list
);

    wire _net;

    mod1 ini_mengandung_semua_module_dan_submodule_1 (); // since it contains all other modules and sub-modules
    mod2 ini_mengandung_semua_module_dan_submodule_2 (); // since it contains all other modules and sub-modules
    
endmodule