.class public Lcom/unisound/vui/util/AppGlobalConstant;
.super Ljava/lang/Object;


# static fields
.field private static mContext:Landroid/content/Context;

.field private static udid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/unisound/vui/util/AppGlobalConstant;->udid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/AppGlobalConstant;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getUdid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/AppGlobalConstant;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sput-object p0, Lcom/unisound/vui/util/AppGlobalConstant;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setUdid(Ljava/lang/String;)V
    .locals 0
    .param p0, "udid"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/unisound/vui/util/AppGlobalConstant;->udid:Ljava/lang/String;

    return-void
.end method
