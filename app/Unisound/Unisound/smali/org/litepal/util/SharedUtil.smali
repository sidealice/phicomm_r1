.class public Lorg/litepal/util/SharedUtil;
.super Ljava/lang/Object;
.source "SharedUtil.java"


# static fields
.field private static final LITEPAL_PREPS:Ljava/lang/String; = "litepal_prefs"

.field private static final VERSION:Ljava/lang/String; = "litepal_version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastVersion()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 58
    const-string v3, "litepal_prefs"

    .line 57
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, "sPref":Landroid/content/SharedPreferences;
    const-string v2, "litepal_version"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "version":I
    return v1
.end method

.method public static updateVersion(I)V
    .locals 4
    .param p0, "newVersion"    # I

    .prologue
    .line 45
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    const-string v2, "litepal_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    .local v0, "sEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "litepal_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method
