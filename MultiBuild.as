void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("tinyexr");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);

	properties.project_includes({
		"zlib"
	});

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"."
	});

	properties.files({
		"./tinyexr.h",
		"./tinyexr.cpp"
	});

	properties.defines("TINYEXR_USE_MINIZ=0");
}