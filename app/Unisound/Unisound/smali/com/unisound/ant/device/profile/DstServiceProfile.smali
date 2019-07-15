.class public Lcom/unisound/ant/device/profile/DstServiceProfile;
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
.field private accelerate:Lcom/unisound/ant/device/bean/Accelerate;

.field private dstServiceName:Ljava/lang/String;

.field private dstState:Ljava/lang/String;

.field private parameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private uniCommand:Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccelerate()Lcom/unisound/ant/device/bean/Accelerate;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->accelerate:Lcom/unisound/ant/device/bean/Accelerate;

    return-object v0
.end method

.method public getDstServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->dstServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDstState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->dstState:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniCommand()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->uniCommand:Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    return-object v0
.end method

.method public setAccelerate(Lcom/unisound/ant/device/bean/Accelerate;)V
    .locals 0
    .param p1, "accelerate"    # Lcom/unisound/ant/device/bean/Accelerate;

    .prologue
    .line 46
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->accelerate:Lcom/unisound/ant/device/bean/Accelerate;

    .line 47
    return-void
.end method

.method public setDstServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dstServiceName"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->dstServiceName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setDstState(Ljava/lang/String;)V
    .locals 0
    .param p1, "dstState"    # Ljava/lang/String;

    .prologue
    .line 22
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->dstState:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setParameter(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    .local p1, "parameter":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->parameter:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public setUniCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/unisound/ant/device/profile/DstServiceProfile;, "Lcom/unisound/ant/device/profile/DstServiceProfile<TT;>;"
    .local p1, "uniCommand":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/profile/DstServiceProfile;->uniCommand:Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .line 39
    return-void
.end method
