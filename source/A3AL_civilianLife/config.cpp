#include "macros.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {""};
        author = "Hyronos";
        authors[] = {"Hyronos"};
};


class CfgFunctions {
    #include "Functions.hpp"
};

#include "masterInclude.hpp"