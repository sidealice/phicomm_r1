.class public Lcom/unisound/lib/msgcenter/bean/SessionData;
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
.field private actionResponse:Lcom/unisound/lib/msgcenter/service/ActionResponse;

.field private dialog:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

.field private dstService:Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/lib/msgcenter/profile/DstServiceProfile<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionResponse()Lcom/unisound/lib/msgcenter/service/ActionResponse;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/SessionData;->actionResponse:Lcom/unisound/lib/msgcenter/service/ActionResponse;

    return-object v0
.end method

.method public getDialog()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/SessionData;->dialog:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    return-object v0
.end method

.method public getDstService()Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/unisound/lib/msgcenter/profile/DstServiceProfile<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/SessionData;->dstService:Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    return-object v0
.end method

.method public setActionResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/SessionData;->actionResponse:Lcom/unisound/lib/msgcenter/service/ActionResponse;

    return-void
.end method

.method public setDialog(Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/SessionData;->dialog:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    return-void
.end method

.method public setDstService(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/msgcenter/profile/DstServiceProfile<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/SessionData;->dstService:Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    return-void
.end method
