out_dir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "ImGUI"
    kind "StaticLib"
    language "C++"
    staticruntime "on"

    targetdir ( "bin/" .. out_dir .. "/%{prj.name}")
    objdir ( "bin-int" .. out_dir .. "/%{prj.name}")

    files {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imsth_truetype.h",
        "imgui_demo.cpp"        -- for quick testing purposes
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"

    filter "system:linux"
        systemversion "latest"
        cppdialect "C++17"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
