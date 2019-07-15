.class public Lcom/unisound/lib/setting/SettingFileInfo;
.super Ljava/lang/Object;
.source "SettingFileInfo.java"


# instance fields
.field private alarmFile:Ljava/lang/String;

.field private isLighting:Ljava/lang/String;

.field private ttsPlayer:Ljava/lang/String;

.field private wakeUpWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmFile()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/unisound/lib/setting/SettingFileInfo;->alarmFile:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLighting()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/unisound/lib/setting/SettingFileInfo;->isLighting:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsPlayer()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/unisound/lib/setting/SettingFileInfo;->ttsPlayer:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeUpWord()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/unisound/lib/setting/SettingFileInfo;->wakeUpWord:Ljava/lang/String;

    return-object v0
.end method

.method public setAlarmFile(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/unisound/lib/setting/SettingFileInfo;->alarmFile:Ljava/lang/String;

    return-void
.end method

.method public setIsLighting(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/unisound/lib/setting/SettingFileInfo;->isLighting:Ljava/lang/String;

    return-void
.end method

.method public setTtsPlayer(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/unisound/lib/setting/SettingFileInfo;->ttsPlayer:Ljava/lang/String;

    return-void
.end method

.method public setWakeUpWord(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unisound/lib/setting/SettingFileInfo;->wakeUpWord:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingFileInfo{wakeUpWord=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/setting/SettingFileInfo;->wakeUpWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ttsPlayer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/setting/SettingFileInfo;->ttsPlayer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isLighting=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/setting/SettingFileInfo;->isLighting:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", alarmFile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/setting/SettingFileInfo;->alarmFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
