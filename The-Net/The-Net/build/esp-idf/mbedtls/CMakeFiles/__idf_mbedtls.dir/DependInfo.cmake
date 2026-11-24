
# Consider dependencies only in project.
set(CMAKE_DEPENDS_IN_PROJECT_ONLY OFF)

# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_ASM
  "/home/charkbyte/Embedded-Projects/The-Net/The-Net/build/x509_crt_bundle.S" "/home/charkbyte/Embedded-Projects/The-Net/The-Net/build/esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/__/__/x509_crt_bundle.S.obj"
  )
set(CMAKE_ASM_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_ASM
  "ESP_PLATFORM"
  "ESP_PSA_ITS_AVAILABLE"
  "IDF_VER=\"v6.1-dev-9359-g4109c8923a5\""
  "MBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\""
  "MBEDTLS_MAJOR_VERSION=4"
  "SOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE"
  "SOC_XTAL_FREQ_MHZ=CONFIG_XTAL_FREQ"
  "TF_PSA_CRYPTO_USER_CONFIG_FILE=\"mbedtls/esp_config.h\""
  "_GLIBCXX_HAVE_POSIX_SEMAPHORE"
  "_GLIBCXX_USE_POSIX_SEMAPHORE"
  "_GNU_SOURCE"
  "_POSIX_READER_WRITER_LOCKS"
  "__STDC_WANT_LIB_EXT1__=0"
  )

# The include file search paths:
set(CMAKE_ASM_TARGET_INCLUDE_PATH
  "config"
  "/home/charkbyte/esp-idf/components/mbedtls/port/include"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/include"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/library"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/core"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/builtin/src"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/extras"
  "/home/charkbyte/esp-idf/components/mbedtls/esp_crt_bundle/include"
  "/home/charkbyte/esp-idf/components/mbedtls/port/psa_driver/include"
  "/home/charkbyte/esp-idf/components/mbedtls/port/psa_crypto_storage/include"
  "/home/charkbyte/esp-idf/components/esp_libc/platform_include"
  "/home/charkbyte/esp-idf/components/freertos/config/include"
  "/home/charkbyte/esp-idf/components/freertos/config/include/freertos"
  "/home/charkbyte/esp-idf/components/freertos/config/xtensa/include"
  "/home/charkbyte/esp-idf/components/freertos/FreeRTOS-Kernel/include"
  "/home/charkbyte/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include"
  "/home/charkbyte/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos"
  "/home/charkbyte/esp-idf/components/freertos/esp_additions/include"
  "/home/charkbyte/esp-idf/components/esp_hw_support/include"
  "/home/charkbyte/esp-idf/components/esp_hw_support/include/soc"
  "/home/charkbyte/esp-idf/components/esp_hw_support/ldo/include"
  "/home/charkbyte/esp-idf/components/esp_hw_support/debug_probe/include"
  "/home/charkbyte/esp-idf/components/esp_hw_support/etm/include"
  "/home/charkbyte/esp-idf/components/esp_hw_support/power_supply/include"
  "/home/charkbyte/esp-idf/components/esp_hw_support/modem/include"
  "/home/charkbyte/esp-idf/components/esp_hw_support/include/soc/esp32s3"
  "/home/charkbyte/esp-idf/components/esp_hw_support/port/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hw_support/port/esp32s3/."
  "/home/charkbyte/esp-idf/components/heap/include"
  "/home/charkbyte/esp-idf/components/heap/tlsf"
  "/home/charkbyte/esp-idf/components/log/include"
  "/home/charkbyte/esp-idf/components/soc/include"
  "/home/charkbyte/esp-idf/components/soc/esp32s3"
  "/home/charkbyte/esp-idf/components/soc/esp32s3/include"
  "/home/charkbyte/esp-idf/components/soc/esp32s3/register"
  "/home/charkbyte/esp-idf/components/hal/platform_port/include"
  "/home/charkbyte/esp-idf/components/hal/esp32s3/include"
  "/home/charkbyte/esp-idf/components/hal/include"
  "/home/charkbyte/esp-idf/components/esp_rom/include"
  "/home/charkbyte/esp-idf/components/esp_rom/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_rom/esp32s3/include/esp32s3"
  "/home/charkbyte/esp-idf/components/esp_rom/esp32s3"
  "/home/charkbyte/esp-idf/components/esp_common/include"
  "/home/charkbyte/esp-idf/components/esp_system/include"
  "/home/charkbyte/esp-idf/components/esp_system/port/soc"
  "/home/charkbyte/esp-idf/components/esp_system/port/include/private"
  "/home/charkbyte/esp-idf/components/esp_stdio/include"
  "/home/charkbyte/esp-idf/components/xtensa/esp32s3/include"
  "/home/charkbyte/esp-idf/components/xtensa/include"
  "/home/charkbyte/esp-idf/components/xtensa/deprecated_include"
  "/home/charkbyte/esp-idf/components/vfs/include"
  "/home/charkbyte/esp-idf/components/esp_sleep/include"
  "/home/charkbyte/esp-idf/components/esp_hal_gpio/include"
  "/home/charkbyte/esp-idf/components/esp_hal_gpio/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_usb/include"
  "/home/charkbyte/esp-idf/components/esp_hal_usb/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_pmu/include"
  "/home/charkbyte/esp-idf/components/esp_hal_pmu/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_regi2c/include"
  "/home/charkbyte/esp-idf/components/esp_hal_regi2c/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_uart/include"
  "/home/charkbyte/esp-idf/components/esp_hal_uart/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_debug_assist/include"
  "/home/charkbyte/esp-idf/components/esp_hal_debug_assist/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_cache/include"
  "/home/charkbyte/esp-idf/components/esp_hal_cache/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_ana_conv/include"
  "/home/charkbyte/esp-idf/components/esp_hal_ana_conv/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_dma/include"
  "/home/charkbyte/esp-idf/components/esp_hal_dma/esp32s3/include"
  "/home/charkbyte/esp-idf/components/lwip/include"
  "/home/charkbyte/esp-idf/components/lwip/include/apps"
  "/home/charkbyte/esp-idf/components/lwip/lwip/src/include"
  "/home/charkbyte/esp-idf/components/lwip/port/include"
  "/home/charkbyte/esp-idf/components/lwip/port/freertos/include"
  "/home/charkbyte/esp-idf/components/lwip/port/esp32xx/include"
  "/home/charkbyte/esp-idf/components/lwip/port/esp32xx/include/arch"
  "/home/charkbyte/esp-idf/components/lwip/port/esp32xx/include/sys"
  "/home/charkbyte/esp-idf/components/esp_security/include"
  "/home/charkbyte/esp-idf/components/esp_hal_security/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_security/include"
  "/home/charkbyte/esp-idf/components/esp_driver_dma/include"
  "/home/charkbyte/esp-idf/components/esp_mspi/include"
  "/home/charkbyte/esp-idf/components/esp_mspi/mspi_timing_tuning/include"
  "/home/charkbyte/esp-idf/components/esp_mspi/mspi_timing_tuning/tuning_scheme_impl/include"
  "/home/charkbyte/esp-idf/components/esp_mspi/mspi_intr/include"
  "/home/charkbyte/esp-idf/components/esp_mspi/esp_mspi_align/include"
  "/home/charkbyte/esp-idf/components/esp_mspi/mspi_mem_barrier/include"
  "/home/charkbyte/esp-idf/components/esp_mspi/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_mspi/mspi_timing_tuning/port/esp32s3/."
  "/home/charkbyte/esp-idf/components/esp_mspi/mspi_timing_tuning/port/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_mspi/include"
  "/home/charkbyte/esp-idf/components/esp_hal_mspi/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_gpspi/include"
  "/home/charkbyte/esp-idf/components/esp_hal_gpspi/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_hal_clock/include"
  "/home/charkbyte/esp-idf/components/esp_hal_clock/esp32s3/include"
  "/home/charkbyte/esp-idf/components/esp_pm/include"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/include"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/builtin/include"
  "esp-idf/mbedtls/mbedtls/tf-psa-crypto/include"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/everest/include"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/p256-m/p256-m"
  "/home/charkbyte/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/pqcp/include"
  )

# The set of dependency files which are needed:
set(CMAKE_DEPENDS_DEPENDENCY_FILES
  "/home/charkbyte/esp-idf/components/mbedtls/esp_crt_bundle/esp_crt_bundle.c" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj" "gcc" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj.d"
  "/home/charkbyte/esp-idf/components/mbedtls/port/esp_mem.c" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/port/esp_mem.c.obj" "gcc" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/port/esp_mem.c.obj.d"
  "/home/charkbyte/esp-idf/components/mbedtls/port/psa_crypto_storage/esp_psa_key_file.c" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/port/psa_crypto_storage/esp_psa_key_file.c.obj" "gcc" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/port/psa_crypto_storage/esp_psa_key_file.c.obj.d"
  )

# Targets to which this target links which contain Fortran sources.
set(CMAKE_Fortran_TARGET_LINKED_INFO_FILES
  )

# Targets to which this target links which contain Fortran sources.
set(CMAKE_Fortran_TARGET_FORWARD_LINKED_INFO_FILES
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")
