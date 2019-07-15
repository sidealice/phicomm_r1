.class public final Lcom/unisound/lib/push/mqtt/ParamConfig;
.super Ljava/lang/Object;


# static fields
.field public static final VERSION_INNER:Ljava/lang/String; = "inner"

.field public static final VERSION_OUTER:Ljava/lang/String; = "outer"

.field public static final VERSION_PRE_RELEASE:Ljava/lang/String; = "preRelease"

.field private static versionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/lib/push/mqtt/ParamConfig;->versionType:Ljava/lang/String;

    return-object v0
.end method

.method public static setVersionType(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unisound/lib/push/mqtt/ParamConfig;->versionType:Ljava/lang/String;

    return-void
.end method
