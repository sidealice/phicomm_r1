.class public Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;
.super Ljava/lang/Object;
.source "LocalConfigSharePreference.java"


# static fields
.field private static final NetworkMac:Ljava/lang/String;

.field public static final dev_name:Ljava/lang/String; = "dev_name"

.field private static hostname:Ljava/lang/String; = null

.field public static final preference_name:Ljava/lang/String; = "LocalConfigSharePreference"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->getHardwareAddressString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;->NetworkMac:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phicomm_R1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;->NetworkMac:Ljava/lang/String;

    sget-object v2, Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;->NetworkMac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    sget-object v3, Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;->NetworkMac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;->hostname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commintDevName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v2, "LocalConfigSharePreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 20
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 21
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dev_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    const/4 v2, 0x1

    return v2
.end method

.method public static getDevName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v2, "LocalConfigSharePreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "dev_name"

    sget-object v3, Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;->hostname:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method
