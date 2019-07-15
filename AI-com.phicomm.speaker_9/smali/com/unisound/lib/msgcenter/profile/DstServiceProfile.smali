.class public Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;
.super Ljava/lang/Object;
.source "DstServiceProfile.java"


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
.field private accelerate:Lcom/unisound/lib/msgcenter/bean/Accelerate;

.field private dstServiceName:Ljava/lang/String;

.field private dstState:Ljava/lang/String;

.field private parameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private uniCommand:Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->accelerate:Lcom/unisound/lib/msgcenter/bean/Accelerate;

    return-object v0
.end method

.method public getDstServiceName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->dstServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDstState()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->dstState:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniCommand()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand<",
            "TT;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->uniCommand:Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    return-object v0
.end method

.method public setAccelerate(Lcom/unisound/lib/msgcenter/bean/Accelerate;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->accelerate:Lcom/unisound/lib/msgcenter/bean/Accelerate;

    return-void
.end method

.method public setDstServiceName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->dstServiceName:Ljava/lang/String;

    return-void
.end method

.method public setDstState(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->dstState:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->parameter:Ljava/lang/Object;

    return-void
.end method

.method public setUniCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->uniCommand:Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    return-void
.end method
