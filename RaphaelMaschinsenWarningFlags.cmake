# CustomWarningFlags.cmake

# Add a new interface library for custom warning flags
add_library(raphael_maschinsen_warning_flags INTERFACE)

if((CMAKE_CXX_COMPILER_ID STREQUAL "MSVC") OR (CMAKE_CXX_COMPILER_FRONTEND_VARIANT STREQUAL "MSVC"))
    target_compile_options(juce_recommended_warning_flags INTERFACE "/W4")
elseif((CMAKE_CXX_COMPILER_ID STREQUAL "Clang") OR (CMAKE_CXX_COMPILER_ID STREQUAL "AppleClang"))
    target_compile_options(juce_recommended_warning_flags INTERFACE
            -Wall
            -Wshadow-all
            -Wno-shadow-field-in-constructor
            -Wshorten-64-to-32
            -Wstrict-aliasing
            -Wuninitialized
            -Wunused-parameter
            -Wconversion
            -Wsign-compare
            -Wint-conversion
            -Wconditional-uninitialized
            -Wconstant-conversion
            -Wsign-conversion
            -Wbool-conversion
            -Wextra-semi
            -Wunreachable-code
            -Wcast-align
            -Wshift-sign-overflow
            -Wmissing-prototypes
            -Wnullable-to-nonnull-conversion
            -Wno-ignored-qualifiers
            -Wno-
            -Wswitch-enum
            -Wpedantic
            -Wdeprecated
            -Wfloat-equal
            -Wmissing-field-initializers
            $<$<OR:$<COMPILE_LANGUAGE:CXX>,$<COMPILE_LANGUAGE:OBJCXX>>:
            -Wzero-as-null-pointer-constant
            -Wunused-private-field
            -Woverloaded-virtual
            -Wreorder
            -Winconsistent-missing-destructor-override>
            $<$<OR:$<COMPILE_LANGUAGE:OBJC>,$<COMPILE_LANGUAGE:OBJCXX>>:
            -Wunguarded-availability
            -Wunguarded-availability-new>)
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    target_compile_options(juce_recommended_warning_flags INTERFACE
            -Wall
            -Wextra
            -Wpedantic
            -Wstrict-aliasing
            -Wuninitialized
            -Wunused-parameter
            -Wsign-compare
            -Wsign-conversion
            -Wunreachable-code
            -Wcast-align
            -Wno-implicit-fallthrough
            -Wno-maybe-uninitialized
            -Wno-ignored-qualifiers
            -Wswitch-enum
            -Wredundant-decls
            -Wno-strict-overflow
            -Wshadow
            -Wfloat-equal
            -Wmissing-field-initializers
            $<$<COMPILE_LANGUAGE:CXX>:
            -Woverloaded-virtual
            -Wreorder
            -Wzero-as-null-pointer-constant>)
endif()