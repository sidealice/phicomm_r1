.class public Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;
.super Ljava/lang/Object;
.source "DialogProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;
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

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->actionResponseId:Ljava/lang/String;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->actionTimestamp:J

    return-void
.end method


# virtual methods
.method public getActionDstServiceId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->actionDstServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionResponseId()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->actionResponseId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionTimestamp()J
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->actionTimestamp:J

    return-wide v0
.end method

.method public setActionDstServiceId(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->actionDstServiceId:Ljava/lang/String;

    return-void
.end method

.method public setActionResponseId(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->actionResponseId:Ljava/lang/String;

    return-void
.end method

.method public setActionTimestamp(J)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->actionTimestamp:J

    return-void
.end method
