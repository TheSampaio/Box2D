project "box2d"
	kind "StaticLib"
	language "C"
	cdialect "C17"
	staticruntime "off"
    location "build"

    targetdir (".Out/Bin/" .. output_dir .. "%{prj.name}")
    objdir    (".Out/Obj/" .. output_dir .. "%{prj.name}")

	files {
		"include/**.h",
		"src/**.h",
		"src/**.c"
	}

	includedirs {
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "on"
        symbols "off"