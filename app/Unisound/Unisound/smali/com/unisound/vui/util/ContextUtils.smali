.class public Lcom/unisound/vui/util/ContextUtils;
.super Ljava/lang/Object;


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/ContextUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/ContextUtils;->context:Landroid/content/Context;

    return-void
.end method
