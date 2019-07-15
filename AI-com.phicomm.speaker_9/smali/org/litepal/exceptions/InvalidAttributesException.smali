.class public Lorg/litepal/exceptions/InvalidAttributesException;
.super Ljava/lang/RuntimeException;
.source "InvalidAttributesException.java"


# static fields
.field public static final CASES_VALUE_IS_INVALID:Ljava/lang/String; = " is an invalid value for <cases></cases>"

.field public static final DBNAME_IS_EMPTY_OR_NOT_DEFINED:Ljava/lang/String; = "dbname is empty or not defined in litepal.xml file, or your litepal.xml file is missing."

.field public static final VERSION_IS_EARLIER_THAN_CURRENT:Ljava/lang/String; = "the version in litepal.xml is earlier than the current version"

.field public static final VERSION_OF_DATABASE_LESS_THAN_ONE:Ljava/lang/String; = "the version of database can not be less than 1"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
