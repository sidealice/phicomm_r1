.class public Lnluparser/scheme/SceneModeIntent;
.super Ljava/lang/Object;
.source "SceneModeIntent.java"

# interfaces
.implements Lnluparser/scheme/Intent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/SceneModeIntent$SmartAppliancesControl;,
        Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;,
        Lnluparser/scheme/SceneModeIntent$LightControl;
    }
.end annotation


# instance fields
.field isOpen:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isOpen"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isOpen"
    .end annotation
.end field

.field lightParam:Lnluparser/scheme/SceneModeIntent$LightControl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lightParam"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lightParam"
    .end annotation
.end field

.field modeState:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "modeState"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modeState"
    .end annotation
.end field

.field sceneName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sceneName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sceneName"
    .end annotation
.end field

.field smartAppliancesParam:Lnluparser/scheme/SceneModeIntent$SmartAppliancesControl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "smartAppliancesParam"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "smartAppliancesParam"
    .end annotation
.end field

.field speakerParam:Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "speakerParam"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speakerParam"
    .end annotation
.end field

.field startTime:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "startTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startTime"
    .end annotation
.end field

.field stopTime:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "stopTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stopTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLightParam()Lnluparser/scheme/SceneModeIntent$LightControl;
    .locals 1

    .line 56
    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent;->lightParam:Lnluparser/scheme/SceneModeIntent$LightControl;

    return-object v0
.end method

.method public getModeState()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 114
    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent;->modeState:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent;->sceneName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartAppliancesParam()Lnluparser/scheme/SceneModeIntent$SmartAppliancesControl;
    .locals 1

    .line 72
    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent;->smartAppliancesParam:Lnluparser/scheme/SceneModeIntent$SmartAppliancesControl;

    return-object v0
.end method

.method public getSpeakerParam()Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;
    .locals 1

    .line 64
    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent;->speakerParam:Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStopTime()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent;->stopTime:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lnluparser/scheme/SceneModeIntent;->isOpen:Z

    return v0
.end method

.method public setLightParam(Lnluparser/scheme/SceneModeIntent$LightControl;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent;->lightParam:Lnluparser/scheme/SceneModeIntent$LightControl;

    return-void
.end method

.method public setModeState(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent;->modeState:Ljava/lang/String;

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lnluparser/scheme/SceneModeIntent;->isOpen:Z

    return-void
.end method

.method public setSceneName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent;->sceneName:Ljava/lang/String;

    return-void
.end method

.method public setSmartAppliancesParam(Lnluparser/scheme/SceneModeIntent$SmartAppliancesControl;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent;->smartAppliancesParam:Lnluparser/scheme/SceneModeIntent$SmartAppliancesControl;

    return-void
.end method

.method public setSpeakerParam(Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent;->speakerParam:Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setStopTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent;->stopTime:Ljava/lang/String;

    return-void
.end method
