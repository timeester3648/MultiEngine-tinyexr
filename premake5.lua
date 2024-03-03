include "../../premake/common_premake_defines.lua"

project "tinyexr"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./tinyexr.h",
		"./tinyexr.cpp"
	}

	includedirs {		
		"%{IncludeDir.zlib}"
	}

	defines {
		"TINYEXR_USE_MINIZ=0"
	}