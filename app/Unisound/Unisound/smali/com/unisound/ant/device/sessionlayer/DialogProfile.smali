.class public Lcom/unisound/ant/device/sessionlayer/DialogProfile;
.super Ljava/lang/Object;
.source "DialogProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;
    }
.end annotation


# static fields
.field public static final DIALOG_FINISH:Ljava/lang/String; = "2"

.field public static final DIALOG_IDLE:Ljava/lang/String; = "0"

.field public static final DIALOG_START:Ljava/lang/String; = "1"

.field public static final SCENE_FLAG_END:Ljava/lang/String; = "end"

.field public static final SCENE_FLAG_PROCESSING:Ljava/lang/String; = "processing"

.field public static final SCENE_FLAG_START:Ljava/lang/String; = "start"


# instance fields
.field public dstService:Ljava/lang/String;

.field public dstState:Ljava/lang/String;

.field public sceneFlag:Ljava/lang/String;

.field public sendToCloudResponse:Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

.field public sendToTerminalResponse:Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDstService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->dstService:Ljava/lang/String;

    return-object v0
.end method

.method public getDstState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->dstState:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->sceneFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getSendToCloudResponse()Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->sendToCloudResponse:Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    return-object v0
.end method

.method public getSendToTerminalResponse()Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->sendToTerminalResponse:Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    return-object v0
.end method

.method public setDstService(Ljava/lang/String;)V
    .locals 0
    .param p1, "dstService"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->dstService:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setDstState(Ljava/lang/String;)V
    .locals 0
    .param p1, "dstState"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->dstState:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSceneFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneFlag"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->sceneFlag:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setSendToCloudResponse(Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;)V
    .locals 0
    .param p1, "sendToCloudResponse"    # Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->sendToCloudResponse:Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    .line 49
    return-void
.end method

.method public setSendToTerminalResponse(Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;)V
    .locals 0
    .param p1, "sendToTerminalResponse"    # Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->sendToTerminalResponse:Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    .line 57
    return-void
.end method
