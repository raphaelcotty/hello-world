import qbs

Project {
    CppApplication {
        name: "hello-world"
        files: ["main.cpp"]

        Group {
            name: "The App itself"
            fileTagsFilter: "application"
            qbs.install: true
            qbs.installDir: "bin"
        }

        Depends { name: "someLib" }
    }
    DynamicLibrary {
        name: "someLib"
        Depends { name: "cpp" }
        files: ["someLib.cpp", "someLib.h"]
    }
}

