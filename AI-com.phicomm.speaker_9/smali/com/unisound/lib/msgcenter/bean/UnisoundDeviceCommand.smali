.class public Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;
.super Ljava/lang/Object;
.source "UnisoundDeviceCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->version:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->capability:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->operation:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->parameter:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCapability()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->capability:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCapability(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->capability:Ljava/lang/String;

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->operation:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->version:Ljava/lang/String;

    return-void
.end method
