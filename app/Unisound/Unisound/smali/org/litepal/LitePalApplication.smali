.class public Lorg/litepal/LitePalApplication;
.super Landroid/app/Application;
.source "LitePalApplication.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 53
    sput-object p0, Lorg/litepal/LitePalApplication;->sContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lorg/litepal/LitePalApplication;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/litepal/exceptions/GlobalException;

    const-string v1, "Application context is null. Maybe you haven\'t configured your application name with \"org.litepal.LitePalApplication\" in your AndroidManifest.xml. Or you can call LitePalApplication.initialize(Context) method instead."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/GlobalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lorg/litepal/LitePalApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sput-object p0, Lorg/litepal/LitePalApplication;->sContext:Landroid/content/Context;

    .line 66
    return-void
.end method
