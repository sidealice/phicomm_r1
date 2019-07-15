.class public Lcom/unisound/ant/device/bean/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private actionResponse:Lcom/unisound/ant/device/service/ActionResponse;

.field private dialog:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

.field private dstService:Lcom/unisound/ant/device/profile/DstServiceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/ant/device/profile/DstServiceProfile",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/unisound/ant/device/bean/SessionData;, "Lcom/unisound/ant/device/bean/SessionData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionResponse()Lcom/unisound/ant/device/service/ActionResponse;
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/unisound/ant/device/bean/SessionData;, "Lcom/unisound/ant/device/bean/SessionData<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SessionData;->actionResponse:Lcom/unisound/ant/device/service/ActionResponse;

    return-object v0
.end method

.method public getDialog()Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/unisound/ant/device/bean/SessionData;, "Lcom/unisound/ant/device/bean/SessionData<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SessionData;->dialog:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    return-object v0
.end method

.method public getDstService()Lcom/unisound/ant/device/profile/DstServiceProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/unisound/ant/device/profile/DstServiceProfile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/unisound/ant/device/bean/SessionData;, "Lcom/unisound/ant/device/bean/SessionData<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/SessionData;->dstService:Lcom/unisound/ant/device/profile/DstServiceProfile;

    return-object v0
.end method

.method public setActionResponse(Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 0
    .param p1, "actionResponse"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 23
    .local p0, "this":Lcom/unisound/ant/device/bean/SessionData;, "Lcom/unisound/ant/device/bean/SessionData<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SessionData;->actionResponse:Lcom/unisound/ant/device/service/ActionResponse;

    .line 24
    return-void
.end method

.method public setDialog(Lcom/unisound/ant/device/sessionlayer/DialogProfile;)V
    .locals 0
    .param p1, "dialog"    # Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    .prologue
    .line 31
    .local p0, "this":Lcom/unisound/ant/device/bean/SessionData;, "Lcom/unisound/ant/device/bean/SessionData<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SessionData;->dialog:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    .line 32
    return-void
.end method

.method public setDstService(Lcom/unisound/ant/device/profile/DstServiceProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/ant/device/profile/DstServiceProfile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/unisound/ant/device/bean/SessionData;, "Lcom/unisound/ant/device/bean/SessionData<TT;>;"
    .local p1, "dstService":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/SessionData;->dstService:Lcom/unisound/ant/device/profile/DstServiceProfile;

    .line 40
    return-void
.end method
