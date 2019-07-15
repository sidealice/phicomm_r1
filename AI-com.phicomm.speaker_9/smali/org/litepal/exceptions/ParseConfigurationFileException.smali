.class public Lorg/litepal/exceptions/ParseConfigurationFileException;
.super Ljava/lang/RuntimeException;
.source "ParseConfigurationFileException.java"


# static fields
.field public static final CAN_NOT_FIND_LITEPAL_FILE:Ljava/lang/String; = "litepal.xml file is missing. Please ensure it under assets folder."

.field public static final FILE_FORMAT_IS_NOT_CORRECT:Ljava/lang/String; = "can not parse the litepal.xml, check if it\'s in correct format"

.field public static final IO_EXCEPTION:Ljava/lang/String; = "IO exception happened"

.field public static final PARSE_CONFIG_FAILED:Ljava/lang/String; = "parse configuration is failed"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
