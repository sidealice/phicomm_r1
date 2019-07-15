.class public Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;
.super Ljava/lang/Object;
.source "PhicommPerferenceUtil.java"


# static fields
.field private static final DEVICE_AMBIENT_LIGHT_STATE:Ljava/lang/String; = "ambientLightStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmbientLightState(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const-string v1, "unicar_user_settings"

    .line 12
    invoke-static {p0, v1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    .line 13
    .local v0, "sharedPreferencesHelper":Lcom/unisound/vui/util/SharedPreferencesHelper;
    const-string v1, "ambientLightStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setAmbientLightState(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isAmbientLightOn"    # Z

    .prologue
    .line 23
    const-string v1, "unicar_user_settings"

    .line 24
    invoke-static {p0, v1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    .line 25
    .local v0, "sharedPreferencesHelper":Lcom/unisound/vui/util/SharedPreferencesHelper;
    const-string v1, "ambientLightStatus"

    invoke-virtual {v0, v1, p1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveBooleanValue(Ljava/lang/String;Z)V

    .line 26
    return-void
.end method
