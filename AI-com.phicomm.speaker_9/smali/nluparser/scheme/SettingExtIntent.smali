.class public Lnluparser/scheme/SettingExtIntent;
.super Ljava/lang/Object;
.source "SettingExtIntent.java"

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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnluparser/scheme/SettingExtIntent;->operations:Ljava/util/List;

    .line 18
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
            "Ljava/util/List<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lnluparser/scheme/SettingExtIntent;->musicInfo:Ljava/util/List;

    return-object v0
.end method

.method public getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnluparser/scheme/SettingIntent;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lnluparser/scheme/SettingExtIntent;->operations:Ljava/util/List;

    return-object v0
.end method

.method public getVoiceTip()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lnluparser/scheme/SettingExtIntent;->voiceTip:Ljava/lang/String;

    return-object v0
.end method

.method public setMusicInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lnluparser/scheme/SettingExtIntent;->musicInfo:Ljava/util/List;

    return-void
.end method

.method public setOperations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnluparser/scheme/SettingIntent;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lnluparser/scheme/SettingExtIntent;->operations:Ljava/util/List;

    return-void
.end method

.method public setVoiceTip(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lnluparser/scheme/SettingExtIntent;->voiceTip:Ljava/lang/String;

    return-void
.end method
