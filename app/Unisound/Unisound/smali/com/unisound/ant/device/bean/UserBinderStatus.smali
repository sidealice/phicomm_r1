.class public Lcom/unisound/ant/device/bean/UserBinderStatus;
.super Lcom/unisound/ant/device/bean/Parameter;
.source "UserBinderStatus.java"


# instance fields
.field owner:Ljava/lang/String;

.field state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/unisound/ant/device/bean/Parameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/unisound/ant/device/bean/UserBinderStatus;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/unisound/ant/device/bean/UserBinderStatus;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UserBinderStatus;->owner:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UserBinderStatus;->state:Ljava/lang/String;

    .line 24
    return-void
.end method
