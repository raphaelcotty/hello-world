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
        files: ["someLib.cpp"]
        Group {
            name: "headers"
            files: ["someLib.h"]
            qbs.install: true
            qbs.installDir: "include"
        }
        install: true
        version: "1.0"
    }
}
