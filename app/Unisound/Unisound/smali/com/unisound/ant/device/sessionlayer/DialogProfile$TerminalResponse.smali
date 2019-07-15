.class public Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;
.super Ljava/lang/Object;
.source "DialogProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/sessionlayer/DialogProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TerminalResponse"
.end annotation


# instance fields
.field private actionDstServiceId:Ljava/lang/String;

.field private actionResponseId:Ljava/lang/String;

.field private actionTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionResponseId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->actionResponseId:Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->actionTimestamp:J

    .line 69
    return-void
.end method


# virtual methods
.method public getActionDstServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->actionDstServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionResponseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->actionResponseId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionTimestamp()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->actionTimestamp:J

    return-wide v0
.end method

.method public setActionDstServiceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionDstServiceId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->actionDstServiceId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setActionResponseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionResponseId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->actionResponseId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setActionTimestamp(J)V
    .locals 1
    .param p1, "actionTimestamp"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->actionTimestamp:J

    .line 85
    return-void
.end method
