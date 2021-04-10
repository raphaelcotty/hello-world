import qbs

CppApplication {
    name: "hello-world"
    files: ["main.cpp"]

    Group {
        name: "The App itself"
        fileTagsFilter: "application"
        qbs.install: true
        qbs.installDir: "bin"
    }
}

