.class public Lnluparser/scheme/SettingExtIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# instance fields
.field musicInfo:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "musicInfo"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "musicInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation
.end field

.field operations:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "operations"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/SettingIntent;",
            ">;"
        }
    .end annotation
.end field

.field voiceTip:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "voiceTip"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voiceTip"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnluparser/scheme/SettingExtIntent;->operations:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnluparser/scheme/SettingExtIntent;->musicInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMusicInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/SettingExtIntent;->musicInfo:Ljava/util/List;

    return-object v0
.end method

.method public getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/SettingIntent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/SettingExtIntent;->operations:Ljava/util/List;

    return-object v0
.end method

.method public getVoiceTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/SettingExtIntent;->voiceTip:Ljava/lang/String;

    return-object v0
.end method

.method public setMusicInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "musicInfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    iput-object p1, p0, Lnluparser/scheme/SettingExtIntent;->musicInfo:Ljava/util/List;

    return-void
.end method

.method public setOperations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/SettingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    iput-object p1, p0, Lnluparser/scheme/SettingExtIntent;->operations:Ljava/util/List;

    return-void
.end method

.method public setVoiceTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceTip"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/SettingExtIntent;->voiceTip:Ljava/lang/String;

    return-void
.end method
