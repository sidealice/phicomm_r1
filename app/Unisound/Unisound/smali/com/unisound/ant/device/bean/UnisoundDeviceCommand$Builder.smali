.class public Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;
.super Ljava/lang/Object;
.source "UnisoundDeviceCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private capability:Ljava/lang/String;

.field private operation:Ljava/lang/String;

.field private parameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    .locals 5

    .prologue
    .line 87
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder<TT;>;"
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->check()V

    .line 88
    new-instance v0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    iget-object v1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->capability:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->operation:Ljava/lang/String;

    iget-object v4, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->parameter:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method check()V
    .locals 2

    .prologue
    .line 78
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->capability:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capability may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->operation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "operation may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    return-void
.end method

.method public setCapability(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;
    .locals 0
    .param p1, "capability"    # Ljava/lang/String;

    .prologue
    .line 58
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->capability:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public setOperation(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 63
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->operation:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public setParameter(Ljava/lang/Object;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder<TT;>;"
    .local p1, "parameter":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->parameter:Ljava/lang/Object;

    .line 74
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 68
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->version:Ljava/lang/String;

    .line 69
    return-object p0
.end method
