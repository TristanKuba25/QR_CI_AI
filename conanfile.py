from conan import ConanFile
from conan.tools.cmake import cmake_layout

class IdentiqueRatioDemo(ConanFile):
    name = "identique_ratio_demo"
    version = "0.1.0"

    settings = "os", "compiler", "build_type", "arch"

    # ---------------------------------------------------------------------
    # Binaries
    # ---------------------------------------------------------------------
    requires = (
        "opencv/4.9.0",
        "zxing-cpp/2.3.0",
        "tensorflow-lite/2.15.0",
    )

    # Build tools (Conan les injecte via conanrun.sh)
    tool_requires = (
        "cmake/3.29.3",
        "ninja/1.11.1",
    )

    # ---------------------------------------------------------------------
    # Générateurs
    # ---------------------------------------------------------------------
    generators = ("CMakeDeps", "CMakeToolchain")

    # ---------------------------------------------------------------------
    # Options : on coupe tout ce qui n’est pas strictement nécessaire
    # ---------------------------------------------------------------------
    default_options = {
        # --- global ---
        "*:shared": False,                     # tout en statique ⇒ exécutable unique

        # --- OpenCV ---
        "opencv/*:contrib": False,
        "opencv/*:nonfree": False,
        "opencv/*:world":   False,             # génère les libs séparées
        "opencv/*:with_gtk": True,             # nécessaire pour imshow() (HighGUI)
        "opencv/*:with_ffmpeg": False,         # caméra V4L2 suffit
        "opencv/*:with_gstreamer": False,
        "opencv/*:with_jpeg": False,
        "opencv/*:with_png": False,
        "opencv/*:with_tiff": False,
        "opencv/*:with_openexr": False,
        "opencv/*:with_opencl": False,
        "opencv/*:with_quirc": False,
        "opencv/*:with_eigen": False,
        "opencv/*:with_ipp": False,

        # --- ZXing‑cpp ---
        "zxing-cpp/*:build_examples": False,
        "zxing-cpp/*:build_tests":     False,
        "zxing-cpp/*:fuzzers":         False,

        # --- TensorFlow Lite ---
        "tensorflow-lite/*:xnnpack": True,     # on garde le delegate CPU rapide
        "tensorflow-lite/*:ruy":      False,
        "tensorflow-lite/*:eigen":    False,
        "tensorflow-lite/*:fp16":     False,
    }

    # ---------------------------------------------------------------------
    def layout(self):
        cmake_layout(self)

    # Bibliothèques système ; CMakeDeps les exportera sous forme de targets
    def package_info(self):
        self.cpp_info.system_libs = ["dl", "pthread"]
