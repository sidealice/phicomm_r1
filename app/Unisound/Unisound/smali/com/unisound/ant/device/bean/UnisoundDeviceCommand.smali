.class public Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
.super Ljava/lang/Object;
.source "UnisoundDeviceCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;
    }
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    .local p4, "parameter":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->version:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->capability:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->operation:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->parameter:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public getCapability()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->capability:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->operation:Ljava/lang/String;

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
    .line 47
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCapability(Ljava/lang/String;)V
    .locals 0
    .param p1, "capability"    # Ljava/lang/String;

    .prologue
    .line 35
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->capability:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 43
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->operation:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 27
    .local p0, "this":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;, "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->version:Ljava/lang/String;

    .line 28
    return-void
.end method
