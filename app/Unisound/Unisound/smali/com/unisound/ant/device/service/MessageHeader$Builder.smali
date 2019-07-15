.class public Lcom/unisound/ant/device/service/MessageHeader$Builder;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/service/MessageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private messageType:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unisound/ant/device/service/MessageHeader;
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/unisound/ant/device/service/MessageHeader$Builder;->check()V

    .line 60
    new-instance v0, Lcom/unisound/ant/device/service/MessageHeader;

    iget-object v1, p0, Lcom/unisound/ant/device/service/MessageHeader$Builder;->messageType:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/ant/device/service/MessageHeader$Builder;->version:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/unisound/ant/device/service/MessageHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method check()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/unisound/ant/device/service/MessageHeader$Builder;->messageType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageType may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/unisound/ant/device/service/MessageHeader$Builder;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)Lcom/unisound/ant/device/service/MessageHeader$Builder;
    .locals 0
    .param p1, "messageType"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/unisound/ant/device/service/MessageHeader$Builder;->messageType:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/unisound/ant/device/service/MessageHeader$Builder;
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/unisound/ant/device/service/MessageHeader$Builder;->version:Ljava/lang/String;

    .line 46
    return-object p0
.end method
