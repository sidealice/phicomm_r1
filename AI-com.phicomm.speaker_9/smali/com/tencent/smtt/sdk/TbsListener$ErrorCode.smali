.class public interface abstract Lcom/tencent/smtt/sdk/TbsListener$ErrorCode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/TbsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorCode"
.end annotation


# static fields
.field public static final APK_INVALID:I = 0xcc

.field public static final APK_PATH_ERROR:I = 0xca

.field public static final APK_VERSION_ERROR:I = 0xcb

.field public static final COPY_EXCEPTION:I = 0xd7

.field public static final COPY_FAIL:I = 0xd4

.field public static final COPY_INSTALL_SUCCESS:I = 0xdc

.field public static final COPY_SRCDIR_ERROR:I = 0xd5

.field public static final COPY_TMPDIR_ERROR:I = 0xd6

.field public static final CREATE_TEMP_CONF_ERROR:I = 0xe1

.field public static final DEXOAT_EXCEPTION:I = 0xe2

.field public static final DEXOPT_EXCEPTION:I = 0xd1

.field public static final DISK_FULL:I = 0x69

.field public static final DOWNLOAD_FILE_CONTENTLENGTH_NOT_MATCH:I = 0x71

.field public static final DOWNLOAD_HAS_COPY_TBS_ERROR:I = 0x7a

.field public static final DOWNLOAD_HAS_LOCAL_TBS_ERROR:I = 0x78

.field public static final DOWNLOAD_INSTALL_SUCCESS:I = 0xc8

.field public static final DOWNLOAD_OVER_FLOW:I = 0x70

.field public static final DOWNLOAD_REDIRECT_EMPTY:I = 0x7c

.field public static final DOWNLOAD_RETRYTIMES302_EXCEED:I = 0x7b

.field public static final DOWNLOAD_SUCCESS:I = 0x64

.field public static final DOWNLOAD_THROWABLE:I = 0x7d

.field public static final ERROR_CANLOADVIDEO_RETURN_FALSE:I = 0x139

.field public static final ERROR_CANLOADVIDEO_RETURN_NULL:I = 0x13a

.field public static final ERROR_CANLOADX5_RETURN_FALSE:I = 0x133

.field public static final ERROR_CANLOADX5_RETURN_NULL:I = 0x134

.field public static final ERROR_CODE_DOWNLOAD_BASE:I = 0x64

.field public static final ERROR_CODE_INSTALL_BASE:I = 0xc8

.field public static final ERROR_CODE_LOAD_BASE:I = 0x12c

.field public static final ERROR_GETSTRINGARRAY_JARFILE:I = 0x149

.field public static final ERROR_HOST_UNAVAILABLE:I = 0x130

.field public static final ERROR_QBSDK_INIT_CANLOADX5:I = 0x13f

.field public static final ERROR_QBSDK_INIT_ERROR_EMPTY_BUNDLE:I = 0x14b

.field public static final ERROR_QBSDK_INIT_ERROR_RET_TYPE_NOT_BUNDLE:I = 0x14a

.field public static final ERROR_QBSDK_INIT_ISSUPPORT:I = 0x13e

.field public static final ERROR_TBSCORE_SHARE_DIR:I = 0x138

.field public static final ERROR_UNMATCH_TBSCORE_VER:I = 0x12f

.field public static final ERROR_UNMATCH_TBSCORE_VER_THIRDPARTY:I = 0x12e

.field public static final EXCEED_COPY_RETRY_NUM:I = 0xd3

.field public static final EXCEED_DEXOPT_RETRY_NUM:I = 0xd0

.field public static final EXCEED_INCR_UPDATE:I = 0xe0

.field public static final EXCEED_LZMA_RETRY_NUM:I = 0xdf

.field public static final EXCEED_UNZIP_RETRY_NUM:I = 0xc9

.field public static final FILE_DELETED:I = 0x6a

.field public static final FILE_RENAME_ERROR:I = 0x6d

.field public static final HOST_CONTEXT_IS_NULL:I = 0xe3

.field public static final INCRUPDATE_INSTALL_SUCCESS:I = 0xdd

.field public static final INCR_UPDATE_ERROR:I = 0xd8

.field public static final INCR_UPDATE_EXCEPTION:I = 0xda

.field public static final INCR_UPDATE_FAIL:I = 0xd9

.field public static final INFO_CAN_NOT_DISABLED_BY_CRASH:I = 0x198

.field public static final INFO_CAN_NOT_LOAD_TBS:I = 0x195

.field public static final INFO_CAN_NOT_LOAD_X5:I = 0x197

.field public static final INFO_CAN_NOT_USE_X5_FINAL_REASON:I = 0x19b

.field public static final INFO_CAN_NOT_USE_X5_TBS_AVAILABLE:I = 0x199

.field public static final INFO_CAN_NOT_USE_X5_TBS_NOTAVAILABLE:I = 0x19a

.field public static final INFO_CODE_BASE:I = 0x190

.field public static final INFO_CODE_FILEREADER_OPENFILEREADER_APKFILE:I = 0x1fa

.field public static final INFO_CODE_FILEREADER_OPENFILEREADER_COUNTS:I = 0x1f9

.field public static final INFO_CODE_FILEREADER_OPENFILEREADER_FILEPATHISNULL:I = 0x1fd

.field public static final INFO_CODE_FILEREADER_OPENFILEREADER_MINIQBFAILED:I = 0x1ff

.field public static final INFO_CODE_FILEREADER_OPENFILEREADER_MINIQBSUCCESS:I = 0x1fe

.field public static final INFO_CODE_FILEREADER_OPENFILEREADER_NOTSUPPORT:I = 0x1fb

.field public static final INFO_CODE_FILEREADER_OPENFILEREADER_OPENINQB:I = 0x1fc

.field public static final INFO_CODE_MINIQB:I = 0x1f4

.field public static final INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_COUNTS:I = 0x1f5

.field public static final INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_FAILED:I = 0x1f8

.field public static final INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_ISNOTX5CORE:I = 0x1f6

.field public static final INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_SUCCESS:I = 0x1f7

.field public static final INFO_CORE_EXIST_NOT_LOAD:I = 0x1a2

.field public static final INFO_DISABLE_X5:I = 0x194

.field public static final INFO_FORCE_SYSTEM_WEBVIEW_INNER:I = 0x191

.field public static final INFO_FORCE_SYSTEM_WEBVIEW_OUTER:I = 0x192

.field public static final INFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITHOUT_CORE:I = 0x101a

.field public static final INFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITH_CORE:I = 0x1019

.field public static final INFO_INITX5_FALSE_DEFAULT:I = 0x19f

.field public static final INFO_MISS_SDKEXTENSION_JAR:I = 0x193

.field public static final INFO_MISS_SDKEXTENSION_JAR_OLD:I = 0x196

.field public static final INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX:I = 0x19c

.field public static final INFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX:I = 0x19d

.field public static final INFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITHOUT_CORE:I = 0x1024

.field public static final INFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITH_CORE:I = 0x1023

.field public static final INFO_SDKINIT_IS_SYS_FORCED:I = 0x19e

.field public static final INFO_TEMP_CORE_EXIST_CONF_ERROR:I = 0x1a1

.field public static final INFO_USE_BACKUP_FILE_INSTALL_BY_SERVER:I = 0x1a0

.field public static final NETWORK_NOT_WIFI_ERROR:I = 0x6f

.field public static final NETWORK_UNAVAILABLE:I = 0x65

.field public static final NONEEDTODOWN_ERROR:I = 0x6e

.field public static final READ_RESPONSE_ERROR:I = 0x67

.field public static final RENAME_EXCEPTION:I = 0xdb

.field public static final ROM_NOT_ENOUGH:I = 0xd2

.field public static final SERVER_ERROR:I = 0x66

.field public static final TEST_THROWABLE_ISNOT_NULL:I = 0x147

.field public static final TEST_THROWABLE_IS_NULL:I = 0x146

.field public static final THREAD_INIT_ERROR:I = 0x79

.field public static final THROWABLE_INITTESRUNTIMEENVIRONMENT:I = 0x148

.field public static final THROWABLE_INITX5CORE:I = 0x145

.field public static final THROWABLE_QBSDK_INIT:I = 0x132

.field public static final UNKNOWN_ERROR:I = 0x6b

.field public static final UNLZMA_FAIURE:I = 0xde

.field public static final UNZIP_DIR_ERROR:I = 0xcd

.field public static final UNZIP_IO_ERROR:I = 0xce

.field public static final UNZIP_OTHER_ERROR:I = 0xcf

.field public static final VERIFY_ERROR:I = 0x6c

.field public static final WRITE_DISK_ERROR:I = 0x68
