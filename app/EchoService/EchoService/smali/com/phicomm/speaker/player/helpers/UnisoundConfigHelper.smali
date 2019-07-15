.class public Lcom/phicomm/speaker/player/helpers/UnisoundConfigHelper;
.super Ljava/lang/Object;
.source "UnisoundConfigHelper.java"


# static fields
.field private static final KEY_MUSIC_SERVER_ADDR:Ljava/lang/String; = "music_server_addr"

.field private static final KEY_VERSION_TYPE:Ljava/lang/String; = "version_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMhdMusicAddr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "addrValue":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/util/Utils;->hasSDCardMounted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/unisound/config/config.mg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "unisoundConfigPath":Ljava/lang/String;
    const-string v2, "music_server_addr"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/helpers/PropertiesHelper;->readValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .end local v1    # "unisoundConfigPath":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getMhdMusicNetEnvironment()Z
    .locals 5

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "mhdMusicNetEnvironment":Z
    invoke-static {}, Lcom/phicomm/speaker/player/util/Utils;->hasSDCardMounted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/unisound/config/config.mg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "unisoundConfigPath":Ljava/lang/String;
    const-string v3, "version_type"

    invoke-static {v1, v3}, Lcom/phicomm/speaker/player/helpers/PropertiesHelper;->readValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "versionTypeValue":Ljava/lang/String;
    const-string v3, "develop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 26
    .end local v1    # "unisoundConfigPath":Ljava/lang/String;
    .end local v2    # "versionTypeValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 22
    .restart local v1    # "unisoundConfigPath":Ljava/lang/String;
    .restart local v2    # "versionTypeValue":Ljava/lang/String;
    :cond_1
    const-string v3, "release"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    const/4 v0, 0x0

    goto :goto_0
.end method
