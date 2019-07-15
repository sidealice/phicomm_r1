.class public Lcom/unisound/lib/utils/GlobalConstant;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# static fields
.field private static isOuter:Z = true

.field private static mContext:Landroid/content/Context; = null

.field private static udid:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 20
    sget-object v0, Lcom/unisound/lib/utils/GlobalConstant;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isOuter()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/unisound/lib/utils/GlobalConstant;->isOuter:Z

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/unisound/lib/utils/GlobalConstant;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setOuter(Z)V
    .locals 0

    .line 47
    sput-boolean p0, Lcom/unisound/lib/utils/GlobalConstant;->isOuter:Z

    return-void
.end method
