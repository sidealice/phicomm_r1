.class public Lcom/unisound/ant/device/bean/SceneModeInfo;
.super Ljava/lang/Object;
.source "SceneModeInfo.java"


# instance fields
.field private isOpen:Z

.field private modeState:Ljava/lang/String;

.field private modeTip:Ljava/lang/String;

.field private modeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeState:Ljava/lang/String;

    return-object v0
.end method

.method public getModeTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeTip:Ljava/lang/String;

    return-object v0
.end method

.method public getModeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeType:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->isOpen:Z

    return v0
.end method

.method public setModeState(Ljava/lang/String;)V
    .locals 0
    .param p1, "modeState"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeState:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setModeTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "modeTip"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeTip:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setModeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "modeType"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeType:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->isOpen:Z

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneModeInfo{modeType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->isOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modeState=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modeTip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/bean/SceneModeInfo;->modeTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
