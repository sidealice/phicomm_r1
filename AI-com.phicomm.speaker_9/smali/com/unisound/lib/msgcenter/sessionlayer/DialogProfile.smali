.class public Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;
.super Ljava/lang/Object;
.source "DialogProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;
    }
.end annotation


# static fields
.field public static final DIALOG_FINISH:Ljava/lang/String; = "2"

.field public static final DIALOG_IDLE:Ljava/lang/String; = "0"

.field public static final DIALOG_START:Ljava/lang/String; = "1"


# instance fields
.field public dstService:Ljava/lang/String;

.field public dstState:Ljava/lang/String;

.field public sendToCloudResponse:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

.field public sendToTerminalResponse:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDstService()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->dstService:Ljava/lang/String;

    return-object v0
.end method

.method public getDstState()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->dstState:Ljava/lang/String;

    return-object v0
.end method

.method public getSendToCloudResponse()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->sendToCloudResponse:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

    return-object v0
.end method

.method public getSendToTerminalResponse()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->sendToTerminalResponse:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

    return-object v0
.end method

.method public setDstService(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->dstService:Ljava/lang/String;

    return-void
.end method

.method public setDstState(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->dstState:Ljava/lang/String;

    return-void
.end method

.method public setSendToCloudResponse(Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->sendToCloudResponse:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

    return-void
.end method

.method public setSendToTerminalResponse(Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->sendToTerminalResponse:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

    return-void
.end method
