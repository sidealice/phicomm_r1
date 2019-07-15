.class public Lcom/unisound/lib/msgcenter/AppGlobalConstant;
.super Ljava/lang/Object;
.source "AppGlobalConstant.java"


# static fields
.field public static APP_KEY:Ljava/lang/String; = "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

.field public static APP_SECRET:Ljava/lang/String; = "99900e2146fca6dff6d61d7a6c4664a3"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 41
    sget-object v0, Lcom/unisound/lib/msgcenter/AppGlobalConstant;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getUDID()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getDeviceUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 50
    sput-object p0, Lcom/unisound/lib/msgcenter/AppGlobalConstant;->mContext:Landroid/content/Context;

    return-void
.end method
