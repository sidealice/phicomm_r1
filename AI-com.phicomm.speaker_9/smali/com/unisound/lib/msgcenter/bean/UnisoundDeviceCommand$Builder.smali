.class public Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;
.super Ljava/lang/Object;
.source "UnisoundDeviceCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;
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

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->check()V

    .line 170
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->capability:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->operation:Ljava/lang/String;

    iget-object v4, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->parameter:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method check()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->capability:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capability may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->operation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "operation may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setCapability(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->capability:Ljava/lang/String;

    return-object p0
.end method

.method public setOperation(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->operation:Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->parameter:Ljava/lang/Object;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
